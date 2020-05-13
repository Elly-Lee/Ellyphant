package com.example.sbs.cuni.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	@ResponseBody
	public String showMain() {
		return "home/main";
	}
	@RequestMapping("home/main")
	public String showMain2() {
		return "home/main";
	}
}
