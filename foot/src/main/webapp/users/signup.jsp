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
	                <li class="nav-item cta mr-md-1"><a href="./users/login.html" class="nav-link">Login</a></li>
	                <li class="nav-item cta cta-colored"><a href="./users/mypage.html" class="nav-link">MyPage</a></li>
	                <li class="nav-item cta mr-md-1"><a href="/users/logout.html" class="nav-link">Logout</a></li>
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
	                    <i class="ion-ios-arrow-forward"></i></a></span> <span>Sign Up</span></p>
	                <h1 class="mb-3 bread">Sign Up</h1>
	            </div>
	        </div>
	    </div>
	</div>

	<section class="ftco-section bg-light">
	    <div class="container">
	        <div class="row align-items-center justify-content-center">
	
	            <div class="col-md-12 col-lg-8 mb-5">
	                
	                <form action="signupUser.do" method="post" class="p-5 bg-white">
                            <div class="form-group" align="left">
                                <label for="name">이름</label>
                                <input type="text" class="form-control" id="NAME" name="NAME" placeholder="">
                            </div>
                            <!-- ID중복검사, 비밀번호 확인 추가 -->
                            <div class="form-group" align="left">
                                <label for="">아이디</label>
                                <input type="text" class="form-control" id="ID" name="ID"
                                    onkeyup="javascript:idcheck();" placeholder="">
                                <span id="idmsg" class="msg"></span>

                                <div id="resultview"></div>
                            </div>
                            <div class="form-group" align="left">
                                <label for="">비밀번호</label>
                                <input type="password" class="form-control" id="pwd1" name="pass" placeholder="">
                            </div>
                            <div class="form-group" align="left">
                                <label for="">비밀번호재입력</label>
                                <input type="password" class="form-control" id="pwd2" name="passcheck" placeholder="">
                            </div>
                            <div class="form-group" align="left">
                                <label for="gender" class="mr-2">성별</label>
                                <input type="radio" name="GENDER" value="M" class="ml-2" checked/> 남자 
                                <input type="radio" name="GENDER" value="F" class="ml-2" /> 여자
                            </div>
                            <div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
                            <div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
                            <div class="form-group" align="left">
                                <label for="tel">전화번호</label>
                                <div id="tel" class="custom-control-inline">
                                    <select class="form-control" id="tel1" name="tel1">
                                        <option value="010">010</option>
                                        <option value="02">02</option>
                                        <option value="031">031</option>
                                        <option value="032">032</option>
                                        <option value="041">041</option>
                                        <option value="051">051</option>
                                        <option value="061">061</option>
                                    </select> _
                                    <input type="text" class="form-control" id="tel2" name="tel2"
                                        onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' maxlength=4> _
                                    <input type="text" class="form-control" id="tel3" name="tel3"
                                        onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' maxlength=4>
                                </div>
                            </div>
                            <div class="form-group" align="left">
                                <label for="">주소</label><br>
                                <input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호"
                                    name="addr1" id="addr1" type="text" readonly="readonly">
                                <button type="button" class="btn btn-warning" onclick="execPostCode();">
                                <i class="fa fa-search"></i> 우편번호 찾기</button>
                            </div>
                            <div class="form-group">
                                <input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="addr2"
                                    id="addr2" type="text" readonly="readonly" />
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="상세주소" name="addr3" id="addr3" type="text" />
                            </div>
                            <div class="form-group" align="center">
                                <button type="submit" class="btn btn-primary" id="registerBtn">회원가입</button>
                                <button type="reset" class="btn btn-warning">초기화</button>
                            </div>
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
    <script src="../resources/js/signup.js"></script>
    <script src="../resources/js/addressapi.js"></script>

</body>

</html>

