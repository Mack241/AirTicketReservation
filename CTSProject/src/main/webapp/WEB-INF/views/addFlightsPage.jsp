<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Add Flights Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel = "stylesheet" href = "C:\Users\LAPPY\eclipse-workspace\CTSProject\src\main\resources\css\intro.css">
<script src="https://use.fontawesome.com/c9d8c4afe9.js"></script>
</head>
<body>
  <div id = "page-container">
				<nav class="navbar navbar-light p-3 mb-2 bg-info text-white">
				  <a class="navbar-brand" href="#">
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
				<h2 style="text-align: center; margin-top: 20px; margin-bottom: 30px">Add a Flight</h2>
				<div class = "container">
				 <form action = "addedFlights" method = "POST" id = "form">
				 <!--  <div class = "form-group">
				   <label for = "id">Id</label>
				   <input type = "text" class = "form-control" name = "id">
				  </div> -->
				  <div class = "form-group">
				   <label for = "flightBrand">Airlines</label>
				   <input type = "text" class = "form-control" name = "flightBrand">
				  </div>
				   <div class = "form-group">
				   <label for = "flightNumber">Add Flight Number</label>
				   <input type = "text" class = "form-control" name = "flightNumber">
				  </div>
				  <div class = "form-group">
				   <label for = "source">Source</label>
				   <input type = "text" class = "form-control" name = "source">
				  </div>
				  <div class = "form-group">
				   <label for = "destination">Destination</label>
				   <input type = "text" class = "form-control" name = "destination">
				  </div>
				  <div class = "form-group">
				   <label for = "date">Date of Journey</label>
				   <input type = "text" class = "form-control" name = "date" placeholder = "ddMMyyyy">
				  </div>
				  <div class = "form-group">
				   <label for = "price">Price</label>
				   <input type = "text" class = "form-control" name = "price">
				  </div>
				  <div class = "form-group">
				   <label for = "seats">Seats</label>
				   <input type = "text" class = "form-control" name = "seats">
				  </div>
				  <input type = "submit" class = "btn btn-primary" value = "Add" style="margin-bottom: 20px;">
				 </form>
				</div>
			
				</div>
			<footer id = "footer">&copy Copyright SkyHigh, 2020</footer>
		</div>


</body>
</html>