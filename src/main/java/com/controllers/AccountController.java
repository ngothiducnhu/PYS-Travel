package com.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.DAO.AdminDAO;
import com.DAO.CustomerDAO;
import com.DTO.AccountDTO;
import com.entities.Admin;
import com.entities.Customer;
import com.services.Auth;
import com.services.FileService;
import com.services.SessionService;
import com.services.UploadService;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;

@Controller
@RequestMapping("account")
public class AccountController {

	@Autowired
	CustomerDAO cDao;
	@Autowired
	AdminDAO aDao;
	@Autowired
	SessionService session;
	@Autowired
	HttpServletRequest req;
	@Autowired
	UploadService uploadService;

	@GetMapping("sign-up")
	public String Signup() {
		return "/account/signup";
	}

	@PostMapping("sign-up")
	public String doSignup(@Validated @ModelAttribute("cus") Customer cus, BindingResult errors,
			@RequestParam("customerName") String name, @RequestParam("phoneNumber") String phone,
			@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Đăng ký thất bại!");
			return "/account/signup";
		} else {
			if (cDao.findByEmail(email) != null) {
				model.addAttribute("message", "Email đã tồn tại!!");
				return "/account/signup";
			} else {
				Customer ctm = new Customer();
				ctm.setCustomerID(cDao.getMaxID() + 1);
				ctm.setCustomerName(name);
				ctm.setPhoneNumber(phone);
				ctm.setEmail(email);
				ctm.setPassword(password);
				ctm.setAvatar(null);
				ctm.setGender(true);
				cDao.save(ctm);
				model.addAttribute("message", "Đăng ký thành công!");
				return "redirect:/account/sign-in";
			}
		}
	}

	@GetMapping("sign-in")
	public String Signin() {
		return "/account/signin";
	}

	@PostMapping("sign-in")
	public String doSignin(@Validated @ModelAttribute("cus") Customer cus, BindingResult errors,
			@RequestParam("email") String email, @RequestParam("password") String pass, Model model) {

		Customer customer = cDao.findByEmail(email);
		Admin admin = aDao.findByEmail(email);

		if (customer == null && admin == null) {
			model.addAttribute("message", "Email không tồn tại!");
		} else {
			if (customer != null && customer.getPassword().equals(pass)) {
				model.addAttribute("message", "Khách hàng đăng nhập thành công!");
				AccountDTO accountDto = new AccountDTO(customer, null);
				session.setAttribute("user", accountDto);
				return "redirect:/index";
			} else if (admin != null && admin.getPassword().equals(pass)) {
				model.addAttribute("message", "Admin đăng nhập thành công!");
				AccountDTO accountDto = new AccountDTO(null, admin);
				session.setAttribute("user", accountDto);
				return "redirect:/admin/charts";
			} else {
				model.addAttribute("message", "Sai mật khẩu!");
			}

		}

		return "/account/signin";

	}

	@GetMapping("edit-profile")
	public String Edit(Model model) {
		AccountDTO user = session.getAttribute("user");
		model.addAttribute("user", user);
		String avatar;
		if (user == null || user.getAvatar() == null) {
			avatar = "/views/img/no-avatar.jpg";
		} else {
			avatar = "views/static/";
			avatar += (user.isAdmin() ? "admins" : "customers" + "/");
			avatar += (String.valueOf(user.getId()) + "/" + user.getAvatar());
		}
		model.addAttribute("avatar", avatar);
		return "/account/editprofile";
	}

