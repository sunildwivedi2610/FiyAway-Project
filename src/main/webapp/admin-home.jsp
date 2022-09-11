<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="servlets.Login"%>

<%
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "flyaway";
String userID = "root";
String password = "root@123";

try {
	Class.forName(driverName);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultset = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway - Airlines</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<a href="/FlyAway/index.jsp">FlyAway</a>
	</div>
	<%
	if (Login.isLoggedIn) {
	%><div>
		<h2 align="center">Home</h2>
		<p align="right">
			<span><strong>LoggedIn as : <%=Login.email%></strong></span> <br>
		<div align="right">
			<form method="post" action="/FlyAway/change-password.jsp">
				<button type="submit" class="btn btn-success mb-2 btn-block">Change
					Password</button>
			</form>
			&ensp;
		</div>
		</p>
		<br>
		<div align="center">
			<section class="container-fluid">
				<section class="row justify-content-center">
					<section>
						<table class="table table-hover table-striped">
							<thead>
								<tr>
									<th scope="col">Flight ID</th>
									<th scope="col">Name</th>
									<th scope="col">Source</th>
									<th scope="col">Destination</th>
									<th scope="col">Day</th>
									<th scope="col">Ticket Price</th>
								</tr>
							</thead>
							<tbody>
								<%
								try {
									connection = DriverManager.getConnection(connectionUrl + dbName, userID, password);
									statement = connection.createStatement();
									String sql = "SELECT * FROM flights_list";
									resultset = statement.executeQuery(sql);
									while (resultset.next()) {
								%>
								<tr>
									<td><%=resultset.getString("flight_id")%></td>
									<td><%=resultset.getString("name")%></td>
									<td><%=resultset.getString("source")%></td>
									<td><%=resultset.getString("destination")%></td>
									<td><%=resultset.getString("days")%></td>
									<td><%=resultset.getString("ticket_price")%></td>
								</tr>
								<%
								}
								} catch (Exception e) {
								e.printStackTrace();
								}
								} else {
								out.println("Please Login.");
								}
								%>
							</tbody>
						</table>
					</section>
				</section>
			</section>
		</div>
	</div>
	<div class="footer" align="right">FlyAway</div>
</body>
</html>