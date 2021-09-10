<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resource/css/Style.css">
<title>Register</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<div class="register">
				<form action="${pageContext.request.contextPath}/register" method="post">
					<h2 class="form-title">Register or <a href="${pageContext.request.contextPath}/login" class="sign"><b>Log In</b></a></h2>
					<div style="color: red">${errorMessage}</div>
					<label class="form-label">Username</label><br> 
					<input type="text" name="username" class="form-input"><br>
					<!-- <label class="form-label">E-mail</label><br> 
					<input type="text" class="form-input"><br>  -->
					<label class="form-label">Password</label><br>
					<input type="password" name="password" class="form-input"><br>  
					<label class="form-label">Confirm Password</label><br>
					<input type="password" name="confirmpassword" class="form-input"><br>
					<input type="submit" value="Register" class="form-submit">
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>