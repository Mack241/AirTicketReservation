<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Entry</title>
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
				   <h2 style="text-align: center; margin-top: 20px; margin-bottom: 30px;">Delete Flight</h2>
				
				    <div class = "container" id = "formdiv">
				      <form id="loginForm"  action="deletedFlight" method="post">
					      <div class = "form-group">
					         <label for = "id">Entry Id</label>
					          <input type = "text" class = "form-control" name = "id">
					      </div>
					      <input type = "submit" class = "btn btn-primary" id = "bookflight" value = "Delete">
				      </form>
				    </div>
				    <div id = "content-wrap">
				    <div style="margin-top: 40px; color: green; text-align: center;">
   						<b>${result}</b>
					</div>
				</div>
				</div>
			<footer id = "footer">&copy Copyright SkyHigh, 2020</footer>
		</div>

 <!--  <form action = "deletedFlight" method = "POST">
   ID:<input type = "text" name = "id" id= "id">
   
   <input type = "submit" value = "Delete">
  </form> -->


</body>
</html>