<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Login Page</title>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		<form action="login" method="post">			
			<div class="container">
				 <label for="uname"><b>Username</b></label>
				 <input type="text" placeholder="Enter Username" name="userName" required>
				 <label for="psw"><b>Password</b></label>
				 <input type="password" placeholder="Enter Password" name="password" required>
				 <button type="submit">Login</button>
			   	 <label>
				 	<input type="checkbox" checked="checked" name="remember"> Remember me
				 </label>
			</div>			
			<div class="container" style="background-color:#f1f1f1">
		  		<a href="registration.jsp">Registration?</a>
		  		<a class="about" href="aboutus.jsp">About Us</a>
			</div>
		</form>
	</body>
</html> 