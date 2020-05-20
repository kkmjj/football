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
	                <form action="findidpw.do" method="post" class="p-5 bg-white">
                        <div class="form-group">
                            <label for="name1">이름</label>
                            <input type="text" class="form-control" id="NAME" name="NAME">
                        </div>
                            <div class="form-group">
                                <label for="tel" class="mr-4">전화번호</label>
                                <div id="tel" class="custom-control-inline">
                                    <select class="form-control" id="TEL1" name="TEL1">
                                        <option value="010">010</option>
                                        <option value="02">02</option>
                                        <option value="031">031</option>
                                        <option value="032">032</option>
                                        <option value="041">041</option>
                                        <option value="051">051</option>
                                        <option value="061">061</option>
                                    </select> _
                                    <input type="text" class="form-control" id="TEL2" name="TEL2"
                                        onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' maxlength=4> _
                                    <input type="text" class="form-control" id="TEL3" name="TEL3"
                                        onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' maxlength=4>
                                </div>
                            </div>
                            <div class="row mt-4 justify-content-center">
		                        <button type="submit" class="btn btn-primary mr-4">찾기</button>
		                        <button type="button" class="btn btn-outline-dark"
		                            onclick="location.href = 'loginPage.do';">취소</button>
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
