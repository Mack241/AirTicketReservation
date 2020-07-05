package com.mayukh.spring.CTSProject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "flights")
public class Flights {
	
	@Id
	private int id;
	
	@Column(name = "Flight_Brand")
	private String flightBrand;
	
	@Column(name = "Flight_Number")
	private String flightNumber;
	
	@Column(name = "Source")
	private String source;
	
	@Column(name = "Destination")
	private String destination;
	
	@Column(name = "DOJ")
	private String date;
	
	@Column(name = "Price")
	private int price;
	
	@Column(name = "Seats")
	private int seats;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getSeats() {
		return seats;
	}

	public void setSeats(int seats) {
		this.seats = seats;
	}

	

	public String getFlightNumber() {
		return flightNumber;
	}

	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}

	@Override
	public String toString() {
		return "Flights [id=" + id + ", flightBrand=" + flightBrand + ", flightNumber=" + flightNumber + ", source="
				+ source + ", destination=" + destination + ", date=" + date + ", price=" + price + ", seats=" + seats
				+ "]";
	}

}
