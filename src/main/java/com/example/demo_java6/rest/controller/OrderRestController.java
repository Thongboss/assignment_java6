package com.example.demo_java6.rest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo_java6.entities.Account;
import com.example.demo_java6.entities.Order;
import com.example.demo_java6.service.AccountService;
import com.example.demo_java6.service.MailerService;
import com.example.demo_java6.service.OrderService;
import com.fasterxml.jackson.databind.JsonNode;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/orders")
public class OrderRestController {
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private MailerService mailerService;
	
	@PostMapping()
	public Order create(@RequestBody JsonNode orderData) {
		String email = orderData.get("account").get("email").toString();
		
		String mail = email.substring(1,email.length()-1);
		
		Account acc = accountService.findByEmail(mail);
		
		String subject = "Thông báo đặt hàng từ Glosbe jewelry Shop!";
		String body = "Đơn hàng của bạn đã được yêu cầu và chờ xác nhận từ shop!";
		
		mailerService.queue(email, subject, body);

		return orderService.create(orderData,acc);
	}
}
