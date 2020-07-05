package com.mayukh.spring.CTSProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;

import com.mayukh.spring.CTSProject.entity.Booking;
import com.mayukh.spring.CTSProject.entity.Flights;
import com.mayukh.spring.CTSProject.entity.User;
import com.mayukh.spring.CTSProject.services.AdminService;

@Controller
public class AdminController {

	@Autowired
	AdminService service;

	  //Show the flights database in the admin dashboard
	  @RequestMapping("showEntries") public String adminDashboard(ModelMap model) {
	  List<Flights> flights = service.getFlights();
	  
	  model.addAttribute("flights", flights);
	  
	  return "showEntries"; }
	 
	
	@RequestMapping("showFlights")
	public String showCustomerBookings(ModelMap model) {
		List<Booking> bookings = service.showBookings();
		
		model.addAttribute("bookings", bookings);
		
		return "adminDashboard";
	}
	
	//edit the flight details 
	@RequestMapping("editDetails")
	public String editFlightDetails(ModelMap model) {
		List<Flights> flights = service.getFlights();
		
		model.addAttribute("flight", flights);
		
		return "flightEditPage";
	}
	
	@RequestMapping(value = "updatedFlight", method = RequestMethod.POST)
	public String updatedFlight(@ModelAttribute("flight") Flights flight, ModelMap model ) {
		
		int result = service.update(flight);
		
		model.addAttribute("result", "Flight updated successfully ");
		
		return "flightUpdateConfirmation";
	}
	
	//delete flight entries
	@RequestMapping(value = "deleteFlight", method = RequestMethod.GET)
	public String deleteFlights(ModelMap model) {
		return "deleteFlightPage";
	}
	
	@RequestMapping(value = "deletedFlight", method = RequestMethod.POST)
	public String deletedFlight(@ModelAttribute("flight") Flights flight, ModelMap model) {
		int result = service.delete(flight.getId());
		
		model.addAttribute("result", "Flight Deleted Successfully");
		
		return "deleteFlightPage";
	}
	
	/*
	 * @RequestMapping(value = "home") public String homePage() { return
	 * "adminDashboard"; }
	 */
}
