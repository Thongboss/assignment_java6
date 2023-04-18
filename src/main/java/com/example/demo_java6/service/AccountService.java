package com.example.demo_java6.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.example.demo_java6.entities.Account;

public interface AccountService {

    void deleteAll();

    Account getById(String id);

    void delete(Account entity);

    long count();

    <S extends Account> boolean exists(Example<S> example);

    boolean existsById(String id);

    Optional<Account> findById(String id);

    <S extends Account> List<S> saveAll(Iterable<S> entities);

    List<Account> findAll(Sort sort);

    Page<Account> findAll(Pageable pageable);

    List<Account> findAll();

    <S extends Account> S save(S entity);
    
    Account findByEmail(String email);
    
//    void updatePassword(String pass, String email);

}
