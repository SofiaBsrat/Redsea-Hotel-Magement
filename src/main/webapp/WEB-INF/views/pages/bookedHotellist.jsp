
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Hotel Managment</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="http://localhost:8080/redsea/">Home</a></li>
				<li class="active"><a href="http://localhost:8080/redsea/admin/listHotel">HotelList</a></li>
				<li ><a
					href="http://localhost:8080/redsea/admin/addHotel">HotelRegistration</a></li>
				<li class="active"><a href="http://localhost:8080/redsea/admin/booked">ReservedHotels</a></li>
				<li><a href="logout">Logout</a></li>
			</ul>
		</div>
	</nav>
	<!-- body -->

	<div class="container">
		<h2>List of BookedHotels</h2>
		<table class="table">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Customer Email</th>
					<th>Hotel Name</th>
					<th>Entrance Date</th>
					<th>Leaving Date</th>
					
				</tr>
			</thead>
			<tbody>


				<c:forEach items="${hotellist}" var="bhotel">
					<tr class="active">
						<td><c:out value="${bhotel.member.firstname}" /></td>
						<td><c:out value="${bhotel.member.lastname}" /></td>
						<td><c:out value="${bhotel.member.email }" /></td>
						<!--  <td><c:out value="${ bhotel.hotel.name}" /></td>-->
						<td><c:out value="${ bhotel.roomtype}" /></td>
						
						<td><c:out value="${bhotel.todate}" /></td>
						<td><c:out value="${bhotel.fromdate}" /></td>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- body -->


	

	<!-- body -->

	<!-- Footer -->
	<footer class="page-footer font-small blue">
		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">
			© 2019 Copyright: <a
				href="https://mdbootstrap.com/education/bootstrap/"> RedseaTeam.com</a>
		</div>
		<!-- Copyright -->
	</footer>
</body>
</html>

</body>
</html>