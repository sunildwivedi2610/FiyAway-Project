<%@page import="servlets.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
Login.isLoggedIn = false;
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>Admin - Login FlyAwa Airlines</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<a href="/FlyAway/index.jsp">FlyAway</a>

	</div>
	<br>
	<div>
		<h2 align="center">
			<b>Login</b>
		</h2>
	</div>
	<br>
	<form action="login" method="post" align="center">
		<br> <br>
		<div>
			<label for="inputEmail"><b>Email Address</b></label> <input
				type="email" name="email" id="inputEmail" placeholder="E-Mail"><br>
			<small id="emailHelp">&nbsp;&nbsp;Email : admin@faairline.com</small>
		</div>
		<br>
		<div>
			<label for="inputPassword"><b>Password</b></label> <input
				type="password" name="password" id="inputPassword"
				placeholder="Password.."><br> <small id="passwordHelp">&nbsp;&nbsp;
				Current Password :&nbsp;<%=Login.password%></small>
		</div>
		<br>
		<button type="submit" value="Submit">Login</button>
	</form>
	<br>
	<br>
	<br>
	<br>
	<div class="footer" align="right">FlyAway</div>
</body>
</html>