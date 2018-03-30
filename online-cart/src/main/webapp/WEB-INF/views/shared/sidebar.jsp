<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>



<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 class="my-4">Departments</h1>

	<div class="list-group">
	
	    <c:forEach items="${categories}" var="category" >
		<a href="${pageContext.request.contextPath}/show/category/${category.id}/products" class="list-group-item" id="a_${category.name}">${category.name}
		
		</a>
		
		 </c:forEach>
			
	</div>

</body>
</html>