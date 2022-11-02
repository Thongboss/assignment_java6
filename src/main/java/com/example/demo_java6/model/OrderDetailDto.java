package com.example.demo_java6.model;

import com.example.demo_java6.entities.Order;
import com.example.demo_java6.entities.Product;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDetailDto {
    private Long price;
    private Long quantity;
    private Order order;
    private Product product;
}
