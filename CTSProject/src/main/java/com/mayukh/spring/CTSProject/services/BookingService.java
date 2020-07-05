package com.mayukh.spring.CTSProject.services;

import com.mayukh.spring.CTSProject.entity.Booking;

public interface BookingService {

	int create(Booking booking);
	
	Booking show(int cusId);
	
	int delete(int cusId);
}
