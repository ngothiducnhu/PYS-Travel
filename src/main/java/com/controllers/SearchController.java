package com.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.DAO.TourDAO;
import com.entities.Tour;
import com.services.SessionService;


@Controller
public class SearchController {
	@Autowired
	TourDAO tourDAO;
	@Autowired
	SessionService session;
	
	@RequestMapping ("tours/search/")
	public String searchAll(Model model) {
		Optional<String> nameKW;
		String kw = session.getAttribute("nameKW");
		if (kw != null)
			nameKW = Optional.of(kw);
		else
			nameKW = Optional.of("");
		
		Optional<Integer> p;
		Integer p1 = session.getAttribute("p");
		if(p1 != null)
			p = Optional.of(p1);
		else
			p = Optional.of(0);
		
		Optional<Boolean> ascending;
		Boolean ascending1 = session.getAttribute("ascending");
		if(ascending1 != null)
			ascending =  Optional.of(ascending1);
		else
			ascending = Optional.of(true);
		
		Optional<String> from;
		String from1 = session.getAttribute("from");
		if(from1 != null)
			from = Optional.of(from1);
		else
			from = Optional.of("");
		
		Sort sort = ascending.orElse(true)?Sort.by("price").ascending():Sort.by("price").descending();
		Pageable pageable = PageRequest.of(p.orElse(0), 5,sort);
		Page<Tour> page = tourDAO.findByFromAndName("%"+from.orElse("")+"%","%" + nameKW.orElse("") + "%", pageable);
		model.addAttribute("ascending",ascending);
		model.addAttribute("from",from);
		model.addAttribute("page", page);
		model.addAttribute("nameKW",nameKW);
		return "search";
	}
	
	@RequestMapping ("tours/search/all")
	public String searchfromAll() {
		session.setAttribute("from","");
		return "redirect:/tours/search/";
	}
	
	@RequestMapping ("tours/search/fromHN")
	public String searchfromHN() {
		session.setAttribute("from", "Hà Nội");
		return "redirect:/tours/search/";
	}
	
	@RequestMapping ("tours/search/fromHCM")
	public String searchfromHCM(Model model, @RequestParam("p") Optional<Integer> p) {
		session.setAttribute("from", "Hồ Chí Minh");
		return "redirect:/tours/search/";
	}
	
	@RequestMapping ("tours/search/ascending")
	public String searchAscending(Model model, @RequestParam("p") Optional<Integer> p) {
		session.setAttribute("ascending", true);
		return "redirect:/tours/search/";
	}
	@RequestMapping ("tours/search/descending")
	public String searchDescending(Model model, @RequestParam("p") Optional<Integer> p) {
		session.setAttribute("ascending", false);
		return "redirect:/tours/search/";
	}
	
	@RequestMapping ("tours/search/name")
	public String searchName(Model model, @RequestParam("nameKW") Optional<String> nameKW) {
		session.setAttribute("nameKW", nameKW.get());
		return "redirect:/tours/search/";
	}

}
