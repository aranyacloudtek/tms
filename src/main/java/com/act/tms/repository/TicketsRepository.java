package com.act.tms.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.act.tms.model.Tickets;


public interface TicketsRepository  extends JpaRepository<Tickets, Integer>{
//	
	Tickets findByTicket_id(int ticket_id);

//	Tickets findById(int ticket_id);
	
	Tickets findByAdid(String adid);



}
