package com.mayukh.spring.CTSProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mayukh.spring.CTSProject.entity.Booking;
import com.mayukh.spring.CTSProject.entity.Flights;
import com.mayukh.spring.CTSProject.services.BookingService;
import com.mayukh.spring.CTSProject.services.CrunchifyEmailAPI;
import com.mayukh.spring.CTSProject.services.FlightsService;

@Controller
public class CustomerController {
	
	@Autowired
	private BookingService service;
	
	@Autowired
	private FlightsService flightService;
	
	@Autowired
	private CrunchifyEmailAPI emailService;
	
	//book a flight GET page
	@RequestMapping(value = "addBooking")
	public String createBooking(@ModelAttribute("flights") Flights flights, ModelMap model) {
		int min = 1000, max = 9999;
		int random = (int) (Math.random() * (max - min + 1) + min);
		model.addAttribute("random", random);
		return "addBooking";
	}
	
	//flight booking done and email sent successfully
	@RequestMapping(value = "completedBooking", method = RequestMethod.POST)
	public String addedBooking(@ModelAttribute("booking") Booking booking, ModelMap model) {
		
		  int result = getService().create(booking); int cusId = booking.getCusId();
		  model.addAttribute("result", "Booking done successfully");
		  model.addAttribute("cusId", "Your Customer Booking Id is: " + cusId);
		  
		  String fromAddress = "mayukhdasgupta18@gmail.com"; String subject =
		  "Booking Confirmation"; String msgBody = "Hello " + booking.getCusName() +
		  ",\n" + "Your booking from SkyHigh has been confirmed. Your Booking ID is " +
		  cusId + "\n" + "Enjoy your journey,\nSkyHigh Team";
		  
		  emailService.crunchifyReadyToSendEmail(booking.getCusEmail(), fromAddress,
		  subject, msgBody);
		 
		return "addBooking";
	}
	
	/*
	 * @RequestMapping(value = "paymentCompleted", method = RequestMethod.POST)
	 * public String payment(@ModelAttribute("booking") Booking booking, ModelMap
	 * model) {
	 * 
	 * return ""; }
	 */
	
	//show Customer booking GET page
	@RequestMapping("showBookingId")
	public String showBookingId() {
		return "myBookingIDPage";
	}
	
	@RequestMapping(value = "myBookings", method = RequestMethod.POST )
	public String showBookings(@ModelAttribute("booking") Booking booking, ModelMap model) {
		Booking show = service.show(booking.getCusId());
		model.addAttribute("show", show);
		return "myBookings";
	}
	
	//cancel booking GET page
	@RequestMapping(value = "cancelBooking")
	public String cancelBooking() {
		return "cancelBooking";
	}
	
	@RequestMapping(value = "bookingDeleted", method = RequestMethod.POST)
 	public String cancelledBooking(@ModelAttribute("booking") Booking booking, ModelMap model) {
		int delete = service.delete(booking.getCusId());
		model.addAttribute("delete", "Booking Cancelled Successfully");
		return "cancelBooking";
	}
	
	@RequestMapping(value = "home")
	public String homePage() {
		return "welcome";
	}
	
	  //Search for flights based on source, destination and date
	  @RequestMapping(value = "search", method = RequestMethod.POST) public String
	  showAvailFlights(@ModelAttribute("flights") Flights flights, ModelMap model)
	  {
	    List<Flights> show = flightService.showFlights(flights.getSource(), flights.getDestination(), flights.getDate());
	    
	    //System.out.println(show.getFlightNumber());
	  
	    model.addAttribute("show", show);
	  
	  return "welcome"; }
	 
	public BookingService getService() {
		return service;
	}

	public void setService(BookingService service) {
		this.service = service;
	}

}
