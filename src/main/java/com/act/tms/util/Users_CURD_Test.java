package com.act.tms.util;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class Users_CURD_Test {
	
	public static void main(String args[]){ 
	
								//	Database connectivity Test 
	try{  
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms?useTimezone=true&serverTimezone=UTC","root","Bhanu9157");  
	  
		if (con != null) {
			System.out.println("Connected to database.");
			con.close();
		}
	
	}catch(Exception e){ System.out.println(e);}  
	
								//	Insert Data into Database Test
	
//	String adid = "bpasup05";
//    String first_name = "BhanuPrakash";
//    String last_name = "Pasupuleti";
//    String password = "Password05";
//    String email_id = "bhanu@aranyacloudtek.com";
//    String caption = null;
//    String image_id = null;
//    String mobile = "7890123456";
//    String country = "USA";
//    String user_type = "admin";
//    int user_status = 1;
//    Date last_login = null;
//    String remarks = "";
//	
//	try{  
//		Class.forName("com.mysql.cj.jdbc.Driver");  
//		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms?useTimezone=true&serverTimezone=UTC","root","Bhanu9157");  
//	  
//		String sql = "INSERT INTO users (adid, first_name, last_name, password, email_id, caption, image_id, mobile, country, user_type, user_status, last_login, remarks)"
//				+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";	
//			
//		PreparedStatement statement =con.prepareStatement(sql);
//		statement.setString(1, adid);
//		statement.setString(2, first_name);
//		statement.setString(3, last_name);
//		statement.setString(4, password);
//		statement.setString(5, email_id);
//		statement.setString(6, caption);
//		statement.setString(7, image_id);
//		statement.setString(8, mobile);
//		statement.setString(9, country);
//		statement.setString(10, user_type);
//		statement.setInt(11, user_status);
//		statement.setDate(12, last_login);
//		statement.setString(13, remarks);
//		
//				
//		int rows = statement.executeUpdate();
//		
//		if (rows > 0) {
//			System.out.println("New user has been inserted SUCCESSFULLY!!");
//		}
//		
//		con.close();
//	
//	}catch(Exception e){ System.out.println(e);}  
	
								//	Update data in the database
	
//	try{  
//		Class.forName("com.mysql.cj.jdbc.Driver");  
//		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms?useTimezone=true&serverTimezone=UTC","root","Bhanu9157");  
//	  
//		String sql = "UPDATE users SET password='Newpassword01' WHERE adid='bpasup05'";
//			
//		Statement statement =con.createStatement();
//		
//		int rows = statement.executeUpdate(sql);
//		
//		if (rows > 0) {
//			System.out.println("The users password has been updated.");
//		}
//		
//		con.close();
//	
//	}catch(Exception e){ System.out.println(e);} 
	
								//	Delete data from the database
	
		String adid = "bpasup03";
		
		try{  
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms?useTimezone=true&serverTimezone=UTC","root","Bhanu9157");  
		  
//			String sql = "DELETE FROM users WHERE adid=?";  //Delete the whole user information.
			String sql = "UPDATE users SET user_status = 0 WHERE adid=?";
				
			PreparedStatement statement =con.prepareStatement(sql);
			statement.setString(1, adid);
			
			int rows = statement.executeUpdate();
			
			if (rows > 0) {
				System.out.println("The users information has been disabled.");
			}
			
			con.close();
		
		}catch(Exception e){ System.out.println(e);}		
		
	
	
}  

}
