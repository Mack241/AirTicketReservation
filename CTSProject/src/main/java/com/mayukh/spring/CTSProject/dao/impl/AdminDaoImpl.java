package com.mayukh.spring.CTSProject.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.mayukh.spring.CTSProject.dao.AdminDao;
import com.mayukh.spring.CTSProject.entity.Booking;
import com.mayukh.spring.CTSProject.entity.Flights;

@Repository
public class AdminDaoImpl implements AdminDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public List<Flights> showFlights() {
		return hibernateTemplate.loadAll(Flights.class);
	}

	@Override
	public int update(Flights flights) {
		String sql = "update flights set Flight_Brand=?, Source=?, Destination=?, DOJ=?, Price=?, Seats=? where Flight_Number=?";
		int update = jdbcTemplate.update(sql, flights.getFlightBrand(), flights.getSource(), flights.getDestination(),
				flights.getDate(), flights.getPrice(), flights.getSeats(), flights.getFlightNumber());
		return update;
	}

	@Override
	public int delete(int id) {
		String sql = "delete from flights where id=?";
		int delete = jdbcTemplate.update(sql, id);
		return delete;
	}

	@Override
	public List<Booking> showBookings() {
		return hibernateTemplate.loadAll(Booking.class);
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}


}
