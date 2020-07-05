package com.mayukh.spring.CTSProject.dao;

import java.util.List;

import com.mayukh.spring.CTSProject.entity.Booking;
import com.mayukh.spring.CTSProject.entity.Flights;

public interface AdminDao {
    
	//show the list of flights in Show Entries page
	List<Flights> showFlights();
	
	//Update Flight details (Admin role)
	int update(Flights flights);
	
	//Delete a Flight (Admin role)
	int delete(int id);
	
	//Show customer bookings on admin dashboard
	List<Booking> showBookings();
	
}
