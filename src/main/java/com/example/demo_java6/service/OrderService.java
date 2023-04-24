package com.example.demo_java6.service;

import java.util.List;

import org.springframework.data.domain.Sort;

import com.example.demo_java6.entities.Account;
import com.example.demo_java6.entities.Order;
import com.fasterxml.jackson.databind.JsonNode;

public interface OrderService {

    Order getById(Long id);

    void delete(Order entity);

    void deleteById(Long id);

    long count();

    <S extends Order> List<S> saveAll(Iterable<S> entities);

    List<Order> findAllById(Iterable<Long> ids);

    List<Order> findAll(Sort sort);

    List<Order> findAll();

    <S extends Order> S save(S entity);

	Order create(JsonNode orderData,Account acc);

	List<Order> findByUsername(String username);
	
	List<Order> findByStatus(String status);

}
