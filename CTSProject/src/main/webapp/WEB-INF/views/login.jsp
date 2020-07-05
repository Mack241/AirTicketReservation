<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel = "stylesheet" href = "C:\Users\LAPPY\eclipse-workspace\CTSProject\src\main\resources\css\intro.css">
<script src="https://use.fontawesome.com/c9d8c4afe9.js"></script>
<script>
  function togglePassword(){
	  var x = document.getElementById("password");
	  if(x.type === "password"){
		  x.type = "text";
	  }else{
		  x.type = "password";
	  }
  }
</script>
</head>
<body>


			<div id = "page-container">
				<nav class="navbar navbar-light p-3 mb-2 bg-info text-white">
				  <a class="navbar-brand" href="#">
				  <i class="fa fa-paper-plane-o" aria-hidden="true"></i> SkyHigh
				   
				  </a>
				</nav>
				<div id = "content-wrap">
				   <h2 style="text-align: center; margin-top: 20px; margin-bottom: 30px;">Login</h2>
				
				    <div class = "container" id = "formdiv">
				      <form id="loginForm" modelAttribute="login" action="loginProcess" method="post">
					      <div class = "form-group">
					         <label for = "email">Email</label>
					          <input type = "text" class = "form-control" name = "email" placeholder = "abc@gmail.com">
					      </div>
					       <div class = "form-group">
					         <label for = "password">Password</label>
					          <input type = "password" id = "password" class = "form-control" name = "password">
                               <div class="input-group mb-3">
							  <div style="margin-top: 5px;" class="input-group-prepend">
							    <div class="input-group-text">
							      <input type="checkbox" aria-label="Checkbox for following text input" onclick="togglePassword()"><span style="margin-left: 4px;">Show Password</span>
							    </div>
							  </div>
							</div>
					      </div>
					      <input type = "submit" class = "btn btn-primary" id = "bookflight" value = "Login">
				      </form>
				    </div>
				</div>
			<footer id = "footer">&copy Copyright SkyHigh, 2020</footer>
		</div>
  

 </body>
</html>