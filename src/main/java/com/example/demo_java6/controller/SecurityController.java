package com.example.demo_java6.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo_java6.entities.Account;
import com.example.demo_java6.service.AccountService;

@Controller
public class SecurityController {
	
	@RequestMapping("/security/login/form")
	public String loginForm(Model model) {
//		model.addAttribute("message", "Vui lòng đăng nhập!");
		return "security/login";
	}
	@RequestMapping("/security/login/success")
	public String loginSuccess(Model model) {
		model.addAttribute("message", "Đăng nhập thành công!");
//		model.addAttribute("welcome", acc.getFullName());
		return "forward:/products/list";
	}
	@RequestMapping("/security/login/fail")
	public String loginError(Model model) {
		model.addAttribute("message", "Đăng nhập thất bại!");
		return "security/login";
	}
	@RequestMapping("/security/unauthoried")
	public String unauthoried(Model model) {
		model.addAttribute("message", "Bạn cần đăng nhập để sử dụng chức năng.");
		return "security/login";
	}
	@RequestMapping("/security/logoff/success")
	public String logoff(Model model) {
		model.addAttribute("message", "Đã đăng xuất!");
		return "security/login";
	}
}
