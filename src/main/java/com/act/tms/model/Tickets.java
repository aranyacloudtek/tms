package com.act.tms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity

@Table(name = "tickets")


public class Tickets {
	
	
	@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
     
	private long ticket_id;

    @NotBlank
	private int priority;

	@Column
	private String status;
	
	@NotBlank
	private String adid;
	
	@Column
	private String app_id;
	
	@NotBlank
	private String project;
	
	
	@Column
	private String ticket_type;
	
	@NotBlank
	private String approved_by ;
	
	@NotBlank
	private String ticket_desc;

	public long getTicket_id() {
		return ticket_id;
	}

	public void setTicket_id(long ticket_id) {
		this.ticket_id = ticket_id;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAdid() {
		return adid;
	}

	public void setAdid(String adid) {
		this.adid = adid;
	}

	public String getApp_id() {
		return app_id;
	}

	public void setApp_id(String app_id) {
		this.app_id = app_id;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getTicket_type() {
		return ticket_type;
	}

	public void setTicket_type(String ticket_type) {
		this.ticket_type = ticket_type;
	}

	public String getApproved_by() {
		return approved_by;
	}

	public void setApproved_by(String approved_by) {
		this.approved_by = approved_by;
	}

	public String getTicket_desc() {
		return ticket_desc;
	}

	public void setTicket_desc(String ticket_desc) {
		this.ticket_desc = ticket_desc;
	}

	@Override
	public String toString() {
		return "Tickets [ticket_id=" + ticket_id + ", priority=" + priority + ", status=" + status + ", adid=" + adid
				+ ", app_id=" + app_id + ", project=" + project + ", ticket_type=" + ticket_type + ", approved_by="
				+ approved_by + ", ticket_desc=" + ticket_desc + "]";
	}

	public Tickets orElseThrow(Object object) {
		// TODO Auto-generated method stub
		return null;
	}
	
	


}






