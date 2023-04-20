package com.example.demo_java6.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo_java6.entities.Order;
import com.example.demo_java6.service.AccountService;
import com.example.demo_java6.service.OrderService;

@Controller
@RequestMapping("orders")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private AccountService accountService;
	
	@GetMapping("checkout")
	public String checkout() {
		return "order/checkout";
	}
	@GetMapping("list")
	public String list(Model model, HttpServletRequest request) {
		String email = request.getRemoteUser();
		String username = accountService.findByEmail(email).getUserName();
		
		List<Order> od = orderService.findByUsername(username);
		
		model.addAttribute("history", od);
		
		return "order/list";
	}
	@GetMapping("details/{id}")
	public String detail(@PathVariable("id") Long id, Model model) {
		model.addAttribute("order", orderService.getById(id));
		return "order/detail";
	}
}
