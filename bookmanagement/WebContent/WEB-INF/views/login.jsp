<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resource/css/Style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header4.jsp"></jsp:include>
		<div id="content">
			<div class="login">
				<form action="${pageContext.request.contextPath}/login" method="post">
					<h2 class="form-title">Log In or <a href="${pageContext.request.contextPath}/register" class="sign"><b>Register</b></a></h2>
					<div style="color: red">${errorMessage}</div>
					<label class="form-label">Username</label> <br>
					<input type="text" name="username" class="form-input"> <br>
					<label class="form-label">Password</label> <br>
					<input type="password" name="password" class="form-input"> <br>
					<input type="submit" value="Log In" class="form-submit">
					<div id="forgotpassword"><p><a href="${pageContext.request.contextPath}/register">Forgot password?</a></p></div>
					<div>
						<p id="or"><i><strong>OR</strong></i></p>
					</div>
					<div>
						<a href="${pageContext.request.contextPath}/home" class="fa fa-facebook"></a>
						<a href="${pageContext.request.contextPath}/home" class="fa fa-google"></a>
						<a href="${pageContext.request.contextPath}/home" class="fa fa-twitter"></a>
					</div>
				</form>
				
			</div>
		</div>
	</div>

</body>
</html>