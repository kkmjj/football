<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Every Matching</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/animate.css">

    <link rel="stylesheet" href="../resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../resources/css/magnific-popup.css">

    <link rel="stylesheet" href="../resources/css/aos.css">

    <link rel="stylesheet" href="../resources/css/ionicons.min.css">

    <link rel="stylesheet" href="../resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../resources/css/jquery.timepicker.css">


    <link rel="stylesheet" href="../resources/css/flaticon.css">
    <link rel="stylesheet" href="../resources/css/icomoon.css">
    <link rel="stylesheet" href="../resources/css/style.css">
</head>


<body>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container-fluid px-md-4	">
	        <a class="navbar-brand" href="../index.jsp">Every Football</a>
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
	            aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	            <span class="oi oi-menu"></span> Menu
	        </button>
	
	        <div class="collapse navbar-collapse" id="ftco-nav">
	            <ul class="navbar-nav ml-auto">
	                <!-- <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
	                <li class="nav-item"><a href="browsejobs.html" class="nav-link">Browse Jobs</a></li>
	                <li class="nav-item"><a href="candidates.html" class="nav-link">Canditates</a></li>
	                <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	                <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li> -->
	                <li class="nav-item cta mr-md-1"><a href="./login.jsp" class="nav-link">Login</a></li>
	                <li class="nav-item cta cta-colored"><a href="./mypage.jsp" class="nav-link">MyPage</a></li>
	                <li class="nav-item cta mr-md-1"><a href="/logout.html" class="nav-link">Logout</a></li>
	            </ul>
	        </div>
	    </div>
	</nav>
	<!-- END nav -->
	
	<div class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');"
	    data-stellar-background-ratio="0.5">
	    <div class="overlay"></div>
	    <div class="container">
	        <div class="row no-gutters slider-text align-items-end justify-content-start">
	            <div class="col-md-12 ftco-animate text-center mb-5">
	                <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.jsp">USER 
	                    <i class="ion-ios-arrow-forward"></i></a></span> <span>Login</span></p>
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
	                <!-- <form method="POST" class="form-auth-small" action="/user/login"> -->
	                    <div class="form-group">
	                        <label for="signin-id" class="control-label sr-only">ID</label>
	                        <input type="text" class="form-control" id="usr" value="" placeholder="ID" name="ID">
	                    </div>
	                    <div class="form-group">
	                        <label for="signin-password" class="control-label sr-only">Password</label>
	                        <input type="password" class="form-control" id="pwd" value="" placeholder="Password" name="PASSWORD">
	                    </div>
	
	                    <div class="row form-group">
	                        <div class="col-md-12">
	                            <!-- <input type="submit" value="로그인" class="btn btn-primary  py-2 px-5"> -->
									<button type="submit" class="btn btn-primary btn-block">로그인</button>
	                        </div>
	                    </div>
	
	                    <a href="signup.jsp" class="mr-2">회원가입</a>
	                    <a href="findidpw.jsp" class="">아이디/비밀번호 찾기</a>
	
	                </form>
	            </div>
	        </div>
	    </div>
	</section>
	
	<footer class="ftco-footer ftco-bg-dark ftco-section">
	    <div class="container">
	        <div class="row">
	            <div class="col-md-12 text-center">
	                <p>
	                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	                    Copyright &copy;
	                    <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is
	                    made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a
	                        href="https://colorlib.com" target="_blank">Colorlib</a>
	                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	                </p>
	            </div>
	        </div>
	    </div>
	</footer>


	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
	        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
	        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
	            stroke="#F96D00" /></svg></div>
	
	
	<script src="../resources/js/jquery.min.js"></script>
	<script src="../resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="../resources/js/popper.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/jquery.easing.1.3.js"></script>
	<script src="../resources/js/jquery.waypoints.min.js"></script>
	<script src="../resources/js/jquery.stellar.min.js"></script>
	<script src="../resources/js/owl.carousel.min.js"></script>
	<script src="../resources/js/jquery.magnific-popup.min.js"></script>
	<script src="../resources/js/aos.js"></script>
	<script src="../resources/js/jquery.animateNumber.min.js"></script>
	<script src="../resources/js/scrollax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="../resources/js/google-map.js"></script>
	<script src="../resources/js/main.js"></script>

</body>

</html>
