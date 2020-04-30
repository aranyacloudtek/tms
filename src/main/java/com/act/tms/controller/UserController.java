package com.act.tms.controller;

import com.act.tms.exception.ResourceNotFoundException;
import com.act.tms.model.Users;
import com.act.tms.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api")
public class UserController {

    @Autowired
    UserRepository userRepository;

    
    // Create a new User
    @PostMapping("/users")
    public @Valid Users createUser(@Valid @RequestBody Users user) {

        System.out.println(" initiating createUser() =" +user);

        System.out.println(" user.getAdid()" +user.getAdid());
    	
        return userRepository.save(user);
    }

    // Get All Users
   
//    @POST
//    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
//    @Produces(MediaType.APPLICATION_JSON)
    @GetMapping("/users")
    
    public List<Users> getAllUsers() {
    	
    	
        System.out.println(" initiating getAllUser()");
        
    	System.out.println("userRepository.findAll().size() in updateUser(): " + userRepository.findAll().size());
    	
    	userRepository.findAll().forEach(System.out::println);
    	
    	for(Users model : userRepository.findAll()) {
            System.out.println("getAdid: "+model.getAdid());
        }
    	
        return  userRepository.findAll();
    }

    
   
    
    

    // Get a Single User
    @GetMapping("/users/{adid}")
    public Users getUserById(@PathVariable(value = "adid") String adid) {
        return userRepository.findById(adid)
                .orElseThrow(() -> new ResourceNotFoundException("User", "adid", adid));
    }

    // Update a User
    @PutMapping("/users/{adid}")
    public Users updateUser(@PathVariable(value = "adid") String adid, @Valid @RequestBody Users userDetails) {

        Users user = userRepository.findById(adid).orElseThrow(() -> new ResourceNotFoundException("Users", "adid", adid));
        
        System.out.println("userDetails.getAdid() in updateUser()" +userDetails.getAdid());
        
        user.setAdid(userDetails.getAdid());
        user.setFirst_name(userDetails.getFirst_name());
        user.setLast_name(userDetails.getLast_name());
        user.setPassword(userDetails.getPassword());
        user.setEmail_id(userDetails.getEmail_id());
        user.setCaption(userDetails.getCaption());
        user.setImage_id(userDetails.getImage_id());
        user.setMobile(userDetails.getMobile());
        user.setCountry(userDetails.getCountry());
        user.setUser_type(userDetails.getUser_type());
        user.setUser_status(userDetails.getUser_status());
        user.setLast_login(userDetails.getLast_login());
        user.setRemarks(userDetails.getRemarks());
        
        Users updatedUser = userRepository.save(user);
        return updatedUser;
    }

    
    // Delete a User / disable use by setting status as 0
    @DeleteMapping("/users/{adid}")    
    public Users disableUser(@PathVariable(value = "adid") String adid, @Valid @RequestBody Users userDetails) {

        Users user = userRepository.findById(adid).orElseThrow(() -> new ResourceNotFoundException("Users", "adid", adid));
        
        System.out.println("disabling user in disableUser()" +userDetails.getAdid());
        
        //user.setAdid(userDetails.getAdid());
        //user.setFirst_name(userDetails.getFirst_name());
        //user.setLast_name(userDetails.getLast_name());
        //user.setPassword(userDetails.getPassword());
        //user.setEmail_id(userDetails.getEmail_id());
        //user.setCaption(userDetails.getCaption());
        //user.setImage_id(userDetails.getImage_id());
        //user.setMobile(userDetails.getMobile());
        //user.setCountry(userDetails.getCountry());
        //user.setUser_type(userDetails.getUser_type());
        //user.setUser_status(userDetails.getUser_status());
        // disabling user status as 0
        user.setUser_status(0);        
        user.setLast_login(userDetails.getLast_login());
        user.setRemarks(userDetails.getRemarks());

        Users updatedUser = userRepository.save(user);
        return updatedUser;
    }

    
    // Delete a User / disable use by setting status as 0
    
    //@DeleteMapping("/users/{adid}")
    //public ResponseEntity<?> deleteUser(@PathVariable(value = "adid") String adid) {
    	
    //    Users user = userRepository.findById(adid).orElseThrow(() -> new ResourceNotFoundException("Users", "adid", adid));
        //userRepository.delete(user);
    //    user.setUser_status(0);
    //    Users updatedUser = userRepository.save(user);

    //    return ResponseEntity.ok().build();
        //return 
    //} 

}
