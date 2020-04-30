package com.act.tms.util;

import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Connection;

public class DbTest {

	public static void main(String args[]){  
		
			//		Testing Database connection and Retrieve data from the database
		
		try{  
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms?useTimezone=true&serverTimezone=UTC","root","Bhanu9157");  
			//here sonoo is database name, root is username and password  
			Statement stmt= (Statement) con.createStatement();  
			ResultSet rs=((java.sql.Statement) stmt).executeQuery("select * from users");  
			while(rs.next())  
				System.out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
				con.close();  
		}catch(Exception e){ System.out.println(e);}  
	}  
}  