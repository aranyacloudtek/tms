package com.act.tms.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.act.tms.exception.ResourceNotFoundException;
import com.act.tms.model.Tickets;

import com.act.tms.repository.TicketsRepository;


@RestController
@RequestMapping("/api")
public class TicketsController {

    @Autowired
    TicketsRepository ticketsRepository;

     
    // Create a new Tickets
    @PostMapping("/tickets")
    public @Valid Tickets createTicket(@Valid @RequestBody Tickets tickets) {

        System.out.println(" initiating createTickets() =" +tickets);

        System.out.println(" tickets.getTicket_id()" +tickets.getTicket_id());
    	
        return ticketsRepository.save(tickets);
    }

    // Get All Tickets
   
//    @POST
//    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
//    @Produces(MediaType.APPLICATION_JSON)
    @GetMapping("/tickets")
    
    public List<Tickets> getAllTickets() {
    	
    	
        System.out.println(" initiating getAllTickets()");
        
    	System.out.println("ticketsRepository.findAll().size() in updateTicket(): " + ticketsRepository.findAll().size());
    	
    	ticketsRepository.findAll().forEach(System.out::println);
    	
    	for(Tickets model : ticketsRepository.findAll()) {
            System.out.println("getTicket_id: "+model.getTicket_id());
        }
    	
        return  ticketsRepository.findAll();
    }

    
   
    
    

    // Get a Single User
    @GetMapping("/tickets/{ticket_id}")
    public Tickets getTicketById(@PathVariable(value = "ticket_id") long ticket_id) {
        return ticketsRepository.findById(ticket_id).orElseThrow(() -> new ResourceNotFoundException("Tickets", "ticket_id", ticket_id));
//        return userRepository.findById(adid).orElseThrow(() -> new ResourceNotFoundException("User", "adid", adid));
    }

    // Update a tickets
    @PutMapping("/tickets/{ticket_id}")
    public Tickets updateTickets(@PathVariable(value = "ticket_id") long ticket_id, @Valid @RequestBody Tickets ticketsDetails) {
//    	  public Users updateUser(@PathVariable(value = "adid") String adid, @Valid @RequestBody Users userDetails) {
    		  
    		  
    	  
        Tickets tickets = ticketsRepository.findById(ticket_id).orElseThrow(() -> new ResourceNotFoundException("Tickets", "ticket_id", ticket_id));
        
//        Users user = userRepository.findById(adid).orElseThrow(() -> new ResourceNotFoundException("Users", "adid", adid));
        
        
        System.out.println("ticketsDetails.getTicket_id() in updateTickets()" +ticketsDetails.getTicket_id());
        
        tickets.setTicket_id(ticketsDetails.getTicket_id());
        tickets.setPriority(ticketsDetails.getPriority());
        tickets.setStatus(ticketsDetails.getStatus());
        tickets.setAdid(ticketsDetails.getAdid());
        tickets.setApp_id(ticketsDetails.getApp_id());
        tickets.setProject(ticketsDetails.getProject());
        tickets.setTicket_type(ticketsDetails.getTicket_type());
        tickets.setApproved_by(ticketsDetails.getApproved_by());
        tickets.setTicket_desc(ticketsDetails.getTicket_desc());
        
        
       Tickets updatedTickets = ticketsRepository.save(tickets);
        return updatedTickets;
    }

} 
    
       
    
    
//    // Delete a Tickets / disable use by setting status as 0
//    @DeleteMapping("/tickets/{ticket_id}")    
//    public Tickets disableTicket(@PathVariable(value = "ticket_id") int ticket_id, @Valid @RequestBody Tickets ticketsDetails) {
//
//        Tickets tickets = ticketsRepository.findById(ticket_id).orElseThrow(() -> new ResourceNotFoundException("Tickets", "ticket_id", ticket_id));
//        
//        System.out.println("disabling ticket in disableTickets()" +ticketsDetails.getTicket_id());
//        
//      
////        ticketsDetails.    
//       
//        Tickets updatedTickets = ticketsRepository.deleteAll();
//        return updatedTickets;
//    }
//
//    
//   
