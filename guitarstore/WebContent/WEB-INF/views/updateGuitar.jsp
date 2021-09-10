<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/css/style.css">
<title>Update</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<h1>UPDATE GUITAR</h1>
			<form action="${pageContext.request.contextPath}/updateGuitar" method="post" enctype="multipart/form-data">
				<input type="text" name="guitarID" value="${updateGuitar.guitarID}" hidden="true"><br>
				<input type="text" name="name" value="${updateGuitar.name}" placeholder="Guitar Name"><br>
				<input type="text" name="type" value="${updateGuitar.type}" placeholder="Type"><br>
				<input type="text" name="material" value="${updateGuitar.material}" placeholder="Material"><br>
				<input type="text" name="brand" value="${updateGuitar.brand}" placeholder="Brand"><br>
				<input type="text" name="description" value="${updateGuitar.description}" placeholder="Description"><br>
				<input type="number" name="price" value="${updateGuitar.price}" placeholder="Price"><br>
				<input type="number" name="quantity" value="${updateGuitar.quantity}" placeholder="Quantity"><br>
				<input type="file" name="image" value="${updateGuitar.image}"><br>
				<input type="submit" value="Update">
			</form>
		</div>
	</div>
	
</body>
</html>