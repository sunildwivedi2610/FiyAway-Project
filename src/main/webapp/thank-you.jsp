<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="entity.Search"%>
<%@page import="entity.Booking"%>

<%
Booking.nameOnCard = request.getParameter("nameOnCard");
Booking.cardDetails = request.getParameter("cardDetails");

if (Booking.nameOnCard.equals("") || Booking.cardDetails.equals("")) {
	out.println("Please enter valid card details");
}
%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thank You - FlyAway Airlines</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<h2 align="center">
			<strong>Thank You</strong>
		</h2>
		<p align="center">
			<strong>Your ticket has booked.</strong>
		</p>
		<p>
			<button onclick="window.print()" class="btn btn-success btn-block">Print
				Ticket</button>
		</p>
		<br>
		<h3>Ticket Summery</h3>
		<h4>
			<strong><%=Search.source%> to <%=Search.destination%> | <%=Search.date%>(<%=Search.day%>)</strong>
		</h4>
		<p align="left"><%=Booking.flight_booking_id%>
			-
			<%=Booking.flight_name%>
			(Travellers
			<%=Search.persons%>)
		</p>
		<br> <br>
		<h3>
			<strong>Passenger Summary</strong>
		</h3>
		<h3>
			Booking Name-<%=Booking.passenger_name%>
			| Email-<%=Booking.passenger_email%>
			| Phone-
			<%=Booking.passenger_phone%></h3>
		<br>
		<h3>
			<strong>Payment Summary</strong>
		</h3>
		<h4>
			Payment By-<%=Booking.nameOnCard%>
			| Card No-<%=Booking.cardDetails%></h4>
		<br>
		<h2 align="right">
			<strong>Total Rs.-<%=Search.persons * Booking.ticket_price%></strong>
		</h2>
		<br>
	</div>
	<div class="footer" align="center">FlyAway</div>
</body>
</html>