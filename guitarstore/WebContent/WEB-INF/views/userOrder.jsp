<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/css/style.css">
<title>Order</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<table border="1">
				<tr>
					<th>Order ID</th>
					<th>Username</th>
					<th>Fullname</th>
					<th>Guitar Name</th>
					<th>Type</th>
					<th>Brand</th>
					<th>Image</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
				<c:forEach items="${userOrderView}" var="userOrder">
					<tr>
						<td>${userOrder.orderID}</td>
						<td>${userOrder.username}</td>
						<td>${userOrder.fullname}</td>
						<td>${userOrder.name}</td>
						<td>${userOrder.type}</td>
						<td>${userOrder.brand}</td>
						<td><img src="${userOrder.image}" width="120" height="150"></td>
						<td>${userOrder.price}</td>
						<td>
							<div class="action">
								<!-- truoc dau hoi la url mapping -->
								<a href="deleteUserOrder?id=${userOrder.orderID}">Delete</a>
							</div> 
						</td>
					</tr>
				
				</c:forEach>
			</table>
			<a href="${pageContext.request.contextPath}/home">Continue Shopping</a>
			
		</div>
	</div>
	
</body>
</html>