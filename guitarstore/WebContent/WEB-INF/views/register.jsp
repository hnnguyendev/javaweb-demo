<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resource/css/style.css">
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
					<input type="text" name="fullname" placeholder="Fullname" class="form-input"><br>
					<input type="text" name="email" placeholder="Email" class="form-input"><br>
					<input type="text" name="phone" placeholder="Phone" class="form-input"><br>
					<input type="text" name="username" placeholder="Username" class="form-input"><br>
					<input type="password" name="password" placeholder="Password" class="form-input"><br>  
					<input type="password" name="confirmpassword" placeholder="Confirm Password" class="form-input"><br>
					<input type="submit" value="Register" class="form-submit">
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>
