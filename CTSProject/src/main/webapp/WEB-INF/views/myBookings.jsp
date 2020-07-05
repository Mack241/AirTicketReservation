<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Bookings</title>
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
		    <a class="nav-link" href="home">Home</a>
		  </li>
	</ul>
	</nav>
	<div id = "content-wrap">
	 	 <div class = "container"  id = "formdiv">
		 	 <h3 style="margin-top: 30px; margin-bottom: 30px; text-align: center;">Your Booking</h3>
		 	 
		 	 <div class="card">
				  <h5 class="card-header">  Customer ID: ${show.cusId}</h5>
				  <div class="card-body">
				    <h5 class="card-title">Customer Name: ${show.cusName}</h5>
				    <p class="card-text">Customer Email: ${show.cusEmail}</p>
				    <p class="card-text">  Flight: ${show.flightBrand}</p>
				    <p class="card-text">Source: ${show.source}</p>
				    <p class="card-text"> Destination: ${show.destination}</p>
				    <p class="card-text">Date of Journey: ${show.date}</p>
				    <p class="card-text">Time of Journey: ${show.time}</p>
				    <a href="cancelBooking" class="btn btn-primary">Cancel Booking</a>
  			</div>
			</div>
	 	 </div>
	 	 
	</div>
	<footer id = "footer">&copy Copyright SkyHigh, 2020</footer>
   </div>

<%--   Customer ID: ${show.cusId}
  Customer Name: ${show.cusName}
  Customer Email: ${show.cusEmail}
  Flight: ${show.flightBrand}
  Source: ${show.source}
  Destination: ${show.destination}
  Date of Journey: ${show.date}
  Time of Journey: ${show.time}
  
  <a href = "cancelBooking">Cancel Booking</a> --%>
  

</body>
</html>