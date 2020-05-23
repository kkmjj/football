<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/includes/header.jsp"%>

<body>
	<%@ include file="/includes/navbar.jsp"%>

	<div class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-start">
				<div class="col-md-12 ftco-animate text-center mb-5">
					<p class="breadcrumbs mb-0">
						<span class="mr-3">USER <i class="ion-ios-arrow-forward"></i></span> 
						<span>Sign Up</span>
					</p>
					<h1 class="mb-3 bread">Sign Up</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row align-items-center justify-content-center">

				<div class="col-md-12 col-lg-8 mb-5">

					<form action="../signupUser.do" method="post" class="p-5 bg-white">
						<div class="form-group" align="left">
							<label for="name">이름</label> <input type="text"
								class="form-control" id="NAME" name="NAME" placeholder="">
						</div>
						<!-- ID중복검사, 비밀번호 확인 추가 -->
						<div class="form-group" align="left">
							<label for="">아이디</label> <input type="text" class="form-control"
								id="ID" name="ID" onkeyup="javascript:idcheck();" placeholder="">
							<span id="idmsg" class="msg"></span>

							<div id="resultview"></div>
						</div>
						<div class="form-group" align="left">
							<label for="">비밀번호</label> <input type="password"
								class="form-control" id="pwd1" name="PASSWORD" placeholder="">
						</div>
						<div class="form-group" align="left">
							<label for="">비밀번호재입력</label> <input type="password"
								class="form-control" id="pwd2" name="passcheck" placeholder="">
						</div>
						<div class="alert alert-success" id="alert-success">비밀번호가
							일치합니다.</div>
						<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지
							않습니다.</div>
						<div class="form-group" align="left">
							<label for="gender" class="mr-2">성별</label> <input type="radio"
								name="GENDER" value="M" class="ml-2" checked /> 남자 <input
								type="radio" name="GENDER" value="F" class="ml-2" /> 여자
						</div>
						<div class="form-group" align="left">
							<label for="tel">전화번호</label>
							<div id="tel" class="custom-control-inline">
								<select class="form-control" id="TEL1" name="TEL1">
									<option value="010">010</option>
									<option value="02">02</option>
									<option value="031">031</option>
									<option value="032">032</option>
									<option value="041">041</option>
									<option value="051">051</option>
									<option value="061">061</option>
								</select> _ <input type="text" class="form-control" id="TEL2" name="TEL2"
									onkeydown='return onlyNumber(event)'
									onkeyup='removeChar(event)' maxlength=4> _ <input
									type="text" class="form-control" id="TEL3" name="TEL3"
									onkeydown='return onlyNumber(event)'
									onkeyup='removeChar(event)' maxlength=4>
							</div>
						</div>
						<div class="form-group" align="left">
							<label for="">주소</label><br> <input class="form-control"
								style="width: 40%; display: inline;" placeholder="우편번호"
								name="ZIP_CODE" id="ZIP_CODE" type="text" readonly>
							<button type="button" class="btn btn-warning"
								onclick="goPopup();">
								<i class="fa fa-search"></i> 우편번호 찾기
							</button>
						</div>
						<div class="form-group">
							<input class="form-control" style="top: 5px;"
								placeholder="도로명 주소" name="ADDRESS" id="ADDRESS" type="text"
								readonly />
						</div>
						<div class="form-group">
							<input class="form-control" placeholder="상세주소"
								name="ADDRESS_DETAIL" id="ADDRESS_DETAIL" type="text" />
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


	<%@ include file="/includes/footer.jsp"%>


	<%@ include file="/includes/scripts.jsp"%>

</body>

</html>

