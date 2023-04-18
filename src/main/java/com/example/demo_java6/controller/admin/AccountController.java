package com.example.demo_java6.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo_java6.entities.Account;
import com.example.demo_java6.service.AccountService;
@CrossOrigin("*")
@RestController
@RequestMapping("/rest/accounts")
public class AccountController {
	
	@Autowired
	AccountService accountService;
	
	@Autowired
	@Lazy
	BCryptPasswordEncoder pe;
	
	@GetMapping("/{email}")
	public Account find(@PathVariable("email") String email) {
		Account acc = accountService.findByEmail(email);
		return acc;
	}
	
	@PostMapping("")
	public Account post(@RequestBody Account acc) {
		acc.setPassword(pe.encode(acc.getPassword()));
		accountService.save(acc);
		return acc;
	}
	
	@PutMapping("")
	public Account update(@RequestBody Account acc) {
		acc.setPassword(pe.encode(acc.getPassword()));
		accountService.save(acc);
		return acc;
	}
}
