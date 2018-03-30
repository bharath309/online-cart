<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Category Management</h1>
<form:form action="category" method="post" commandName="category">
<table>
<tr>
<td>Category Id</td>
<td><form:input path="CategoryID"/></td>
</tr>
<tr>
<td>Category Name</td>
<td><form:input path="CategoryName"/></td>
</tr>
<tr>
<td>Category Description</td>
<td><form:input path="Descripton"/></td>
</tr>
<tr>
<td>Image Url</td>
<td><form:input path="Url"/></td>
</tr>
<tr>
<td>Active?</td>
<td><form:input path="Yes/no"/></td>
</tr>

<tr>
<td colspan="2">
	<input type="submit" name="action" value="Add"/>
	<input type="submit" name="action" value="Edit"/>
	<input type="submit" name="action" value="Search"/>
	</td>
</tr>
</table>
</form:form>
<br>
<table>
<tr>CategoryID </tr>
<tr>Name </tr>
<tr>Description</tr>
<tr>Image Url</tr>
<tr>Action </tr>
<c:forEach items="${categoryList}" var="category"> 
<tr>
<td>${category.categoryId}</td>
<td>${category.name}</td>
<td>${category.description}</td>
<td>${category.imageUrl}</td>
<td>${category.active}</td>
 <td><a href="deletecategory/${category.id}">Delete</a></td>  
</tr>

</c:forEach>
</table>
</body>
</html>