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
	<!-- Navigation -->
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Hotel Managment</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="http://localhost:8080/redsea/">Home</a></li>
				<li><a href="http://localhost:8080/redsea/user/listHotel">HotelList</a></li>
				<li class="active"><a href="">Profile</a></li>
				<li><a href="logout">Logout</a></li>
			</ul>
		</div>
	</nav>
	<!--Navigation -->

	<!--body -->

	<form action="reservation"  method="post">

		<div class="container">
			<div class="row">

              <label for="from">${hotel.name}</label>
				<div class="row">
					<div class="form-group col-xs-6">
						<label for="from">From Date:</label> <input type="date"
						
							class="form-control" id="from" name="todate">
					</div>
				</div>
				
				
				<div class="row">
					<div class="form-group col-xs-6">
						<label for="to">To Date:</label> <input type="date" name="fromdate"
							class="form-control" id="to">
					</div>
				</div>

				<div class="row">
					<div class="form-group col-xs-6">
						
							Select Room Type: <select name="roomtype"  class="form-control">
								<c:forEach items="${eList}" var="entry">
									<option >${entry}</option>
								</c:forEach>
							</select>
					
					</div>
				</div>

				<!--   <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Select number of rooms
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
    <button class="dropdown-item" type="button">Action</button>
    <button class="dropdown-item" type="button">Another action</button>
    <button class="dropdown-item" type="button">Something else here</button>
  </div>
</div> -->

				<button type="submit" class="btn btn-primary">Reserve</button>
			</div>
	</form>


	<!--body -->


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