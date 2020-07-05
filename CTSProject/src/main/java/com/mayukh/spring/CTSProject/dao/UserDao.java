package com.mayukh.spring.CTSProject.dao;

import com.mayukh.spring.CTSProject.entity.Login;
import com.mayukh.spring.CTSProject.entity.User;

public interface UserDao {
 
	int register(User user);
    
	//validate if user already exists in the database
	User validatorUser(Login login);
	
}
