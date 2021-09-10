<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/css/Style.css">
<title>Contact</title>
</head>
<body>
	<div id="container">
		<jsp:include page="header3.jsp"></jsp:include>
		<div id="content">
			<form action="${pageContext.request.contextPath}/contact" method="post">
				<div id="leftside">
					<label class="form-label">First Name</label><br>
					<input type="text" name="firstname" class="form-input"><br>
					<label class="form-label">Last Name</label><br>
					<input type="text" name="lastname" class="form-input"><br>
					<label class="form-label">Contact email*</label><br>
					<input type="text" name="email" class="form-input"><br>
					<textarea rows="15" cols="55" name="message" placeholder="Message" class="form-textarea"></textarea>
					<input type="submit" value="Submit" class="form-submit">
				</div>	
			</form>
			<div id="rightside">
				<h2 style="margin-top: 150px;">Sweet Home</h2>
				<p>Da Nang, Viet nam</p>
				<p>41, Le Duan street</p>
				<p>+84 123 456 789</p>
				<a>contact@brand.com</a>
			</div>
		</div>
	</div>
	
</body>
</html>