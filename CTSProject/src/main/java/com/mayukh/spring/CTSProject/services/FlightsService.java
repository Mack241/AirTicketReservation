package com.mayukh.spring.CTSProject.services;

import java.util.List;

import com.mayukh.spring.CTSProject.entity.Flights;

public interface FlightsService {

	int save(Flights flights);
	
	List<Flights> showFlights(String source, String destination, String date);
	
}
