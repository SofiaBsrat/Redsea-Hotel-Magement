<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
      <li ><a href="http://localhost:8080/redsea/">Home</a></li>
      <li><a href="http://localhost:8080/redsea/user/listHotel">HotelList</a></li>
      <li class="active"><a href="">Profile</a></li>
      <li><a href="logout">Logout</a></li>
    </ul>
  </div>
</nav>
<!--Navigation -->

<div class="container">
 <%--  <h1>Welcome ${member.firstname} (36px)</h1>
 --%>
</div>




<!-- Footer -->
<footer class="page-footer font-small blue">
  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2018 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/"> i.com</a>
  </div>
  <!-- Copyright -->
</footer>
</body>
</html>