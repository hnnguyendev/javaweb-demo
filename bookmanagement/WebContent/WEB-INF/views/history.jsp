<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/css/Style.css">
<title>History</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header2.jsp"></jsp:include>
		<div id="content">
			<table border="1">
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Message</th>
					<th>Action</th>
				</tr>
				<c:forEach items="${contactHistory}" var="contact">
					<tr>
						<td>${contact.id}</td>
						<td>${contact.firstname}</td>
						<td>${contact.lastname}</td>
						<td>${contact.email}</td>
						<td>${contact.message}</td>
						<td>
							<a href="deleteHistory?id=${contact.id}">Delete</a>
						</td>
					</tr>
				
				</c:forEach>
			</table>
			
		</div>
	</div>
	
</body>
</html>