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
	                <p class="breadcrumbs mb-0"><span class="mr-3">Post 
	                    <i class="ion-ios-arrow-forward"></i></span> <span>Update</span></p>
	                <h1 class="mb-3 bread">공고 수정</h1>
	            </div>
	        </div>
	    </div>
	</div>

	<section class="ftco-section bg-light">
	    <div class="container">
	        <div class="row align-items-center justify-content-center">
	
	            <div class="col-md-12 col-lg-8 mb-5">
	                
	                <form action="PostInsert.do" method="post" class="p-5 bg-white">
                        <div class="form-group" align="left">
                            <label >제목</label>
                            <input type="text" class="form-control" id="TITLE" name="TITLE">
                        </div>
                        <div class="form-group" align="left">
                            <label class="mr-4">모집인원</label>
                            <input type="text" class="form-control" id="PER" name="PER" style="width: 20%; display: inline;">
                            <label class="mr-1">명</label>
                        </div>
                        <div class="form-group" align="left">
                            <label >날짜</label>
                            <input type="date" class="form-control" id="DATETIME" name="DATETIME" >
                        </div>
                        <div class="form-group" align="left">
                            <input type="text" class="form-control mr-1" id="HOUR" name="HOUR" style="width: 40%; display: inline;">
                            <label class="mr-4">시</label>
                            <input type="text" class="form-control mr-1" id="MIN" name="MIN" style="width: 40%; display: inline;">
                            <label class="">분</label>
                        </div>
                        <div class="form-group" align="left">
                            <label >모임 장소</label><br>
                            <input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호"
                                name="ZIP_CODE" id="ZIP_CODE" type="text" >
                            <button type="button" class="btn btn-warning" onclick="goPopup();">
                            <i class="fa fa-search"></i> 우편번호 찾기</button>
                        </div>
                        <div class="form-group">
                            <input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="ADDRESS"
                                id="ADDRESS" type="text"  />
                        </div>
                        <div class="form-group">
                            <input class="form-control" placeholder="상세주소" name="ADDRESS_DETAIL" id="ADDRESS_DETAIL" type="text" />
                        </div>
                        <div class="form-group" align="left">
                            <label for="name">내용</label>
                            <input type="textarea" class="form-control" id="CONTENT" name="CONTENT">
                        </div>
                        <div class="form-group" align="center">
                            <button type="submit" class="btn btn-primary" id="registerBtn">수정</button>
	                        <!-- <button type="button" class="btn btn-outline-dark"
	                            onclick="location.href = 'loginPage.do';">취소</button> -->
                        </div>
	                </form>
	            </div>
	        </div>
	    </div>
	</section>
	

	<%@ include file="/includes/footer.jsp" %>
	

	<%@ include file="/includes/scripts.jsp" %>

</body>

</html>