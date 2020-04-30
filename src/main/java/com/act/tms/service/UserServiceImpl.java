package com.act.tms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.act.tms.model.Users;
import com.act.tms.repository.UserRepository;
import com.act.tms.service.UserService;



@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(Users user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
       
        userRepository.save(user);
    }

    @Override
    public Users findByUsername(String adid) {
        return userRepository.findByAdid(adid);
    }

    
	}
