package com.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.DAO.ImageDAO;
import com.DAO.TourDAO;
import com.DTO.*;
import com.entities.*;
import com.services.FileService;
import com.services.SessionService;


@Controller
@RequestMapping("tour")
public class DetailController {
	@Autowired
	TourDAO tourDAO;
	@Autowired
	ImageDAO imageDAO;
	@Autowired
	FileService fileService;
	@Autowired
	SessionService session;
	
	@GetMapping("detail")
	public String getMethodName(@RequestParam("id")int id, Model model) {
		String kw = session.getAttribute("nameKW");
		Optional<String> nameKW;
		if (kw != null)
			nameKW = Optional.of(kw);
		else 
			nameKW = Optional.of("");
		Tour t = tourDAO.findById(id).get();
		List<Image> imgList = imageDAO.findByTourID(id);
		model.addAttribute("imgList",imgList);
		model.addAttribute("tour",t);
		model.addAttribute("nameKW",nameKW);
		return "detail";
	}
	
	@ModelAttribute("content")
	public String getContent(@RequestParam("id") int id) {
		String filePath = "src/main/webapp/views/static/Tours/tour" + String.valueOf(id) + "/content" + String.valueOf(id)+".txt";
		String content = fileService.readFileFromPath(filePath);
//		content = content.replace("{","/");
//		content = content.replaceAll("}",".");
		System.out.println(content);
		return content;
	}
	
//	@ModelAttribute("rateList")
//	public ArrayList<RatingDTO> getRateList(){
//		ArrayList<RatingDTO> list = new ArrayList<RatingDTO>();
//		RatingDTO r1 = new RatingDTO("Hoàng Thị Minh", "KH-1.jpg", "Chuyến đi tuyệt vời", "Chia sẽ về chuyến đi 3 ngày 4 đêm của mình tới Hà Giang, Chị Minh chia sẽ những điều tích cực đến mọi người", 0);
//		list.add(r1);
//		return list;
//	}
}
