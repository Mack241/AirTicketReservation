package com.mayukh.spring.CTSProject.services;

import java.util.List;

import com.mayukh.spring.CTSProject.entity.Booking;
import com.mayukh.spring.CTSProject.entity.Flights;

public interface AdminService {

	List<Flights> getFlights();
	
	int update(Flights flights);
	
	int delete(int id);
	
	List<Booking> showBookings();
}
