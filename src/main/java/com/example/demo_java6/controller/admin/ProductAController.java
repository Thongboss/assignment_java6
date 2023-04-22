package com.example.demo_java6.controller.admin;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo_java6.entities.Category;
import com.example.demo_java6.entities.Product;
import com.example.demo_java6.service.CategoryService;
import com.example.demo_java6.service.ProductService;

@Controller
@RequestMapping("/admin")
public class ProductAController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	
	@RequestMapping("/products")
	public String productList(Model model){
		return "admin/product_list";
	}
	
	@RequestMapping("/products/new")
	public String create(Model model) {
		List<Category> cates = categoryService.findAll();
		Product pro = new Product();
		pro.setImage("cloud-upload.jpg");
		model.addAttribute("form", pro);
		model.addAttribute("cates", cates);
		return "admin/product_new";
	}
	
	@RequestMapping("/products/edit/{id}")
	public String edit(Model model,@PathVariable("id") Long id) {
		Product pro = productService.findById(id).get();
		List<Category> cates = categoryService.findAll();
		model.addAttribute("form", pro);
		model.addAttribute("cates", cates);
		return "admin/product_edit";
	}
	
	@RequestMapping("products/add")
	public String add(@RequestParam("image") String image, @RequestParam("name") String name, @RequestParam("price") Long price, @RequestParam("available") Long quantity,
			@RequestParam("category") Long cateId, @RequestParam("createDate") String date) throws ParseException {
		
		Date createDate = new SimpleDateFormat("yyyy-MM-dd").parse(date);
		
		
		Product pro = new Product();
		pro.setName(name);
		pro.setPrice(price);
		pro.setImage(image);
		pro.setCreateDate(createDate);
		pro.setAvailable(quantity);
		pro.setCategory(categoryService.getById(cateId));
		
		productService.save(pro);
		
		return "redirect:/admin/products";
	}
	
	@RequestMapping("products/update")
	public String upfate(@RequestParam("image") String image, @RequestParam("name") String name, @RequestParam("price") Long price, @RequestParam("available") Long quantity,
			@RequestParam("category") Long cateId, @RequestParam("createDate") String date, @RequestParam("productId") Long id) throws ParseException {
		
		Date createDate = new SimpleDateFormat("yyyy-MM-dd").parse(date);
		
		System.out.println("Date: "+createDate);
		System.out.println("image: "+image);
		
		if (image.isEmpty()) {
			image = productService.getById(id).getImage();
		}
		
		Product pro = new Product();
		pro.setProductId(id);
		pro.setName(name);
		pro.setPrice(price);
		pro.setImage(image);
		pro.setCreateDate(createDate);
		pro.setAvailable(quantity);
		pro.setCategory(categoryService.getById(cateId));
		
		productService.save(pro);
		
		return "redirect:/admin/products";
	}
	
	@RequestMapping("products/delete/{id}")
	public void delete(@PathVariable("id") Long id) {
		productService.deleteById(id);
	}
}
