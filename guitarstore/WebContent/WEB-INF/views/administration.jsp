<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/css/style.css">
<title>Administration</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<a href="${pageContext.request.contextPath}/insertGuitar" class="admin-action">Add guitar</a>
			<p>----------</p>
			<a href="${pageContext.request.contextPath}/order" class="admin-action">All Orders</a>
			<table border="1">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Type</th>
					<th>Material</th>
					<th>Brand</th>
					<th>Description</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Image</th>
					<th>Action</th>
				</tr>
				<!-- gán đối tượng guitarList đã set bên servlet vào biến guitar -->
				<c:forEach items="${guitarList}" var="guitar">  
					<tr>
						<!-- Các attribute này phải đúng với khai báo ở package bo -->
						<td>${guitar.guitarID}</td> 
						<td>${guitar.name}</td>
						<td>${guitar.type}</td>
						<td>${guitar.material}</td>
						<td>${guitar.brand}</td>
						<td>${guitar.description}</td>
						<td>${guitar.price}</td>
						<td>${guitar.quantity}</td>
						<td><img src="${guitar.image}" width="120" height="150"></td>
						<td>
							<div class="action">
								<!-- truoc dau hoi la url mapping -->
								<a href="deleteGuitar?id=${guitar.guitarID}">Delete</a> 
							</div>
							<div class="action">
								<a href="updateGuitar?id=${guitar.guitarID}">Update</a>
							</div>
						</td>
					</tr>
				
				</c:forEach>
			</table>
			
		</div>
	</div>
	
</body>
</html>