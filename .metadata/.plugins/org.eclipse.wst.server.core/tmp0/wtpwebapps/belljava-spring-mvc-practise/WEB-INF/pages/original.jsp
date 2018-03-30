<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Student Portal</title>


</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Student Portal</a>
    <<!-- /div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
    </ul> -->
    <ul class="nav navbar-nav navbar-right">
    <c:set var="contextPath" value="${pageContext.request.contextPath}" />
      <li><a href="${contextPath}/student-login" ><span class="glyphicon glyphicon-user"></span> Register</a></li>
     <c:set var="contextPath" value="${pageContext.request.contextPath}" />
      <li><a href="${contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>


   
  
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  
   <div class="carousel-inner">
    <div class="item active">
      <img src="https://du1ux2871uqvu.cloudfront.net/sites/default/files/styles/huge/public/administrative-group/DA50_038_0.jpg?itok=Rlyuay8O" alt="Front Gate">
       <div class="carousel-caption">
      <h1>Student Portal Headlines</h1>
      <p  class="lead">Kent State University is on rush to have International Students</p>
      <a class="btn btn-large btn-primary" href="#">Learn more</a>
    </div>
    </div>

    <div class="item">
      <img src="https://www.kent.edu/sites/default/files/styles/huge/public/page/CAED_rendering.jpg?itok=oyChEL9J" alt="Student Arena">
    </div>

    <div class="item">
      <img src="http://www.crainscleveland.com/sites/default/files/main_image/792728/NEWS_161009967_AR_-1_CAGGJXHZJOSM.jpg" alt="Logo">
    </div>
    
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>

<f:form action="/" method="GET" modelAttribute="original">


</f:form>
<table border="1" cellpadding="2" cellspacing="2" align="center">
  <tr>
    <td height="30" colspan="2">
      <tiles:insertAttribute name="header"/>
    </td>
  </tr>
  <tr>
     <td height="250"><tiles:insertAttribute name="menu"/></td>
     <td width="350"><tiles:insertAttribute name="body"/> </td>
  </tr>
  <tr>
 
  </tr><td height="30" colspan="2">
    <tiles:insertAttribute name="footer"/>
</td>
 
</table>
<div class="container">
    <div class="table-responsive">
        <table class="table" >
            <tr>
                <td height="100" colspan="2"  style="background-color: Azure; border: thick;font: bold;">
                    <tiles:insertAttribute name="header"/>
                </td>
            </tr>
            <tr>
                <td height="250"  width="200" style="background-color:BurlyWood; border: thick;font: bold;">
                    <tiles:insertAttribute name="menu"/>
                </td>
                <td height="350" width="400" style="background-color: lightblue; border: thick;font: bold;">
                  <%--  <tiles:insertAttribute name="title" /><br>--%>
                    <tiles:insertAttribute name="body"/>
                </td>
            </tr>
            <tr>
                <td height="100"  colspan="2" style="background-color: Azure; border: thick;font: bold;">
                    <tiles:insertAttribute name="footer"/>
                </td>
            </tr>
        </table>
    </div>
</div>

</body>
</html>