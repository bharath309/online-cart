<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
 
<spring:url var="css" value="/resources/css"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="images" value="/resources/images"/>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>navbar</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/home">Online Cart</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="${pageContext.request.contextPath}/home">Home</a>              
            </li>
            <li class="nav-item" id="about">
              <a class="nav-link" href="${pageContext.request.contextPath}/about">About</a>
            </li>
            
            
            <li class="nav-item" id="contact">
              <a class="nav-link" href="${pageContext.request.contextPath}/contact">Contact</a>              
            </li>
            
            <li class="nav-item" id="login">
              <a class="nav-link" href="${pageContext.request.contextPath}/login">login</a>
            </li> 
            
            <li class="nav-item" id="listProducts">
              <a class="nav-link" href="${pageContext.request.contextPath}/show/all/products">View Products</a>           
            </li>
          </ul>
        </div>
      </div>
    </nav>

</body>
</html>