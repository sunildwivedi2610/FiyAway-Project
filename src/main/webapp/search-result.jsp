<%@page import="javax.naming.directory.SearchControls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="entity.Search"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "flyaway";
String userId = "root";
String password = "root@123";

String query = Search.getQuery();
try {
	Class.forName(driverName);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>Search Results - FlyAway Airlines</title>
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
	<div>
		<h2 align="center">
			<span><strong>Search Result</strong></span>
		</h2>
		<p align="center">
			<span><strong>Showing Flights from <%=Search.source%>
					to <%=Search.destination%><br> Date of travel : <%=Search.date%>
					(<%=Search.day%>) <br> No of Passengers : <%=Search.persons%><br>
			</strong></span>
		</p>
		<table>
			<thead>
				<tr>
					<th scope="col">Flight</th>
					<th scope="col">Source</th>
					<th scope="col">Destination</th>
					<th scope="col">Date</th>
					<th scope="col">Ticket Price</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<br>
				<p align="center">
					<span><strong>Avilable flights</strong></span>
				</p>
				<br>
				<%
				try {
					connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
					statement = connection.createStatement();
					resultSet = statement.executeQuery(query);
					while (resultSet.next()) {
				%>
				<tr>
					<td><%=resultSet.getString("name")%></td>
					<td><%=resultSet.getString("source")%></td>
					<td><%=resultSet.getString("destination")%></td>
					<td><%=Search.date%></td>
					<td><%=resultSet.getString("ticket_price")%></td>

					<form action="/FlyAway/booking-details.jsp" method="post">
						<input type="hidden" id="name" name="name"
							value="<%=resultSet.getString("name")%>"> <input
							type="hidden" id="ticket_price" name="ticket_price"
							value="<%=resultSet.getString("ticket_price")%>"> <input
							type="hidden" id="flight_id" name="flight_id"
							value="<%=resultSet.getString("flight_id")%>"> <input
							type="submit" class="btn btn-success" value="Book This Flight">
					</form>
					</td>
				</tr>
				<%
				}
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</tbody>
		</table>
	</div>
	<div class="footer" align="right">FlyAway</div>
</body>
</html>