<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Every Football</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="resources/css/open-iconic-bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/animate.css">

	<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="resources/css/magnific-popup.css">

	<link rel="stylesheet" href="resources/css/aos.css">

	<link rel="stylesheet" href="resources/css/ionicons.min.css">

	<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="resources/css/jquery.timepicker.css">


	<link rel="stylesheet" href="resources/css/flaticon.css">
	<link rel="stylesheet" href="resources/css/icomoon.css">
	<link rel="stylesheet" href="resources/css/style.css">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container-fluid px-md-4	">
			<a class="navbar-brand" href="./home.html">Every Football</a>
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
					<li class="nav-item cta mr-md-1"><a href="./users/login.jsp" class="nav-link">Login</a></li>
					<li class="nav-item cta mr-md-1 cta-colored"><a href="./users/mypage.jsp" class="nav-link">MyPage</a></li>
					<li class="nav-item cta mr-md-1"><a href="./users/logout.html" class="nav-link">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<div class="hero-wrap img" style="background-image: url(images/bg_1.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row d-md-flex no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-10 d-flex align-items-center justify-content-center ftco-animate">
					<div class="text text-center pt-5 mt-md-5">
						<p class="mb-4">부족한 인원을 채워드립니다!!</p>
						<h1 class="mb-5">모두의 용병 웹 서비스</h1>
						<div class="ftco-counter ftco-no-pt ftco-no-pb">
							<div class="row">
								<div class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
									<div class="block-18">
										<div class="text d-flex">
											<div class="icon mr-2">
												<span class="flaticon-worldwide"></span>
											</div>
											<div class="desc text-left">
												<strong class="number" data-number="46">0</strong>
												<span>Countries</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
									<div class="block-18 text-center">
										<div class="text d-flex">
											<div class="icon mr-2">
												<span class="flaticon-visitor"></span>
											</div>
											<div class="desc text-left">
												<strong class="number" data-number="450">0</strong>
												<span>Companies</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
									<div class="block-18 text-center">
										<div class="text d-flex">
											<div class="icon mr-2">
												<span class="flaticon-resume"></span>
											</div>
											<div class="desc text-left">
												<strong class="number" data-number="80000">0</strong>
												<span>Active Employees</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="ftco-search my-md-5">
							<div class="row">
								<div class="col-md-12 tab-wrap">

									<div class="tab-content p-4" id="v-pills-tabContent">

										<div class="tab-pane fade show active" id="v-pills-1" role="tabpanel"
											aria-labelledby="v-pills-nextgen-tab">
											<form action="postlist.do" method="post" class="search-job">
												<div class="row no-gutters">
													<div class="col-md mr-md-2">
														<div class="form-group">
															<div class="form-field">
																<div class="icon"><span class="icon-briefcase"></span>
																</div>
																<input type="text" class="form-control"
																	placeholder="eg. Garphic. Web Developer">
															</div>
														</div>
													</div>
													<div class="col-md mr-md-2">
														<div class="form-group">
															<div class="form-field">
																<div class="select-wrap">
																	<div class="icon"><span
																			class="ion-ios-arrow-down"></span></div>
																	<select name="" id="" class="form-control">
																		<option value="">Category</option>
																		<option value="">Full Time</option>
																		<option value="">Part Time</option>
																		<option value="">Freelance</option>
																		<option value="">Internship</option>
																		<option value="">Temporary</option>
																	</select>
																</div>
															</div>
														</div>
													</div>
													<div class="col-md mr-md-2">
														<div class="form-group">
															<div class="form-field">
																<div class="icon"><span class="icon-map-marker"></span>
																</div>
																<input type="text" class="form-control"
																	placeholder="Location">
															</div>
														</div>
													</div>
													<div class="col-md">
														<div class="form-group">
															<div class="form-field">
																<button type="submit"
																	class="form-control btn btn-primary">Search</button>
															</div>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 pr-lg-4">
				<!-- <div class="col-lg-9 pr-lg-4"> -->
					<div class="row">
						<div class="col-md-12 ftco-animate text-lg-right">
							<a href="post/postinsert.jsp" class="btn btn-primary mb-4">공고 등록</a>
						</div><!-- end -->

						<c:forEach items="${postlist}" var="postlist">
						<div class="col-md-12 ftco-animate" onclick="location.href = './post/postDetail.jsp?num=${ postlist.ID}';">
							<div class="job-post-item p-4 d-block d-lg-flex align-items-center">
								<div class="one-third mb-4 mb-md-0">
									<div class="job-post-item-header align-items-center">
										<span class="subadge">${ postlist.ID}</span>
										<h2 class="mr-3 text-black"><a href="#">${ postlist.DATETIME}</a></h2>
									</div>
									<div class="job-post-item-body d-block d-md-flex">
										<div class="mr-3"><span class="icon-layers"></span> <a href="#">${ postlist.WRITER}</a></div>
										<div><span class="icon-my_location"></span> <span>${ postlist.ADDRESS}</span></div>
									</div>
								</div>
							</div>
						</div><!-- end -->
						</c:forEach>
					</div>
					<div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul>
									<li><a href="#">&lt;</a></li>
									<li class="active"><span>1</span></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&gt;</a></li>
								</ul>
							</div>
						</div>
					</div>
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
						<script>document.write(new Date().getFullYear());</script> All rights reserved | This template
						is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a
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


	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/aos.js"></script>
	<script src="resources/js/jquery.animateNumber.min.js"></script>
	<script src="resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="resources/js/google-map.js"></script>
	<script src="resources/js/main.js"></script>

</body>

</html>