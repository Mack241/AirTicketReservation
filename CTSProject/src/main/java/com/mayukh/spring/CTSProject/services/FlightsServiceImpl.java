package com.mayukh.spring.CTSProject.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mayukh.spring.CTSProject.dao.FlightsDao;
import com.mayukh.spring.CTSProject.entity.Flights;

@Service
public class FlightsServiceImpl implements FlightsService {

	@Autowired
	private FlightsDao dao;

	public FlightsDao getDao() {
		return dao;
	}

	public void setDao(FlightsDao dao) {
		this.dao = dao;
	}

	@Override
	@Transactional
	public int save(Flights flights) {
		return dao.create(flights);
	}

	@Override
	public List<Flights> showFlights(String source, String destination, String date) {
		return dao.readflights(source, destination, date);
	}
	

}
