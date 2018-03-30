<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Login Portal</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>
<body background="http://www.ksualumni.org/s/401/images/editor/Wallpaper/WoodWallpaperL.jpg">


<div class="container">


  <h2><font color= white>Student Login</font></h2>
 
  <f:form action="/login" method="POST" modelAttribute="login">
    <div class="form-group">
      <label for="username"><font color= white>Username: </font></label>
      <input type="username" class="form-control" id="username" placeholder="Enter username" name="username"><br><br>
    </div>
    <div class="form-group">
      <label for="pwd"><font color= white >Password:</font></label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password"><br><br>
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"><font color= white> Remember me</font></label><br><br>
    </div>
    <f:button type="submit" class="btn btn-success">Submit</f:button>
  </f:form>
</div>


<%-- <f:form action="/login" method="POST" modelAttribute="login">
Username : <f:input path="Username" placeholder= "Username"></f:input>  <br><br>

Password : <f:input path="password" placeholder= "Password" type="Password"></f:input>  <br><br>

<f:button> Submit</f:button>
</f:form> --%>

</body> 
</html>