package com.example.demo_java6.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping({"/","/home/index"})
	public String home() {
		return "redirect:/products/list";
	}
	@RequestMapping({"/admin","/admin/home/index"})
	public String admin() {
		return "redirect:/admin/products";
	}
}
