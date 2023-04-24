package com.example.demo_java6.controller.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo_java6.entities.Order;
import com.example.demo_java6.service.MailerService;
import com.example.demo_java6.service.OrderService;

@Controller
public class OrderAController {
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private MailerService mailerService;
	
	@RequestMapping("/admin/orders")
	public String statusOrder(Model model) {
		model.addAttribute("listOrder", orderService.findByStatus("Chờ xác nhận"));
		return "admin/order_status";
	}
	
	@RequestMapping("/admin/orders/{id}")
	public String updateOder(Model model, @PathVariable("id") Long id, @ModelAttribute Order odto) {
//		Long convert = (long) id;
		Order mainn = orderService.getById(id);
		String status = "";
		String code = mainn.getOrderId().toString();
		String email = mainn.getAccount().getEmail();
		String subject = "Đơn hàng "+code+" từ DogCatShop!";
//		String statusOld = orderService.findById(convert).get().getStatus();
		
		if(odto.getStatus().equals("Đang giao") ) {
			status = "Đơn hàng của bạn đã được chuyển đi.";
			mainn.setStatus("Đang giao");
		}else {
			status = "Đơn hàng của bạn đã bị hủy bỏ do thiếu tính xác thực.";
			mainn.setStatus("Hủy đơn");
		}
		
		orderService.save(mainn);
		
//		orderService.updateOrderSetStatusForId(odto.getStatus(), convert);
		mailerService.queue(email, subject, status);
		
		return "redirect:/admin/orders";
	}
	
	@RequestMapping("/admin/start")
	public String updateOrder(Model model) {
		model.addAttribute("listOrderStart", orderService.findByStatus("Đang giao"));
		System.out.println("AAA: "+orderService.findByStatus("Đang giao").size());
		return "admin/order_update";
	}
	
	@RequestMapping("/admin/start/{id}")
	public String updateOderStart(Model model, @PathVariable("id") Long id, @ModelAttribute Order odto) {
//		Long convert = (long) id;
		Order mainn = orderService.getById(id);
		String status = "";
		String code = mainn.getOrderId().toString();
		String email = mainn.getAccount().getEmail();
		String subject = "Đơn hàng "+code+" từ DogCatShop!";
//		String statusOld = orderService.findById(convert).get().getStatus();
		
		if(odto.getStatus().equals("Đã nhận được hàng") ) {
			status = "Đơn hàng của bạn đã được giao. Chúc bạn có những trải nghiệm tuyệt vời cùng sản phẩm của mình!";
			mainn.setStatus("Đã nhận được hàng");
		}else {
			status = "Đơn hàng của bạn đã bị hủy bỏ do gặp vấn đề trong lúc chuyển giao. Chúng tối sẽ liên hệ lại sớm nhất với bạn.";
			mainn.setStatus("Hủy đơn");
		}
		
//		orderService.updateOrderSetStatusForId(odto.getStatus(), convert);
		orderService.save(mainn);
		mailerService.queue(email, subject, status);
		
		return "redirect:/admin/start";
	}
	
	@ModelAttribute("liststatus")
	public List<String> list(){
		List<String> status = new ArrayList<>();
		status.add("Chờ xác nhận");
		status.add("Đang giao");
//		status.add("Đã nhận");
		status.add("Hủy đơn");
		return status;
	}
	
	@ModelAttribute("liststatusstart")
	public List<String> listStart(){
		List<String> status = new ArrayList<>();
//		status.add("Chờ xác nhận");
		status.add("Đang giao");
		status.add("Đã nhận được hàng");
		status.add("Hủy đơn");
		return status;
	}
}
