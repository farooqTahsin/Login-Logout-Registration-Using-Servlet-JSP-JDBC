<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<form action="registration" method="post">
		<div class="container">
				 <label><b>Email</b></label>
				 <input type="text" placeholder="Enter Email" name="email" required>
				 <label><b>Username</b></label>
				 <input type="text" placeholder="Enter Usernme" name="userName" required>
				 <label><b>Password</b></label>
				 <input type="password" placeholder="Enter Password" name="password" required>
				 <label><b>Phone</b></label>
				 <input type="text" placeholder="Enter Phone" name="phone" required>
				 <button type="submit">Register</button>
		</div>		
	</form>
</body>
</html>