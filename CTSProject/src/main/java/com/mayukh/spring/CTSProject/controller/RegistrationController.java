package com.mayukh.spring.CTSProject.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mayukh.spring.CTSProject.entity.User;
import com.mayukh.spring.CTSProject.services.UserService;

@Controller
public class RegistrationController {

	@Autowired
	public UserService service;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new User());

		return mav;
	}

	//register along with user and admin use case
	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User user) {
		if(user.getEmail().equalsIgnoreCase("admin@admin.com")) {
			return new ModelAndView("adminDashboard", "firstname", user.getFname());
		}
         System.out.println(user.getId());
         System.out.println(user.getFname());
         System.out.println(user.getLname());
         System.out.println(user.getEmail());
         System.out.println(user.getPassword());
		service.register(user);

		return new ModelAndView("welcome", "firstname", user.getFname());
	}

}
