package com.example.demo_java6.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo_java6.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long>{

}
