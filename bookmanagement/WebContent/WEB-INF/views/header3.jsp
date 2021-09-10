
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
<div id="menu">
	<ul>
		<li><a href="${pageContext.request.contextPath}/home">Home</a></li>
		<li><a href="${pageContext.request.contextPath}/administration">Administration</a></li>
		<li><a href="${pageContext.request.contextPath}/history">History</a></li>
		<li><a href="${pageContext.request.contextPath}/contact" class="active">Contact</a></li>
		<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
		<!-- <li><a href="#">Other</a>
			<ul class="sub-menu">
				<li><a href="#">Văn Học</a></li>
				<li><a href="#">Tiểu thuyết</a></li>
				<li><a href="#">Khoa học</a></li>
			</ul>
		</li> -->
	</ul>
	<span id="user">${username}</span>
	<span id="search-btn"><a href="${pageContext.request.contextPath}/search" class="fasearch fa fa-search"></a></span>
</div>
