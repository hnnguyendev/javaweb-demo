<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/css/Style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Update book</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header1.jsp"></jsp:include>
		<div id="content">
			<h1>UPDATE BOOK</h1>
			<form action="${pageContext.request.contextPath}/updateBook" 
						method="post" enctype="multipart/form-data">
				<input type="text" name="id" value="${insertBook.id}" hidden="true" placeholder="Book id"> <br>
				<input type="text" name="name" value="${insertBook.name}" placeholder="Book Name"> <br>
				<input type="text" name="author" value="${insertBook.author}" placeholder="Author"> <br>
				<input type="text" name="publisher" value="${insertBook.publisher}" placeholder="Publisher"> <br>
				<input type="text" name="type" value="${insertBook.type}" placeholder="Type"> <br>
				<input type="text" name="language" value="${insertBook.language}" placeholder="Language"> <br>
				<input type="text" name="description" value="${insertBook.description}" placeholder="Description"> <br>
				<input type="number" name="quantity" value="${insertBook.quantity}" placeholder="Quantity"> <br>
				<input type="file" name="image"><br>
				<input type="submit" value="Update">
			</form>
		</div>
	</div>
	
</body>
</html>