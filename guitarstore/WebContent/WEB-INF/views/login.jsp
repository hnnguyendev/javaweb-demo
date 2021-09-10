<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resource/css/style.css">
<title>Login</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<div class="login">
				<form action="${pageContext.request.contextPath}/login" method="post">
					<h2 class="form-title">Log In or <a href="${pageContext.request.contextPath}/register" class="sign"><b>Register</b></a></h2>
					<div style="color: red">${errorMessage}</div>
					<input type="text" name="username" placeholder="Username" class="form-input"> <br>
					<input type="password" name="password" placeholder="Password" class="form-input"> <br>
					<input type="submit" value="Log In" class="form-submit">
					<div id="forgotpassword"><a href="${pageContext.request.contextPath}/register">Forgot password?</a></div>
				</form>
				
			</div>
		</div>
	</div>

</body>
</html>