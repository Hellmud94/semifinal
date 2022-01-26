package com.project.semi.employee.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class EmployeeController {

	@RequestMapping("/employee")
	public String memberMain(Model model) {
		return "employee/main";
	}

}
