package com.act.tms.repository;

import com.act.tms.model.Users;

//import org.hibernate.mapping.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<Users, String> {

	Users findByAdid(String adid);
} 
