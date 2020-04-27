package com.act.tms;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

//import com.act.tms.model.User;
//import com.act.tms.model.Environment;

//import com.act.tms.repository.UserRepository;

//import com.act.tms.model.Environment;
//import com.act.tms.repository.EnvironmentsRepository;

@SpringBootApplication
public class Application implements CommandLineRunner {

    //@Autowired
    //private BCryptPasswordEncoder bCryptPasswordEncoder;

    //@Autowired
    //private UserRepository userRepository;

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @Override
    public void run(String...args) throws Exception {
        //userRepository.save(new User("rmarre01", bCryptPasswordEncoder.encode("Password01")));
    	//userRepository.save(new User("rmarre02", bCryptPasswordEncoder.encode("Password01")));
    	
    	//userRepository.save(new Environment());
    	
    }
}
