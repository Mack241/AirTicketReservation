<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
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
		  <li class="nav-item">
		    <a class="nav-link" href="addBooking">Book a Flight</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="showBookingId" >My Bookings</a>
		  </li>
	</ul>
	</nav>
	<div id = "content-wrap">
	 	 <h2 style="text-align: center; margin-top: 50px;">Welcome ${firstname}</h2>
	 	 
	 	 <div class = "container"  id = "formdiv">
		 	 <h3 style="margin-top: 30px; margin-bottom: 30px;">Search a Flight</h3>
		 	  <form action = "search" method = "POST">
			 	  <div class = "form-group">
			 	  <input type = "text" name = "source" class = "form-control" placeholder="Source">
			 	  </div>
			 	  <div class = "form-group">
			 	  <input type = "text" name = "destination" class = "form-control" placeholder="Destination">
			 	  </div>
			 	  <div class = "form-group">
			 	  <input type = "text" name = "date" class = "form-control" placeholder="Date of Journey">
			 	  </div>
			 	  <input type = "submit" class = "btn btn-primary" value = "Search">
		 	 </form>
	 	 <table class = "table" style="margin-top: 30px;">
	 	 <thead class = "thead-dark">
	 	  <tr>
	 	   <th>Airlines</th>
	 	   <th>Airline Number</th>
	 	   <th>Source</th>
	 	   <th>Destination</th>
	 	   <th>Price</th>
	 	  </tr>
	 	 </thead>
	 	 <tbody>
	 	  <!--  <tr>
	 	      <td>showFlights.flightBrand</td>
	 	      <td>showFlights.source</td>
	 	      <td>showFlights.destination</td>
	 	      <td>showFlights.date</td>
	 	      <td>showFlights.price</td>
	 	    </tr> -->
	 	    
	 	     <c:forEach items = "${show}" var = "show">
	 	     <tr>
		 	      <td>${show.flightBrand}</td>
		 	      <td>${show.flightNumber}</td>
		 	      <td>${show.source}</td>
		 	      <td>${show.destination}</td>
		 	      <td>${show.price}</td>
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