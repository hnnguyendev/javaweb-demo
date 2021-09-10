<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resource/css/Style.css">
<title>Search</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<div id="search-bar">
				<form action="${pageContext.request.contextPath}/search" method="post">
					<input type="text" name="textSearch" placeholder="Search.." class="form-input">
					<input type="submit" value="Search" class="form-submit">
				</form>
			</div>
			
			<table border="1">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Author</th>
					<th>Publisher</th>
					<th>Type</th>
					<th>Language</th>
					<th>Description</th>
					<th>Quantity</th>
					<th>Image</th>
				</tr>
				<c:forEach items="${bookSearch}" var="book">
					<tr>
						<td>${book.id}</td>
						<td>${book.name}</td>
						<td>${book.author}</td>
						<td>${book.publisher}</td>
						<td>${book.type}</td>
						<td>${book.language}</td>
						<td>${book.description}</td>
						<td>${book.quantity}</td>
						<td><img src="${book.image}" width="120" height="150"></td>
					</tr>
				
				</c:forEach>
			</table>
		
		</div>
	</div>
</body>
</html>