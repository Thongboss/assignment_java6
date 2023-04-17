package com.example.demo_java6.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo_java6.entities.Product;
import com.example.demo_java6.service.CategoryService;
import com.example.demo_java6.service.ProductService;

@Controller
@RequestMapping("products")
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@GetMapping("/list")
	public String list(Model model) {
		List<Product> list = productService.findAll();
		model.addAttribute("items", list);
		return "/products/list";
	}
	@GetMapping("/detail/{id}")
	public String detail(Model model, @PathVariable("id") Long id) {
		Product pro = productService.findById(id).get();
		if(pro.getAvailable() == 0) {
			model.addAttribute("status", true);
		}
		model.addAttribute("item", pro);
		return "/products/details";
	}
	@GetMapping("/list/{id}")
	public String productWithCate(Model model, @PathVariable("id") Long id) {
		List<Product> pro = categoryService.getById(id).getProducts();
		if(pro.size() == 0) {
			model.addAttribute("prostatus", true);
		}
		model.addAttribute("items", pro);
		return "/products/list";
	}
}
