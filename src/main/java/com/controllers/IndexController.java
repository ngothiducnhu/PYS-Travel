package com.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.DAO.RatingDAO;
import com.DAO.TourDAO;
import com.DTO.AccountDTO;
import com.DTO.RateDTO;
import com.entities.Rating;
import com.entities.Tour;
import com.services.SessionService;

import jakarta.servlet.http.HttpSession;

@Controller
public class IndexController {
	@Autowired
	TourDAO tourDAO;
	@Autowired
	RatingDAO ratingDAO;
	@Autowired
	SessionService session;
	

	@RequestMapping("/index")
	public String showIndex(Model model) {
		String kw = session.getAttribute("nameKW");
		Optional<String> nameKW;
		if (kw != null)
			nameKW = Optional.of(kw);
		else 
			nameKW = Optional.of("");
		AccountDTO user =  session.getAttribute("user");
		model.addAttribute("user",user);
		String avatar;
		if (user == null || user.getAvatar() == null) {
			avatar = "/views/img/no-avatar.jpg";
		}else {
			avatar = "views/static/";
			avatar += (user.isAdmin()? "admins" : "customers" + "/");
			avatar += (String.valueOf(user.getId()) + "/" + user.getAvatar());
		}
		model.addAttribute("avatar",avatar);
		model.addAttribute("nameKW",nameKW);
		return "index";
	}

	@ModelAttribute("tourHotTNList")
	public List<Tour> getTourHotTN() {
		return tourDAO.findByCategoryNameAndHot("Tour Trong Nước");
	}
	
	@ModelAttribute("tourHotNNList")
	public List<Tour> getTourHotNN() {
		return tourDAO.findByCategoryNameAndHot("Tour Nước Ngoài");
	}
	@ModelAttribute("fiveStarsRatingList")
	public ArrayList<RateDTO> getRateList(){
		List<Rating> list = ratingDAO.findAllFiveStarsRating();
		ArrayList<RateDTO> rateList = new ArrayList<RateDTO>();
		for (Rating rating : list) {
			rateList.add(new RateDTO(rating));
		}
		return rateList;
	}
}
