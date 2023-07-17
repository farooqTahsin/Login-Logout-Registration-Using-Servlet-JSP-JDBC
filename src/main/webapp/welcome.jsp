<!--  Secure Page -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Welcome Page</title>
	</head>
	<body>
		<%
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			if(session.getAttribute("userName") == null ) {
				response.sendRedirect("login.jsp");
			}
		%>
		Welcome ${userName} <br>
		Your Info: <br>
		Email: ${email} <br>
		Phone: ${phone} <br>
		Password: ${password} <br>
		
		<a href="videos.jsp">Videos</a>
		<form action="logout">
			<input type="submit" value="logout">
		</form>
	</body>
</html>