
<div id="header">
	<div id="top-header">
		<div id="top-header-left">
			<h1>Guitar Store</h1>
		</div>
		<div id="top-header-right">
			<p>WELCOME TO GREATEST GUITAR STORE IN THE WORLD</p>
		</div>
	</div>
	<div id="menu">
		<ul>
			<li><a href="${pageContext.request.contextPath}/home">Home</a></li>
			<li><a href="${pageContext.request.contextPath}/administration">Admin</a></li>
			<li><a href="${pageContext.request.contextPath}/userOrder">Orders</a></li>
			<li><a href="#">Blogs</a></li>
			<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
			<!-- <li><a href="#">Other</a>
				<ul class="sub-menu">
					<li><a href="#">Văn Học</a></li>
					<li><a href="#">Tiểu thuyết</a></li>
					<li><a href="#">Khoa học</a></li>
				</ul>
			</li> -->
		</ul>
		<a href="${pageContext.request.contextPath}/logout" id="user">${username}</a>
	</div>
</div>
