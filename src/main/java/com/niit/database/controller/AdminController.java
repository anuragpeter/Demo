package com.niit.database.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping("/adminHome")
	public String adminHome()
	{
		System.out.println("admin page");
		return "/admin/admin";
		
	}
}
