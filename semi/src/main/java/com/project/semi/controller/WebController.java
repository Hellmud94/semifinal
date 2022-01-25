package com.project.semi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {	
	@RequestMapping("/")
	public String main(Model model) {
		return "main";
	}
}