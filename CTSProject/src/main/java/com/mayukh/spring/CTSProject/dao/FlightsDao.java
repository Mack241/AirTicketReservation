package com.mayukh.spring.CTSProject.dao;

import java.util.List;

import com.mayukh.spring.CTSProject.entity.Flights;

public interface FlightsDao {

	//add a flight detail(Admin role)
	int create(Flights flights);
	
	//List all available flights based on user search params.
	List<Flights> readflights(String source, String destination, String date);
}
