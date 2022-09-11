<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="servlets.Login"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>Password Change</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<a href="/FlyAway/index.jsp">FlyAway</a>
	</div>
	<div>
		<h1>Password Change</h1>
		<%
		if (Login.isLoggedIn) {
		%>
		<form action="change-password" method="post">
			<div>
				<label>Email Address : admin@faairlines.com</label>
			</div>
			<div>
				<label for="inputPassword">New Password</label> <input
					type="password" name="password" id="inputPassword"
					placeholder="Enter a new Password"> <br> <small
					id="passwordHelp">&nbsp;&nbsp; Current Password :&nbsp;<%=Login.password%></small>
			</div>
			<button type="submit">Change Password</button>
		</form>
		<%
		} else {
		out.print("You must Login first");
		%>
		<a href="/FlyAway/login.jsp">Login</a>
		<%
		}
		%>
		<br>
	</div>
	<br>
	<br>
	<div class="footer" align="right">FlyAway</div>
</body>
</html>