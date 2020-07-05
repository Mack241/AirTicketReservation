package com.mayukh.spring.CTSProject.dao;

import com.mayukh.spring.CTSProject.entity.Booking;

public interface BookingDao {

	//create a booking(User role)
	int create(Booking booking);
	
	//show a booking(User role)
	Booking read(int cusId);
	
	//delete a booking(User role)
	int delete(int cusId);
}
