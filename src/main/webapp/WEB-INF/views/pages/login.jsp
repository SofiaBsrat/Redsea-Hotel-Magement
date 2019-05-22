<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Management</title>
<!-- <link rel="stylesheet" href="../../css/main.css"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Hotel Managment System</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="/redsea">Home</a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li class="active"><a >Login</a></li>
      <li><a href="/redsea/signup">SignUp</a></li>
    </ul>
  </div>
</nav>

<!-- body -->

<div class="container">
  <h2>Login form</h2>
  <form class="form-horizontal" action="login" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">UserName:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Enter email" name="username">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </form>
</div>

<!-- body -->
<!-- Footer -->
<footer class="page-footer font-small black">
  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2019 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/"> RedSeaTeam.com</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->

</body>
</html>