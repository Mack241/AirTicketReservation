package com.mayukh.spring.CTSProject.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.mayukh.spring.CTSProject.dao.FlightsDao;
import com.mayukh.spring.CTSProject.dao.rowmapper.FlightsRowMapper;
import com.mayukh.spring.CTSProject.entity.Flights;

@Repository
public class FlightsDaoImpl implements FlightsDao {

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public int create(Flights flights) {
		Integer result = (Integer) hibernateTemplate.save(flights);
		return result;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List<Flights> readflights(String source, String destination, String date) {
        String sql = "select * from flights where Source=? AND Destination=? AND DOJ=?";
        FlightsRowMapper rowMapper = new FlightsRowMapper();
        List<Flights> list = jdbcTemplate.query(sql, rowMapper, source, destination, date);
		return list;
	}


	

}
