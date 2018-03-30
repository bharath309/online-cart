<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>
</head>
<body>
<div class="container">
<h1 class="text-center" id="first">Register To Your Account</h1><br>
<h1 class="text-center"> </h1>
<div class="row">
  <div class="col-sm-4"></div>
  
  <div class="col-sm-4">
  
  <f:form action="/register" method="post" modelAttribute="register">
    <div class="form-group">
      <label for="firstName">FirstName:</label>
      <input type="firstName" class="form-control" id="firstName" placeholder="First Name" name="firstName"/>
    </div>
    <div class="form-group">
      <label for="lastName">LastName:</label>
      <input type="lastName" class="form-control" id="lastName" placeholder="Last Name" name="lastName"/>
    </div>
    <div class="form-group">
      <label for="dob">DOB:</label>
      <input type="dob" class="form-control" id="dob" placeholder="month/date/year" name="dob"/>
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"/>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password"/>
    </div>
       
   <!--  <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div> -->
    <button type="submit" class="btn btn-success">Register</button>
  </f:form>
  
  </div>
  <div class="col-sm-4"></div>
</div>

</div>
</body>
</html>