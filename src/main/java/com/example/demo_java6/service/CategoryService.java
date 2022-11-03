package com.example.demo_java6.service;

import java.util.List;

import com.example.demo_java6.entities.Category;

public interface CategoryService {

    void deleteAll();

    Category getById(Long id);

    void delete(Category entity);

    void deleteById(Long id);

    <S extends Category> S saveAndFlush(S entity);

    <S extends Category> List<S> saveAll(Iterable<S> entities);

    List<Category> findAll();

    <S extends Category> S save(S entity);

}
