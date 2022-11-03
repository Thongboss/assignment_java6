package com.example.demo_java6.service.impl;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery.FetchableFluentQuery;
import org.springframework.stereotype.Service;

import com.example.demo_java6.entities.OrderDetail;
import com.example.demo_java6.repository.OrderDetailRepository;
import com.example.demo_java6.service.OrderDetailService;

@Service
public class OrderDetailServiceImpl implements OrderDetailService{
    OrderDetailRepository orderDetailRepository;

    @Override
    public <S extends OrderDetail> S save(S entity) {
        return orderDetailRepository.save(entity);
    }

    @Override
    public <S extends OrderDetail> Optional<S> findOne(Example<S> example) {
        return orderDetailRepository.findOne(example);
    }

    @Override
    public List<OrderDetail> findAll() {
        return orderDetailRepository.findAll();
    }

    @Override
    public Page<OrderDetail> findAll(Pageable pageable) {
        return orderDetailRepository.findAll(pageable);
    }

    @Override
    public List<OrderDetail> findAll(Sort sort) {
        return orderDetailRepository.findAll(sort);
    }

    @Override
    public List<OrderDetail> findAllById(Iterable<Long> ids) {
        return orderDetailRepository.findAllById(ids);
    }

    @Override
    public <S extends OrderDetail> List<S> saveAll(Iterable<S> entities) {
        return orderDetailRepository.saveAll(entities);
    }

    @Override
    public void flush() {
        orderDetailRepository.flush();
    }

    @Override
    public <S extends OrderDetail> S saveAndFlush(S entity) {
        return orderDetailRepository.saveAndFlush(entity);
    }

    @Override
    public <S extends OrderDetail> List<S> saveAllAndFlush(Iterable<S> entities) {
        return orderDetailRepository.saveAllAndFlush(entities);
    }

    @Override
    public <S extends OrderDetail> Page<S> findAll(Example<S> example, Pageable pageable) {
        return orderDetailRepository.findAll(example, pageable);
    }

    @Override
    public Optional<OrderDetail> findById(Long id) {
        return orderDetailRepository.findById(id);
    }

    @Override
    public void deleteInBatch(Iterable<OrderDetail> entities) {
        orderDetailRepository.deleteInBatch(entities);
    }

    @Override
    public boolean existsById(Long id) {
        return orderDetailRepository.existsById(id);
    }

    @Override
    public <S extends OrderDetail> long count(Example<S> example) {
        return orderDetailRepository.count(example);
    }

    @Override
    public void deleteAllInBatch(Iterable<OrderDetail> entities) {
        orderDetailRepository.deleteAllInBatch(entities);
    }

    @Override
    public <S extends OrderDetail> boolean exists(Example<S> example) {
        return orderDetailRepository.exists(example);
    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Long> ids) {
        orderDetailRepository.deleteAllByIdInBatch(ids);
    }

    @Override
    public <S extends OrderDetail, R> R findBy(Example<S> example, Function<FetchableFluentQuery<S>, R> queryFunction) {
        return orderDetailRepository.findBy(example, queryFunction);
    }

    @Override
    public long count() {
        return orderDetailRepository.count();
    }

    @Override
    public void deleteAllInBatch() {
        orderDetailRepository.deleteAllInBatch();
    }

    @Override
    public void deleteById(Long id) {
        orderDetailRepository.deleteById(id);
    }

    @Override
    public OrderDetail getOne(Long id) {
        return orderDetailRepository.getOne(id);
    }

    @Override
    public void delete(OrderDetail entity) {
        orderDetailRepository.delete(entity);
    }

    @Override
    public OrderDetail getById(Long id) {
        return orderDetailRepository.getById(id);
    }

    @Override
    public void deleteAllById(Iterable<? extends Long> ids) {
        orderDetailRepository.deleteAllById(ids);
    }

    @Override
    public void deleteAll(Iterable<? extends OrderDetail> entities) {
        orderDetailRepository.deleteAll(entities);
    }

    @Override
    public OrderDetail getReferenceById(Long id) {
        return orderDetailRepository.getReferenceById(id);
    }

    @Override
    public void deleteAll() {
        orderDetailRepository.deleteAll();
    }

    @Override
    public <S extends OrderDetail> List<S> findAll(Example<S> example) {
        return orderDetailRepository.findAll(example);
    }

    @Override
    public <S extends OrderDetail> List<S> findAll(Example<S> example, Sort sort) {
        return orderDetailRepository.findAll(example, sort);
    }
    
    
}
