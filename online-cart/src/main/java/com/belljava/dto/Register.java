package com.belljava.dto;

import org.springframework.stereotype.Component;

@Component
public class Register {
  
	private String email;
	private String password;
	private String firstname;
	private String lastname;
	private String userRole;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	@Override
	public String toString() {
		return "Register [email=" + email + ", password=" + password + ", firstname=" + firstname + ", lastname="
				+ lastname + ", userRole=" + userRole + ", getEmail()=" + getEmail() + ", getPassword()="
				+ getPassword() + ", getFirstname()=" + getFirstname() + ", getLastname()=" + getLastname()
				+ ", getUserRole()=" + getUserRole() + "]";
	}
	
	
	
}
