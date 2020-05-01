package com.act.tms.service;

import com.act.tms.model.Users;

public interface UserService {

	 void save(Users user);

	    Users findByUsername(String username);
} 
