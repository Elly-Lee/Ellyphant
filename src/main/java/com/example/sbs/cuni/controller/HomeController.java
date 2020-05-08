package com.example.sbs.cuni.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	@RequestMapping("home/main")
	@ResponseBody
	public String showMain() {
		return "메인페이지 입니다.";
	}
}
