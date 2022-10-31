package com.example.demo_java6.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("products")
public class ProductController {
	@GetMapping("/list")
	public String list() {
		return "/products/list";
	}
	@GetMapping("/detail")
	public String detail() {
		return "/products/details";
	}
}
