package com.belljava.dao;

import org.springframework.stereotype.Component;

@Component
public interface LoginDAO {

	String processLogin(String user, String pass);
	
	

}