//	public String saveUploadedFile(MultipartFile file) {
//	    // File dir = new File(app.getRealPath(folder));
//	    File dir = new File(req.getServletContext().getRealPath("/images"));
//	    if (!dir.exists()) dir.mkdir();
//	    try {
//	        File saveFile = new File(dir, file.getOriginalFilename());
//	        file.transferTo(saveFile);
//	        return saveFile; // Trả về đường dẫn của file đã lưu trữ
//	    } catch (Exception e) {
//	        throw new RuntimeException(e);
//	    }
//	}

	@PostMapping("edit-profile")
	public String doEdit(@RequestParam("name") String name, @RequestParam("phone") String phone,
			@RequestParam("email") String email, @RequestParam("gender") boolean gender,
			@RequestParam("avatar") MultipartFile file, Model model) {
		AccountDTO user = session.getAttribute("user");
		String folder = "";
		String avatarName = "";
		if (user != null) {
			if (!file.isEmpty()) {
				if (user.isAdmin()) {
					folder = ("/views/static/admins/" + String.valueOf(user.getId()) + "/");
					avatarName = "Adm" + String.valueOf(user.getId());
				} else {
					folder = ("/views/static/customers/" + String.valueOf(user.getId()) + "/");
					avatarName = "Cus" + String.valueOf(user.getId());
				}
				avatarName += file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
				if (!file.isEmpty()) {
					uploadService.uploadFile(file, folder, avatarName);
				}
			}
			if (user.isAdmin()) {
				Admin admin = aDao.findById(user.getId()).get();
				if (!avatarName.equals(""))
					admin.setAvatar(avatarName);
				admin.setAdminName(name);
				admin.setEmail(email);
				admin.setPhoneNumber(phone);
				admin.setGender(gender);
				aDao.save(admin);
				user = new AccountDTO(null, aDao.findById(user.getId()).get());
			} else {
				Customer customer = cDao.findById(user.getId()).get();
				if (!avatarName.equals(""))
					customer.setAvatar(avatarName);
				customer.setCustomerName(name);
				customer.setGender(gender);
				customer.setEmail(email);
				customer.setPhoneNumber(phone);
				cDao.save(customer);
				user = new AccountDTO(cDao.findById(user.getId()).get(), null);
			}

			model.addAttribute("message", "Chỉnh sửa thông tin thành công!");
			session.setAttribute("user", user);
			return "redirect:/account/edit-profile";
		} else {
			return "redirect:/account/sign-in";
		}
	}

	@GetMapping("change-pass")
	public String Changepass() {
		return "/account/changepwd";
	}

	@PostMapping("change-pass")
	public String doChangpass(@RequestParam("pass") String pass, @RequestParam("pass1") String pass1,
			@RequestParam("pass2") String pass2, Model model) {

		if (session.getAttribute("loginUser") != null) {

			model.addAttribute("mail", session.getAttribute(Auth.KH.getEmail()));
			if (!pass.equals(Auth.KH.getPassword())) {
				model.addAttribute("message", "Sai mật khẩu!");
			} else if (!pass1.equals(pass2)) {
				model.addAttribute("message", "Xác nhận mật khẩu không đúng!");
			} else if (pass.equals(pass1)) {
				model.addAttribute("message", "Mật khẩu mới trùng mật khẩu cũ!");
			} else {
				Auth.KH.setPassword(pass1);
				cDao.save(Auth.KH);
				model.addAttribute("message", "Đổi mật khẩu thành công!");
			}

		} else if (Auth.isLoginAD()) {
			model.addAttribute("mail", session.getAttribute(Auth.AD.getEmail()));
			if (!pass.equals(Auth.AD.getPassword())) {
				model.addAttribute("message", "Sai mật khẩu!");
			} else if (!pass1.equals(pass2)) {
				model.addAttribute("message", "Xác nhận mật khẩu không đúng!");
			} else if (pass.equals(pass1)) {
				model.addAttribute("message", "Mật khẩu mới trùng mật khẩu cũ!");
			} else {
				Auth.AD.setPassword(pass1);
				aDao.save(Auth.AD);
				model.addAttribute("message", "Đổi mật khẩu thành công!");
			}
		}

		return "/account/changepwd";
	}

	@GetMapping("log-out")
	public String logOut() {
		session.removeAttribute("user");
		return "redirect:/index";
	}
}
