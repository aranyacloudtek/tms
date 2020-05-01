package com.act.tms.model;


import org.springframework.data.annotation.LastModifiedDate;
import javax.persistence.*;
import javax.validation.constraints.NotBlank;

import java.util.Date;

@Entity

@Table(name = "users")

public class Users {
	

	@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
     
	private String adid;

    @NotBlank
	private String first_name;

	@NotBlank
	private String last_name;
	
	@NotBlank
	private String password;
	
	@Transient
	private String passwordConfirm;

	@Column(nullable = true)
	private String email_id;
	
	@Column(nullable = true)
	private String caption;
	
	@Column(nullable = true)
	private byte[] image_id;
	
	@Column(nullable = true)
	private String mobile;
	
	@Column(nullable = true)
	private String country;
	
	@Column(nullable = true)
	private String user_type;
	
	@Column(nullable = false)
	private int user_status;
	
	@Column(nullable = true, updatable = true)
	@Temporal(TemporalType.TIMESTAMP)
	@LastModifiedDate
	private Date last_login;
	
	private String remarks;

	public String getAdid() {
		return adid;
	}

	public void setAdid(String adid) {
		this.adid = adid;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getCaption() {
		return caption;
	}

	public void setCaption(String caption) {
		this.caption = caption;
	}

	public byte[] getImage_id() {
		return image_id;
	}

	public void setImage_id(byte[] image_id) {
		this.image_id = image_id;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	public int getUser_status() {
		return user_status;
	}

	public void setUser_status(int user_status) {
		this.user_status = user_status;
	}

	public Date getLast_login() {
		return last_login;
	}

	public void setLast_login(Date last_login) {
		this.last_login = last_login;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	
}  
