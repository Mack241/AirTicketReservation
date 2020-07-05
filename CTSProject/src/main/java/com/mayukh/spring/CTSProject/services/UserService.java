package com.mayukh.spring.CTSProject.services;

import com.mayukh.spring.CTSProject.entity.Login;
import com.mayukh.spring.CTSProject.entity.User;

public interface UserService {

	int register(User user);
	
	User validateUser(Login login);
}
