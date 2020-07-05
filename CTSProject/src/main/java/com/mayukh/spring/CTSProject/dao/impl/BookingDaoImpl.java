package com.mayukh.spring.CTSProject.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.mayukh.spring.CTSProject.dao.BookingDao;
import com.mayukh.spring.CTSProject.dao.rowmapper.BookingRowMapper;
import com.mayukh.spring.CTSProject.entity.Booking;

@Repository
public class BookingDaoImpl implements BookingDao {

	@Autowired
	HibernateTemplate hibernateTemplate;

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public int create(Booking booking) {
		Integer result = (Integer) hibernateTemplate.save(booking);
		return result;
	}

	@Override
	public Booking read(int cusId) {
		String sql = "select * from Bookings where Customer_Id=?";
		BookingRowMapper rowMapper = new BookingRowMapper();
		Booking booking = jdbcTemplate.queryForObject(sql, rowMapper, cusId);
		return booking;
	}

	@Override
	public int delete(int cusId) {
		String sql = "delete from Bookings where Customer_Id=?";
		int update = jdbcTemplate.update(sql, cusId);
		return update;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

}
