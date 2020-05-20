<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container-fluid px-md-4	">
			<a class="navbar-brand" href="./index.jsp">Every Football</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
				aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
			<% String user = (String)session.getAttribute("userID"); 
			if(user != null) { %>
				<div class="row d-md-flex no-gutters slider-text align-items-center justify-content-center">
				<h5 class="mr-2 align-items-center justify-content-center">${userNAME}님 환영합니다.</h5>
				</div>
			<% } %>
				<ul class="navbar-nav ml-auto">
					<!-- <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="browsejobs.html" class="nav-link">Browse Jobs</a></li>
					<li class="nav-item"><a href="candidates.html" class="nav-link">Canditates</a></li>
					<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
					<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li> -->
					<% if(user == null) { %>
					<li class="nav-item cta mr-md-1"><a href="loginPage.do" class="nav-link">Login</a></li>
					<% } else { %>
					<li class="nav-item cta mr-md-1 cta-colored"><a href="myPages.do" class="nav-link">MyPage</a></li>
					<li class="nav-item cta mr-md-1"><a href="logoutPage.do" class="nav-link">Logout</a></li>
					<% } %>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->