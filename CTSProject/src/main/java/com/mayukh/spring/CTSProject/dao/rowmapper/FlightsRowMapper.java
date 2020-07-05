package com.mayukh.spring.CTSProject.dao.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.mayukh.spring.CTSProject.entity.Flights;

public class FlightsRowMapper implements RowMapper<Flights> {

	@Override
	public Flights mapRow(ResultSet rs, int rowNum) throws SQLException {
		Flights flights = new Flights();

		flights.setFlightBrand(rs.getString("Flight_Brand"));
		flights.setSource(rs.getString("Source"));
		flights.setDestination(rs.getString("Destination"));
		flights.setDate(rs.getString("DOJ"));
		flights.setPrice(rs.getInt("Price"));
		flights.setFlightNumber(rs.getString("Flight_Number"));
		return flights;
	}

}
