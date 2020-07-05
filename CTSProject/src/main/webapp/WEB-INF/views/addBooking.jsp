<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket Booking</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel = "stylesheet" href = "C:\Users\LAPPY\eclipse-workspace\CTSProject\src\main\resources\css\intro.css">
<script src="https://use.fontawesome.com/c9d8c4afe9.js"></script>
</head>
<body>

			<div id = "page-container">
				<nav class="navbar navbar-light p-3 mb-2 bg-info text-white">
				  <a class="navbar-brand" href="home">
				  <i class="fa fa-paper-plane-o" aria-hidden="true"></i>
				    SkyHigh
				  </a>
				  <ul class="nav justify-content-end">
					  <li class="nav-item">
					    <a class="nav-link" href="home">Home</a>
					  </li>
				</ul>
				</nav>
				
				<div id = "content-wrap">
				
				<div style="margin-top: 20px; margin-bottom: 20px; color: green; text-align: center;" >				
				  <b>${result},${cusId}</b>
				</div>
				 <h2 id = "header">Book Flight Travel</h2>
				
					<div class = "container" id = "formdiv">
					   <form action = "completedBooking" method = "POST" id = "form">
						<!--  <div class = "form-group">
						  <label for = "id">ID</label>
						  <input type = "text" class = "form-control" name = "id">
						 </div> -->
						 <div class = "form-group">
						  <label for = "cusId">Customer/Booking ID</label>
						  <input type = "text" class = "form-control" name = "cusId" value = "${random}">
						  <span style="margin-top: 5px;">(Do not edit this field.)</span>
						 </div>
						 <div class = "form-group">
						  <label for = "cusNamw">Customer Name</label>
						  <input type = "text" class = "form-control" name = "cusName" >
						 </div>
						 <div class = "form-group">
						  <label for = "cusEmail">Customer Email</label>
						  <input type = "text" class = "form-control" name = "cusEmail">  
						 </div>
						  <div class = "form-group">
						  <label for = "cusNumber">Customer Number</label>
						  <input type = "text" class = "form-control" name = "cusNumber">  
						 </div>
						  <div class = "form-group">
						  <label for = "flightBrand">Flight</label>
						  <input type = "text" class = "form-control" name = "flightBrand">  
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
						  <input type = "text" class = "form-control" name = "date" placeholder="ddMMyyyy">  
						 </div>
						  <div class = "form-group">
						  <label for = "time">Time of Journey</label>
						  <input type = "text" class = "form-control" name = "time">  
						 </div>
						  <!-- <div class = "form-group">
						  <label for = "price">Price</label>
						  <input type = "text" class = "form-control" name = "price">  
						 </div> -->
					 
					 	<input type = "submit" class = "btn btn-primary" id = "bookflight" value = "Proceed to Pay" style="margin-top: 10px;">
					 
					</form>
					   
				</div>
				
			</div>			
			 	<footer id = "footer">&copy Copyright SkyHigh, 2020</footer>
		</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>