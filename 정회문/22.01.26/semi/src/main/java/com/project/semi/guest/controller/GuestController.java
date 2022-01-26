package com.project.semi.guest.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class GuestController {	
	@RequestMapping("/")
	public String main(Model model) {
		return "main";
	}
}