package com.shelly.springMVC_Hibernate.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class TestConnection {

	public static void main(String[] args) {
		Connection conn;
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://rds-myql.cakbjwgvat7y.us-east-1.rds.amazonaws.com:3306/hibspring","admin","default1");
			//here sonoo is database name, root is username and password  
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select * from feedback");  
			while(rs.next())  
			System.out.println(rs.getString(1));  
			con.close();  
			}catch(Exception e){ System.out.println(e);}  
			}  
		// TODO Auto-generated method stub

	}

