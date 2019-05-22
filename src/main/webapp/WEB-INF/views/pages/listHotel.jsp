<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<li class="active"><a
					href="http://localhost:8080/redsea/user/addHotel">HotelList</a></li>
				<li><a href="/">Profile</a></li>
				<li><a href="logout">Logout</a></li>
			</ul>
		</div>
	</nav>
	<!-- body -->

	<div class="container">
		<h2>List of Hotels</h2>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Telephone</th>
					<th>Rating</th>
					<th>Address</th>
					<th>Price</th>
					<th>Reserve</th>
				</tr>
			</thead>
			 <tbody>
			 
		 
				<c:forEach items="${hotellist}" var="hotel">
					<tr class="active">
						<td><c:out value="${hotel.name}" /></td>
						<td><c:out value="${hotel.contact}" /></td>
						<td><c:out value="${hotel.rating}" /></td>
						<td><c:out value="${hotel.address}" /></td>
						<td><c:out value="${hotel.price}" /></td> 
						 <td> <a href="reservation?id=${hotel.id}" class="btn btn-info" role="button">Book</a> </td>
					</tr>
				</c:forEach>
			</tbody> 
		</table>
	</div>
	<!-- body -->


	<!-- <!-- <div class="container">
  <h2>List of Hotels</h2>
  <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Telephone</th>
        <th>Rating</th>
         <th>Address</th>
         <th>Price</th>
         <th>Reserve</th>
         
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Default</td>
        <td>Defaultson</td>
        <td>def@somemail.com</td>
        <td>Defaultson</td>
        <td>def@somemail.com</td>
        <td> <a href="reservation" class="btn btn-info" role="button">Book</a> </td>
      </tr>      
      <tr class="success">
        <td>Success</td>
        <td>Doe</td>
        <td>john@example.com</td>
        <td>Defaultson</td>
        <td>def@somemail.com</td>
        <td> <a href="user/reservation" class="btn btn-info" role="button">Book</a> </td>
      </tr>
      <tr class="danger">
        <td>Danger</td>
        <td>Moe</td>
        <td>mary@example.com</td>
        <td>Defaultson</td>
        <td>def@somemail.com</td>
        <td> <a href="#link" class="btn btn-info" role="button">Book</a> </td>
      </tr>
      <tr class="info">
        <td>Info</td>
        <td>Dooley</td>
        <td>july@example.com</td>
        <td>Defaultson</td>
        <td>def@somemail.com</td>
        <td> <a href="#link" class="btn btn-info" role="button">Book</a> </td>
      </tr>
      <tr class="warning">
        <td>Warning</td>
        <td>Refs</td>
        <td>bo@example.com</td>
        <td>Defaultson</td>
        <td>def@somemail.com</td>
        <td> <a href="#link" class="btn btn-info" role="button">Book</a> </td>
      </tr>
      <tr class="active">
        <td>Active</td>
        <td>Activeson</td>
        <td>act@example.com</td>
        <td>Defaultson</td>
        <td>def@somemail.com</td>
       <td> <a href="#link" class="btn btn-info" role="button">Book</a> </td>
      </tr>
    </tbody>
  </table>
</div> -->
	-->

	<!-- body -->

	<!-- Footer -->
	<footer class="page-footer font-small blue">
		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">
			© 2018 Copyright: <a
				href="https://mdbootstrap.com/education/bootstrap/"> i.com</a>
		</div>
		<!-- Copyright -->
	</footer>
</body>
</html>