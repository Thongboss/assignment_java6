package com.example.demo_java6.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.example.demo_java6.entities.Product;

public interface ProductService {

    void deleteAll();

    Product getById(Long id);

    void delete(Product entity);

    void deleteById(Long id);

    long count();

    boolean existsById(Long id);

    Optional<Product> findById(Long id);

    <S extends Product> List<S> saveAll(Iterable<S> entities);

    List<Product> findAll(Sort sort);

    Page<Product> findAll(Pageable pageable);

    List<Product> findAll();

    <S extends Product> S save(S entity);

}
