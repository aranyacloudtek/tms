package com.act.tms.service;

import com.act.tms.model.Tickets;


public interface TicketsService {
	
	 void save(Tickets tickets);

	    Tickets findByTicket_id(int Ticket_id);

}
