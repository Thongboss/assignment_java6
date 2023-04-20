package com.example.demo_java6.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.demo_java6.entities.Account;
import com.example.demo_java6.entities.Order;
import com.example.demo_java6.entities.OrderDetail;
import com.example.demo_java6.repository.OrderDetailRepository;
import com.example.demo_java6.repository.OrderRepository;
import com.example.demo_java6.service.OrderService;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;


@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
    private OrderRepository orderRepository;
	
	@Autowired
	private OrderDetailRepository orderDetailRepository;

    @Override
    public <S extends Order> S save(S entity) {
        return orderRepository.save(entity);
    }

    @Override
    public List<Order> findAll() {
        return orderRepository.findAll();
    }

    @Override
    public List<Order> findAll(Sort sort) {
        return orderRepository.findAll(sort);
    }

    @Override
    public List<Order> findAllById(Iterable<Long> ids) {
        return orderRepository.findAllById(ids);
    }

    @Override
    public <S extends Order> List<S> saveAll(Iterable<S> entities) {
        return orderRepository.saveAll(entities);
    }

    @Override
    public long count() {
        return orderRepository.count();
    }

    @Override
    public void deleteById(Long id) {
        orderRepository.deleteById(id);
    }

    @Override
    public void delete(Order entity) {
        orderRepository.delete(entity);
    }

    @Override
    public Order getById(Long id) {
        return orderRepository.getById(id);
    }

	@Override
	public Order create(JsonNode orderData, Account acc) {
		
		ObjectMapper mapper = new ObjectMapper();
		Order order = mapper.convertValue(orderData, Order.class);
		order.setAccount(acc);
		order.setStatus("Chờ xác nhận");
		System.out.println("order: "+order.getAddress());
		orderRepository.save(order);
		
		TypeReference<List<OrderDetail>> type = new TypeReference<List<OrderDetail>>() {};
		
		List<OrderDetail> details = mapper.convertValue(orderData.get("orderDetails"), type)
				.stream().peek(d -> d.setOrder(order)).collect(Collectors.toList());
		orderDetailRepository.saveAll(details);
		return order;
	}

	@Override
	public List<Order> findByUsername(String username) {
		return orderRepository.findByUsername(username);
	}
    
    
}
