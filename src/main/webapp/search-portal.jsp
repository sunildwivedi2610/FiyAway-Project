<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="entity.Search"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body>
	<div>
		<a href="/FlyAway/index.jsp">FlyAway</a>
		<div>
			<a href="/FlyAway/login.jsp"><i>Admin Login</i></a>
		</div>
	</div>
	<div>
		<h2 align="center">
			<b>FlyAway <br> <br>Ticket Booking
			</b>
		</h2>
		<br>
	</div>
	<form action="Search" method="get">
		<div align="center">
			<label for="date"><b>Date</b></label> <input id="date_picker"
				type="date" name="date">
			<script language="javascript">
				var today = new Date();
				var dd = String(today.getDate()).padStart(2, '0');
				var mm = String(today.getMonth() + 1).padStart(2, '0');
				var yyyy = today.getFullYear();

				today = yyyy + '-' + mm + '-' + dd;
				$('#date_picker').attr('min', today);
			</script>
		</div>
		<br>
		<div align="center">
			<label for="source">Source</label> <select id="source" name="source">
				<option value="Bengaluru">Bengaluru</option>
				<option value="Bhopal">Bhopal</option>
				<option value="New Delhi">New Delhi</option>
			</select>
		</div>
		<br>
		<div align="center">
			<label for="destination">Destination</label> <select id="destination"
				name="destination">
				<option value="Bengaluru">Bengaluru</option>
				<option value="Bhopal">Bhopal</option>
				<option value="New Delhi">New Delhi</option>
			</select>
		</div>
		<br>
		<div align="center">
			<label for="persons">No of Persons</label> <select id="persons"
				name="persons">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
			</select>
		</div>
		<br>
		<div align="center">
			<button type="submit" class="btn btn-success btn-block"
				value="Submit">
				<b>Search Flight</b>
			</button>
		</div>
	</form>
	<br>
	<br>
	<br>
	<div class="footer" align="right">FlyAway</div>
</body>
</html>