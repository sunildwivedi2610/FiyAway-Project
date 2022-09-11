<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="entity.Booking"%>
<%@page import="entity.Search"%>

<%
Booking.passenger_name = request.getParameter("pname");
Booking.passenger_email = request.getParameter("email");
Booking.passenger_phone = request.getParameter("number");

if (Booking.passenger_name.equals("") || Booking.passenger_email.equals("") || Booking.passenger_phone.equals("")) {
	out.print("Please enter valid Passenger details.");
} else {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details - FlyAway Airlines</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<a href="/FlyAway/index.jsp">FlyAway</a>
		<div>
			<a href="/FlyAway/login.jsp">Admin</a>
		</div>
	</div>
	<div>
		<h1 align="center">
			<b>Checkout</b>
		</h1>
		<p align="center">
			<strong>Enter Payment Details</strong>
		</p>
		<br>
	</div>
	<form action="/FlyAway/thank-you.jsp" method="post">
		<div class="form-group">
			<label for="Card Details">Name on Card</label> <input type="text"
				id="nameOnCard" name="nameOnCard" placeholder="Name on Card">
		</div>
		<br>
		<div class="form-group">
			<label for="Card Details">Card Number</label> <input type="number"
				id="card_details" name="cardDetails" placeholder="Enter Card Number">
		</div>
		<br>
		<p align="left">
			<strong>Total fare=<br><%=Booking.ticket_price%>X<%=Search.persons%>persons=Rs.<%=Booking.ticket_price * Search.persons%></strong>
		</p>
		<button type="submit" class="btn btn-success btn-block" value="Submit">Confirm
			Pay</button>
	</form>
</body>
</html>
<%
}
%>