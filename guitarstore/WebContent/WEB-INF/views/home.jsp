<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/css/style.css">
<title>Home</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="search-bar">
			<div id="search-area">
				<form action="${pageContext.request.contextPath}/search" method="post">
					<input type="text" name="textSearch" placeholder="Search.." class="form-input">
					<input type="submit" value="Search" class="form-submit">
				</form>
			</div>
		</div>
		<div id="content">
			<c:forEach items="${guitarList}" var="guitar">
				<div class="product">
					<div><a href="guitarDetail?id=${guitar.guitarID}"><img alt="Guitar image" src="${guitar.image}" class="product-img"></a></div>
					<div>
						<h3 class="guitar-name">${guitar.name}</h3>
						<p class="guitar-detail">${guitar.type}</p>
						<p class="guitar-detail">${guitar.price}</p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>