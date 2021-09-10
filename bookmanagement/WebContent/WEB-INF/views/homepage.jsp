<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/css/Style.css">
<title>Home</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<c:forEach items="${bookProduct}" var="book">
				<div class="product">
					<div><img alt="Book" src="${book.image}" class="product-img"></div>
					<div>
						<h3 class="book-name">${book.name}</h3>
						<p class="book-detail">Writer: <span>${book.author}</span></p>
						<p class="book-detail">Publisher: <span>${book.publisher}</span></p>
						<p class="book-detail">Type: <span>${book.type}</span></p>
						<p class="book-detail">Language: <span>${book.language}</span></p>
						<p class="book-detail">Available: <span>${book.quantity}</span></p>
						<p class="book-detail">Description:</p> 
						<p class="book-description">${book.description}</p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>