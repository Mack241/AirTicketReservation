package com.mayukh.spring.CTSProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mayukh.spring.CTSProject.entity.Flights;
import com.mayukh.spring.CTSProject.services.FlightsService;

@Controller
public class FlightsController {

	@Autowired
	private FlightsService service;
	
	@RequestMapping("addFlights")
	public String showRegistrationPage() {
		return "addFlightsPage";
	}
	
	//add flights(Admin Role)
	@RequestMapping(value = "addedFlights", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute("flights")Flights flights, ModelMap model) {
		int result = service.save(flights);
		model.addAttribute("result", "Flight Added Successfully");
		return "addFlightsConfirmation";
	}

	public FlightsService getService() {
		return service;
	}

	public void setService(FlightsService service) {
		this.service = service;
	}
}
