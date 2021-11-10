package com.abishek.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.abishek.action.RegisterAction;

public class User 
{
	public static Connection con;
	public static Connection connection() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3307/struts2webapp","root","");
		
		return con;
	}
	
	public static int register(RegisterAction ra) {
		int flag=0;
		try {
			PreparedStatement pst = connection().prepareStatement("INSERT INTO login_table(fname,lname,email,psword) values(?,?,?,?)");
			pst.setString(1, ra.getFname());
			pst.setString(2, ra.getLname());
			pst.setString(3, ra.getEmail());
			pst.setString(4, ra.getPsword());
			flag = pst.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return flag;
	}
}
