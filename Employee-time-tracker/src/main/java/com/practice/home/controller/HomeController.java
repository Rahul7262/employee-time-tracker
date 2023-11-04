package com.practice.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.totaltime.SystemTime;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String HomeView(Model model) {
		
		return "home";
	}

	
}
