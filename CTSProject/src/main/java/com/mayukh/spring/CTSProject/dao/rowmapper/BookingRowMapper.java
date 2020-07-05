package com.mayukh.spring.CTSProject.dao.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.mayukh.spring.CTSProject.entity.Booking;

public class BookingRowMapper implements RowMapper<Booking> {

	@Override
	public Booking mapRow(ResultSet rs, int rowNum) throws SQLException {
        
		Booking booking = new Booking();
		
		booking.setId(rs.getInt(1));
		booking.setCusId(rs.getInt(2));
		booking.setCusName(rs.getString(3));
		booking.setCusEmail(rs.getString(4));
		booking.setCusNumber(rs.getString(5));
		booking.setFlightBrand(rs.getString(6));
		booking.setSource(rs.getString(7));
		booking.setDestination(rs.getString(8));
		booking.setDate(rs.getString(9));
		booking.setTime(rs.getString(10));
		
		return booking;
	}

}
