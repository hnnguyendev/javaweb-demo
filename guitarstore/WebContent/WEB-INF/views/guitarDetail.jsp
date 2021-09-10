<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/css/style.css">
<title>Guitar detail</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
				<div class="product-detail">
					<form action="${pageContext.request.contextPath}/guitarDetail" method="post">
						<div><img alt="Guitar image" src="${guitarDetail.image}" class="product-img"></div>
						<div>
							<h3 class="guitar-name">${guitarDetail.name}</h3>
							<input type="number" name="guitarID" hidden="true" value="${guitarDetail.guitarID}">
							<p class="guitar-detail">Type: <span>${guitarDetail.type}</span></p>
							<p class="guitar-detail">Material: <span>${guitarDetail.material}</span></p>
							<p class="guitar-detail">Brand: <span>${guitarDetail.brand}</span></p>
							<p class="guitar-detail">Description: <span>${guitarDetail.description}</span></p>
							<p class="guitar-detail">Price: <span>${guitarDetail.price}</span></p>
							<input type="submit" value="Buy" class="submit-btn">
						</div>
					</form>
				</div>
		</div>
	</div>
</body>
</html>