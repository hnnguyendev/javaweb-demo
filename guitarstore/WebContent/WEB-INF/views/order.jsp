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
					<th>Fullname</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Guitar Name</th>
					<th>Type</th>
					<th>Brand</th>
					<th>Image</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
				<c:forEach items="${orderList}" var="order">
					<tr>
						<td>${order.orderID}</td>
						<td>${order.fullname}</td>
						<td>${order.email}</td>
						<td>${order.phone}</td>
						<td>${order.name}</td>
						<td>${order.type}</td>
						<td>${order.brand}</td>
						<td><img src="${order.image}" width="120" height="150"></td>
						<td>${order.price}</td>
						<td>
							<div class="action">
								<!-- truoc dau hoi la url mapping -->
								<a href="deleteOrder?id=${order.orderID}">Delete</a>
							</div>
						</td>
					</tr>
				
				</c:forEach>
			</table>
			
		</div>
	</div>
	
</body>
</html>