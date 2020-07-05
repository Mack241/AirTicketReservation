package com.mayukh.spring.CTSProject.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mayukh.spring.CTSProject.dao.UserDao;
import com.mayukh.spring.CTSProject.entity.Login;
import com.mayukh.spring.CTSProject.entity.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	public UserDao dao;

	@Override
	@Transactional
	public int register(User user) {
		return dao.register(user);
	}

	@Override
	@Transactional
	public User validateUser(Login login) {
		return dao.validatorUser(login);
	}

}
