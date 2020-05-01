package com.act.tms.config;

import java.util.HashSet;
import java.util.Set;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.act.tms.model.Users;
import com.act.tms.repository.UserRepository;


@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired 
    private UserRepository userRepository;
    
    
        @Override
        @Transactional(readOnly = true)
        public UserDetails loadUserByUsername(String adid) {
            Users user = userRepository.findByAdid(adid);
            if (user == null) throw new UsernameNotFoundException(adid);

            Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
            grantedAuthorities.add(new SimpleGrantedAuthority("USER"));
            grantedAuthorities.add(new SimpleGrantedAuthority("ADMIN"));     

            return new org.springframework.security.core.userdetails.User(user.getAdid(), user.getPassword(), grantedAuthorities);
        }
    }
