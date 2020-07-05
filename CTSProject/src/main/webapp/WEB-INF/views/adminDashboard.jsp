<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel = "stylesheet" href = "C:\Users\LAPPY\eclipse-workspace\CTSProject\src\main\resources\css\intro.css">
<script src="https://use.fontawesome.com/c9d8c4afe9.js"></script>
</head>
<body>

  <div id = "page-container">
				<nav class="navbar navbar-light p-3 mb-2 bg-info text-white">
				  <a class="navbar-brand" href="home">
				  <i class="fa fa-paper-plane-o" aria-hidden="true"></i> SkyHigh
				  </a>
				  <ul class="nav justify-content-end">
					  <li class="nav-item">
					    <a class="nav-link" href="showEntries">Show Entries</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="editDetails">Edit Entries</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="deleteFlight">Delete Entries</a>
					  </li>
					   <li class="nav-item">
					    <a class="nav-link" href="addFlights">Add Entries</a>
					  </li>
				  </ul>
				</nav>
				<div id = "content-wrap">
				<h2 style="text-align: center; margin-top: 20px; margin-bottom: 30px">Welcome ${firstname} (Admin)</h2>
				<div class = "container">
				   <table class = "table">
						<thead class = "thead-dark">
						<tr>
						 <th>Customer Id</th>
						 <th>Customer Name</th>
						 <th>Customer Email</th>
						 <th>Customer Number</th>
						 <th>Airline Booked</th>
						 <th>Source</th>
						 <th>Destination</th>
						 <th>Date of Journey</th>
						 <th>Time</th>
						</tr>
						</thead>
							<tbody>
								<c:forEach items="${bookings}" var="bookings">
									<tr>
									  <td> ${bookings.cusId}</td>
									  <td>${bookings.cusName}</td>
									  <td> ${bookings.cusEmail}</td>
									  <td>${bookings.cusNumber}</td>
									  <td> ${bookings.flightBrand}</td>
									  <td> ${bookings.source}</td>
									  <td> ${bookings.destination}</td>
									  <td> ${bookings.date}</td>
									  <td> ${bookings.time}</td>
									</tr>
				   			 </c:forEach>
						</tbody>
					</table>
				</div>
			
				</div>
			<footer id = "footer">&copy Copyright SkyHigh, 2020</footer>
		</div>
	
</body>
</html>