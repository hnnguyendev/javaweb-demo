<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/css/Style.css">
<title>Administration</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header1.jsp"></jsp:include>
		<div id="content">
			<a href="${pageContext.request.contextPath}/insertBook">Add book</a>
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
					<th>Action</th>
				</tr>
				<c:forEach items="${bookAttributeServlet}" var="book">
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
						<td>
							<a href="deleteBook?id=${book.id}">Delete</a> <!-- truoc dau hoi la url mapping -->
							<a href="updateBook?id=${book.id}">Update</a>
						</td>
					</tr>
				
				</c:forEach>
			</table>
			
		</div>
	</div>
	
</body>
</html>