package com.example.demo_java6.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo_java6.entities.Product;
import com.example.demo_java6.service.ProductService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/products")
public class ProductRestConttroller {
	@Autowired
	private ProductService productService;
	
	@GetMapping("/{id}")
	public Product getOne( @PathVariable("id") Long id) {
		return productService.findById(id).get();
	}
	
	@GetMapping("")
	public List<Product> getAll() {
		return productService.findAll();
	}
}
