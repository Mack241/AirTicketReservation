package com.mayukh.spring.CTSProject.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mayukh.spring.CTSProject.dao.BookingDao;
import com.mayukh.spring.CTSProject.entity.Booking;

@Service
public class BookingServiceImpl implements BookingService {

	@Autowired
	private BookingDao dao;

	@Override
	@Transactional
	public int create(Booking booking) {
		return dao.create(booking);
	}

	@Override
	public Booking show(int cusId) {
		return dao.read(cusId);
	}

	@Override
	public int delete(int cusId) {
		return dao.delete(cusId);
	}

}
