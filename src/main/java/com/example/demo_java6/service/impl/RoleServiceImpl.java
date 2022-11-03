package com.example.demo_java6.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import com.example.demo_java6.entities.Role;
import com.example.demo_java6.repository.RoleRepository;
import com.example.demo_java6.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService{
    RoleRepository roleRepository;

    @Override
    public <S extends Role> S save(S entity) {
        return roleRepository.save(entity);
    }

    @Override
    public List<Role> findAll() {
        return roleRepository.findAll();
    }

    @Override
    public Optional<Role> findById(Long id) {
        return roleRepository.findById(id);
    }

    @Override
    public <S extends Role> boolean exists(Example<S> example) {
        return roleRepository.exists(example);
    }

    @Override
    public long count() {
        return roleRepository.count();
    }

    @Override
    public void deleteById(Long id) {
        roleRepository.deleteById(id);
    }

    @Override
    public Role getById(Long id) {
        return roleRepository.getById(id);
    }

    @Override
    public void deleteAll() {
        roleRepository.deleteAll();
    }
    
    
}
