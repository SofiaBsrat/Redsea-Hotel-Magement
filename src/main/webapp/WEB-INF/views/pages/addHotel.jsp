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
      <li><a href="http://localhost:8080/redsea/admin/listHotel">HotelList</a></li>
      <li class="active"><a href="http://localhost:8080/redsea/admin/addHotel">HotelRegistration</a></li>
        <li ><a href="http://localhost:8080/redsea/admin/booked">ReservedHotels</a></li>
      <li><a href="logout">Logout</a></li>
    </ul>
  </div>
</nav>
<!--Navigation -->

<div class="container">
  <h2>Hotel Form</h2>
  <form class="form-horizontal" action="addHotel"  method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Enter name" name="name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Contact:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="Enter telephone" name="contact">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Rating:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="Enter rating" name="rating">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">City:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="Enter city" name="city">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Address:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="Enter address" name="address">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Description:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="Enter description" name="descroption">
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Price:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="Enter description" name="price">
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
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