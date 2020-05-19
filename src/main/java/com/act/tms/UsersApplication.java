package com.act.tms;

//import java.util.Arrays;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


//@SpringBootApplication(scanBasePackages={
//"com.act.tms.service.TicketsService", "com.act.tms.service.UserService"})
 
@SpringBootApplication
public class UsersApplication {


  	    
    public static void main(String[] args) {
        SpringApplication.run(UsersApplication.class, args);
    }

} 
