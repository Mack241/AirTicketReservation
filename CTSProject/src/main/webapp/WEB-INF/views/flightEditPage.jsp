<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Flight Details</title>
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
				</nav>
				<div id = "content-wrap" >
				   <h2 style="text-align: center; margin-top: 20px; margin-bottom: 30px;">Edit Flight Details</h2>
				
				    <div class = "container" id = "formdiv">
				      <form id="form"  action="updatedFlight" method="post">
<!-- 					      <div class = "form-group">
					         <label for = "id">Id</label>
					          <input type = "text" class = "form-control" name = "id">
					      </div>
 -->					       <div class = "form-group">
					         <label for = "flightBrand">Airline</label>
					          <input type = "text" class = "form-control" name = "flightBrand">
					      </div>
					      <div class = "form-group">
					         <label for = "flightNumber">Airline Number</label>
					          <input type = "text" class = "form-control" name = "flightNumber">
					      </div>
					       <div class = "form-group">
					         <label for = "source">Source</label>
					          <input type = "text" class = "form-control" name = "source">
					      </div>
					       <div class = "form-group">
					         <label for = "destination">Destination</label>
					          <input type = "text" class = "form-control" name = "desttionina">
					      </div>
					       <div class = "form-group">
					         <label for = "date">Date of Journey</label>
					          <input type = "text" class = "form-control" name = "date" placeholder = "ddMMyyy">
					      </div>
					       <div class = "form-group">
					         <label for = "price">Price</label>
					          <input type = "text" class = "form-control" name = "price">
					      </div>
					       <div class = "form-group">
					         <label for = "seats">Seats</label>
					          <input type = "text" class = "form-control" name = "seats">
					      </div>
					      <input type = "submit" class = "btn btn-primary" id = "bookflight" value = "Update" style="margin-top: 10px;">
				      </form>
				    </div>
				</div>
			<footer id = "footer">&copy Copyright SkyHigh, 2020</footer>
		</div>

<!-- 	<form action="updatedFlight" method="POST">

		<pre>
Id: <input type="number" name="id" id="id""/><span id="errMsg"></span>
Flight Brand: <input type="text" name="flightBrand"/>
Source: <input type="text" name="source"/>
Destination: <input type="text" name="destination"/>
Date of Journey: <input type="text" name="date"/>
Price: <input type="text" name="price"/>
Seats: <input type="number" name="seats"/>


<input type="submit" name="Update" />
</pre>

	</form> -->
</body>
</html>