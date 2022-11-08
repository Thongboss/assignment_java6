package com.example.demo_java6.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.example.demo_java6.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	CategoryService categoryService;
	
	
}
