<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="/includes/header.jsp" %>

<body>
	<%@ include file="/includes/navbar.jsp" %>

	<div class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-start">
				<div class="col-md-12 ftco-animate text-center mb-5">
					<p class="breadcrumbs mb-0">
						<span class="mr-3"><a href="index.jsp">USER 
						<i class="ion-ios-arrow-forward"></i></a></span>
						<span>Login</span>
					</p>
					<h1 class="mb-3 bread">Login</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row align-items-center justify-content-center">

				<div class="col-md-12 col-lg-8 mb-5">

					<form action="login.do" method="post" class="p-5 bg-white">
						<div class="form-group">
							<label for="signin-id" class="control-label sr-only">ID</label> <input
								type="text" class="form-control" id="usr" value=""
								placeholder="ID" name="ID">
						</div>
						<div class="form-group">
							<label for="signin-password" class="control-label sr-only">Password</label>
							<input type="password" class="form-control" id="pwd" value=""
								placeholder="Password" name="PASSWORD">
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <input type="submit" value="로그인" class="btn btn-primary  py-2 px-5"> -->
								<button type="submit" class="btn btn-primary btn-block">로그인</button>
							</div>
						</div>

						<a href="signup.do" class="mr-2">회원가입</a> 
						<a href="findidpw.do" class="">아이디/비밀번호 찾기</a>

					</form>
				</div>
			</div>
		</div>
	</section>


	<%@ include file="/includes/footer.jsp" %>
	

	<%@ include file="/includes/scripts.jsp" %>

</body>

</html>
