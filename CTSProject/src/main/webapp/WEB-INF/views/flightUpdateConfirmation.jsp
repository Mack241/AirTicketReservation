<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Update Confirmation</title>
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
				<div id = "content-wrap">
				    <div class="alert alert-success" role="alert">
   						${result}
					</div>
				</div>
			<footer id = "footer">&copy Copyright SkyHigh, 2020</footer>
		</div>
 
</body>
</html>