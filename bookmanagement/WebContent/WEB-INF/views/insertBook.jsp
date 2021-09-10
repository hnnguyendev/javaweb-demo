<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/css/Style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert book</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header1.jsp"></jsp:include>
		<div id="content">
			<h1>ADD NEW BOOK</h1>
			<form action="${pageContext.request.contextPath}/insertBook" 
						method="post" enctype="multipart/form-data"> <!-- form co file bat buoc phai khai bao enctype -->
				<input type="text" name="name" placeholder="Book Name"> <br>
				<input type="text" name="author" placeholder="Author"> <br>
				<input type="text" name="publisher" placeholder="Publisher"> <br>
				<input type="text" name="type" placeholder="Type"> <br>
				<input type="text" name="language" placeholder="Language"> <br>
				<input type="text" name="description" placeholder="Description"> <br>
				<input type="number" name="quantity" placeholder="Quantity"> <br>
				<input type="file" name="image"><br>
				<input type="submit" value="Add">
			</form>
		</div>
	</div>
	
</body>
</html>