package com.mayukh.spring.CTSProject.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.mayukh.spring.CTSProject.dao.AdminDao;
import com.mayukh.spring.CTSProject.entity.Booking;
import com.mayukh.spring.CTSProject.entity.Flights;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDao dao;

	@Override
	public List<Flights> getFlights() {
		return dao.showFlights();
	}

	public AdminDao getDao() {
		return dao;
	}

	public void setDao(AdminDao dao) {
		this.dao = dao;
	}

	@Override
	public int update(Flights flights) {
		return dao.update(flights);
	}

	@Override
	public int delete(int id) {
		return dao.delete(id);
	}

	@Override
	public List<Booking> showBookings() {
		return dao.showBookings();
	}

	
	
}
