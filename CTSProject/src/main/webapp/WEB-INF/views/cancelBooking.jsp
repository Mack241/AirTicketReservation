<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cancel Booking</title>
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
		    <a class="nav-link" href="#">Home</a>
		  </li>
	</ul>
	</nav>
	<div id = "content-wrap">
	 	 <div class = "container"  id = "formdiv">
		 	 <h3 style="margin-top: 30px; margin-bottom: 30px;">Cancel Booking</h3>
		 	  <form action = "bookingDeleted" method = "POST">
			 	  <div class = "form-group">
			 	  <input type = "text" class = "form-control" name = "cusId" placeholder="Customer Id">
			 	  </div>
			 	  <input type = "submit" class = "btn btn-primary" value = "Cancel Booking">
		 	 </form>
	 	 </div>
	 	 <div style="color: green; margin-top: 20px; margin-bottom: 20px; text-align: center;">
              <b>${delete}</b> 
	 	 </div>
	</div>
	<footer id = "footer">&copy Copyright SkyHigh, 2020</footer>
   </div>
</body>
</html>