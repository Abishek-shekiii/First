package com.abishek.action;

import com.abishek.user.User;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{
	private String fname;
	private String lname;
	private String email;
	private String psword;
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPsword() {
		return psword;
	}
	public void setPsword(String psword) {
		this.psword = psword;
	}
	
	public String execute() throws Exception {
		int rec = User.register(this);
		if(rec>0) 
		{
			return SUCCESS;
		}
		else {
			return ERROR;
		}
	}
}
