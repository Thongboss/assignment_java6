package com.example.demo_java6.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.demo_java6.entities.Product;
import com.example.demo_java6.repository.CategoryRepository;
import com.example.demo_java6.repository.ProductRepository;
import com.example.demo_java6.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
    ProductRepository productRepository;
	
//	@Autowired
//	CategoryRepository categoryRepository;

    @Override
    public <S extends Product> S save(S entity) {
        return productRepository.save(entity);
    }

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public Page<Product> findAll(Pageable pageable) {
        return productRepository.findAll(pageable);
    }

    @Override
    public List<Product> findAll(Sort sort) {
        return productRepository.findAll(sort);
    }

    @Override
    public <S extends Product> List<S> saveAll(Iterable<S> entities) {
        return productRepository.saveAll(entities);
    }

    @Override
    public Optional<Product> findById(Long id) {
        return productRepository.findById(id);
    }

    @Override
    public boolean existsById(Long id) {
        return productRepository.existsById(id);
    }

    @Override
    public long count() {
        return productRepository.count();
    }

    @Override
    public void deleteById(Long id) {
        productRepository.deleteById(id);
    }

    @Override
    public void delete(Product entity) {
        productRepository.delete(entity);
    }

    @Override
    public Product getById(Long id) {
        return productRepository.getById(id);
    }

    @Override
    public void deleteAll() {
        productRepository.deleteAll();
    }
    
    
}
