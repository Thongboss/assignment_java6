package com.example.demo_java6.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo_java6.entities.Product;
import com.example.demo_java6.model.PageDto;
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
		PageDto dto = new PageDto(0, 6, null);
//		List<Product> list = productService.findAll();
		Page<Product> page = productService.findAll(PageRequest.of(dto.getIndex(), dto.getQuantity()));
		model.addAttribute("page", dto.getIndex());
		model.addAttribute("items", page);
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
		PageDto dto = new PageDto(0, 6, null);
		List<Product> pro = categoryService.getById(id).getProducts();
		if(pro.size() == 0) {
			model.addAttribute("prostatus", true);
		}
		model.addAttribute("page", dto.getIndex());
		model.addAttribute("items", pro);
		return "/products/list";
	}
	
	@GetMapping("/list/page/{page}")
	public String page(Model model,@PathVariable("page") int pageT) {
		
		int size = productService.findAll().size() / 6;
		if(pageT < 0) {
			pageT = size;
		}else if(pageT > size) {
			pageT = 0;
		}
		
		PageDto dto = new PageDto(pageT, 6, null);
//		List<Product> list = productService.findAll();
		Page<Product> page = productService.findAll(PageRequest.of(dto.getIndex(), dto.getQuantity()));
		model.addAttribute("page", dto.getIndex());
		model.addAttribute("items", page);
		return "/products/list";
	}
}
