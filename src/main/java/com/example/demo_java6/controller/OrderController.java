package com.example.demo_java6.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("order")
public class OrderController {
	@GetMapping("checkout")
	public String checkout() {
		return "order/checkout";
	}
	@GetMapping("list")
	public String list() {
		return "order/list";
	}
	@GetMapping("detail")
	public String detail() {
		return "order/detail";
	}
}
