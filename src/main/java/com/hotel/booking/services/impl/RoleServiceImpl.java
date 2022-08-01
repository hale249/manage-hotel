package com.hotel.booking.services.impl;

import com.hotel.booking.entities.Role;
import com.hotel.booking.repositories.RoleRepository;
import com.hotel.booking.services.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public List<Role> findAll() {
        return roleRepository.findAll();
    }
}
