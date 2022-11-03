package com.example.demo_java6.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;

import com.example.demo_java6.entities.Role;

public interface RoleService {

    void deleteAll();

    Role getById(Long id);

    void deleteById(Long id);

    long count();

    <S extends Role> boolean exists(Example<S> example);

    Optional<Role> findById(Long id);

    List<Role> findAll();

    <S extends Role> S save(S entity);

}
