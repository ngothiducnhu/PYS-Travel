package com.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale.Category;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.DAO.Parent_CategoryDAO;
import com.DAO.TourDAO;
import com.entities.*;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	TourDAO tourDAO;
	@Autowired
	Parent_CategoryDAO parent_CategoryDAO;
	
//	@GetMapping("manage-tour")
//	public String showManageTour(Model model, @RequestParam("categoryChildren") Optional<String> categoryChildren, 
//												@RequestParam("categoryName") Optional<String> categoryName) {
//		List<Parent_Category> parentCategoryList = parent_CategoryDAO.findAll();
//		model.addAttribute("parentCategoryList",parentCategoryList);
//		
//		List<Tour> list = tourDAO.findByCategoryChildrenNameAndCategoryNam(categoryChildren.orElse("%%"), categoryName.orElse("%%"));
//		model.addAttribute("tourList",list);
//		
//		
//		return "admin";
//	}
	
	@GetMapping("manage-tour")
	public String showManageTour(Model model){
		List<Tour> list = tourDAO.findAll();
		model.addAttribute("tourList",list);
		model.addAttribute("page","manage-tour.jsp");
		return "admin";
	}
	
	@PostMapping("/mange-tour/update/{id}")
	public String update(@PathVariable("id") Integer id) {
		Tour tour = tourDAO.findById(id).get();
		tour.setHot(!tour.getHot());
		tourDAO.save(tour);
		return "redirect:/admin/manage-tour";
		
	}
	
	@GetMapping("manage-tour/insert")
	public String showInsertForm(Model model) {
		Tour tour = new Tour();
		model.addAttribute("tour",tour);
		model.addAttribute("page","form-tour.jsp");
		return "admin";
	}
	
	@PostMapping("manage-tour/insert")
	public String doInsertForm(Model model, @RequestParam("tour") Tour tour) {
		tourDAO.save(tour);
		return "redirect:/admin/manage-tour";
	}
	@GetMapping("/manage-tour/edit")
	public String edit(@RequestParam("id") Integer id, Model model) {
		Tour tour = tourDAO.findById(id).get();
		model.addAttribute("tour",tour);
		model.addAttribute("page","form-tour.jsp");
		return "admin";
	}
	
	
	@GetMapping("manage-category")
	public String showManageCategory(Model model) {
		model.addAttribute("page","manage-category.jsp");
		return "admin";
	}
	
	
	@GetMapping("manage-ordered")
	public String showManageBanner(Model model) {
		model.addAttribute("page","manage-ordered.jsp");
		return "admin";
	}
	
	@GetMapping("charts")
	public String showCharts(Model model) {
		model.addAttribute("page","charts.jsp");
		return "admin";
	}
}
