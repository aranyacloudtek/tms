package com.act.tms.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.act.tms.model.Tickets;
import com.act.tms.repository.TicketsRepository;


public class TicketsServiceImpl implements TicketsService{
	
	@Autowired
    private TicketsRepository ticketsRepository;
	
	@Override
	public void save(Tickets tickets) {
		
				
		ticketsRepository.save(tickets);
		
		
	}
	

	
	@Override
	public  Tickets findByTicket_id(Integer ticket_id) 
	  {
	        
		return ticketsRepository.findByTicket_id(ticket_id);
	  }

}
