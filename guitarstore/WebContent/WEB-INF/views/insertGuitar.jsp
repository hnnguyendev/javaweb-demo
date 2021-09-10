<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/css/style.css">
<title>Insert</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<h1>ADD NEW GUITAR</h1>
			<form action="${pageContext.request.contextPath}/insertGuitar" method="post" enctype="multipart/form-data">
				<input type="text" name="name" placeholder="Guitar Name"><br>
				<input type="text" name="type" placeholder="Type"><br>
				<input type="text" name="material" placeholder="Material"><br>
				<input type="text" name="brand" placeholder="Brand"><br>
				<input type="text" name="description" placeholder="Description"><br>
				<input type="number" name="price" placeholder="Price"><br>
				<input type="number" name="quantity" placeholder="Quantity"><br>
				<input type="file" name="image"><br>
				<input type="submit" value="Add">
			</form>
		</div>
	</div>
	
</body>
</html>