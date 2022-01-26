package com.project.semi.admin.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class AdminController {
	
	@RequestMapping("/admin")
	public String adminMain(Model model) {
		return "admin/main";
	}
}
