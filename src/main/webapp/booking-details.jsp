<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="entity.Booking"%>
<%
Booking.flight_booking_id = request.getParameter("flight_id");
Booking.ticket_price = Integer.parseInt(request.getParameter("ticket_price"));
Booking.flight_name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>Booking Details - FlyAway Airlines</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<a href="/FlyAway/index.jsp">FlyAway</a>
		<div>
			<a href="/FlyAway/login.jsp">Admin Login</a>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<h1 align="center">
				<b>Booking Details</b>
			</h1>
			<p align="center">
				<span><strong>Fill All Details</strong></span> <br>
		</div>
	</div>
	<form action="/FlyAway/payment.jsp" method="post">
		<div>
			<div>
				<label for="pname">Name</label> <input type="text" id="pname"
					name="pname" placeholder="Passenger Name">
			</div>
			<br>
			<div>
				<label for="gender">Gender</label> <input type="radio" name="gender"
					value="Female" id="gender" />Female &nbsp;&nbsp;&nbsp;&nbsp; <input
					type="radio" name="gender" value="Male" id="gender" />Male
			</div>
			<br>
			<div>
				<label for="email">E-Mail</label> <input type="email" name="email"
					id="email" placeholder="E-Mail ID">
			</div>
			<br>
			<div>
				<label for="number">Phone Number</label> <input type="number"
					name="number" id="number" placeholder="Phone Number">
			</div>
			<br>
			<div>
				<br>
				<button type="submit" value="submit">Submit</button>
			</div>
		</div>
	</form>
	<div class="footer" align="right">FlyAway</div>
</body>
</html>