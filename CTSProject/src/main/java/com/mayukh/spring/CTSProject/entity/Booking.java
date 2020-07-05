package com.mayukh.spring.CTSProject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Table(name = "Bookings")
@Entity
public class Booking {

	@Id
	private int id;
	
	@Column(name = "Customer_Id")
	private int cusId;
	
	@Column(name = "Customer_Name")
	private String cusName;
	
	@Column(name = "Customer_Email")
	private String cusEmail;
	
	@Column(name = "Customer_Number")
	private String cusNumber;
	
	@Column(name = "Flight_Brand")
	private String flightBrand;
	
	@Column(name = "Source")
	private String source;
	
	@Column(name = "Destination")
	private String destination;
	
	@Column(name = "DOJ")
	private String date;
	
	@Column(name = "Time")
	private String time;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCusId() {
		return cusId;
	}

	public void setCusId(int cusId) {
		this.cusId = cusId;
	}

	public String getCusName() {
		return cusName;
	}

	public void setCusName(String cusName) {
		this.cusName = cusName;
	}

	public String getCusEmail() {
		return cusEmail;
	}

	public void setCusEmail(String cusEmail) {
		this.cusEmail = cusEmail;
	}

	public String getCusNumber() {
		return cusNumber;
	}

	public void setCusNumber(String cusNumber) {
		this.cusNumber = cusNumber;
	}

	public String getFlightBrand() {
		return flightBrand;
	}

	public void setFlightBrand(String flightBrand) {
		this.flightBrand = flightBrand;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

}

