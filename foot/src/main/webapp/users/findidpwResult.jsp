<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	
<%@ include file="/includes/header.jsp" %>

<body>
	<%@ include file="/includes/navbar.jsp" %>
	
	<div class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');"
	    data-stellar-background-ratio="0.5">
	    <div class="overlay"></div>
	    <div class="container">
	        <div class="row no-gutters slider-text align-items-end justify-content-start">
	            <div class="col-md-12 ftco-animate text-center mb-5">
	                <p class="breadcrumbs mb-0"><span class="mr-3">USER 
	                    <i class="ion-ios-arrow-forward"></i></span> <span>ID/PW</span></p>
	                <h1 class="mb-3 bread">ID/PW 찾기</h1>
	            </div>
	        </div>
	    </div>
	</div>
	
	<section class="ftco-section bg-light">
	    <div class="container">
	        <div class="row align-items-center justify-content-center">
	            <div class="col-md-12 col-lg-8 mb-5">
					<h1>${findMessage}</h1>
					<br>${userID}
					<br>${userPASSWORD}
						<button type="button" class="btn btn-outline-dark"
		                            onclick="location.href = 'loginPage.do';">로그인 페이지</button>
	            </div>
	        </div>
	    </div>
	</section>
	

	<%@ include file="/includes/footer.jsp" %>
	

	<%@ include file="/includes/scripts.jsp" %>

</body>

</html>
