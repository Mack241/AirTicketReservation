<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking ID</title>
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
				   <h2 style="text-align: center; margin-top: 20px; margin-bottom: 30px;">Enter your Customer ID</h2>
				
				    <div class = "container" id = "formdiv">
				      <form id="loginForm"  action="myBookings" method="post">
					      <div class = "form-group">
					          <input type = "text" class = "form-control" name = "cusId" >
					      </div>
					      <input type = "submit" class = "btn btn-primary" id = "bookflight" value = "Retrieve Booking">
				      </form>
				    </div>
				</div>
			<footer id = "footer">&copy Copyright SkyHigh, 2020</footer>
		</div>
  
  <!--  <form action = "myBookings" method = "POST">
    Enter your Customer ID:<input type = "text" name = "cusId">
    <input type = "submit" value = "Retrieve Booking">
   </form> -->

</body>
</html>