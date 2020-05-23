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
						<span>MY PAGE</span>
					</p>
					<h1 class="mb-3 bread">My Page</h1>
				</div>
			</div>
		</div>
	</div>
	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-md-12 col-lg-10 p-5 bg-white mb-5">
					<form action="userUpdate.do" method="post" class="">
						<h3 class="page-title">개인 정보</h3>
						<div class="form-group" align="left">
							<label for="">아이디</label> <input type="text" class="form-control"
								id="ID" name="ID" onkeyup="javascript:idcheck();"
								value="${user.ID}" readonly> <span id="idmsg"
								class="msg"></span>

							<div id="resultview"></div>
						</div>
						<div class="form-group" align="left">
							<label for="">비밀번호</label> <input type="password"
								class="form-control" id="pwd1" name="PASSWORD"
								value="${user.PASSWORD}">
						</div>
						<div class="form-group" align="left">
							<label for="">비밀번호재입력</label> <input type="password"
								class="form-control" id="pwd2" name="passcheck" value="">
						</div>
						<div class="alert alert-success" id="alert-success">비밀번호가
							일치합니다.</div>
						<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지
							않습니다.</div>
						<div class="form-group" align="left">
							<label for="name">이름</label> <input type="text"
								class="form-control" id="NAME" name="NAME" value="${user.NAME}">
						</div>
						<div class="form-group" align="left">
							<label for="gender" class="mr-2">성별</label>
							<c:if test="${userGENDER == 'M'}"> 
							<input type="radio" name="GENDER" value="M" class="ml-2" checked /> 남자 
							<input type="radio" name="GENDER" value="F" class="ml-2" /> 여자
							</c:if>
							<c:if test="${userGENDER == 'F'}"> 
							<input type="radio" name="GENDER" value="M" class="ml-2" /> 남자 
							<input type="radio" name="GENDER" value="F" class="ml-2" checked /> 여자
							</c:if>
							<c:if test="${userGENDER == null}"> 
							<input type="radio" name="GENDER" value="M" class="ml-2" /> 남자 
							<input type="radio" name="GENDER" value="F" class="ml-2" /> 여자
							</c:if>
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
									onkeyup='removeChar(event)' maxlength=4 value="${user.TEL2}">
								_ <input type="text" class="form-control" id="TEL3" name="TEL3"
									onkeydown='return onlyNumber(event)'
									onkeyup='removeChar(event)' maxlength=4 value="${user.TEL3}">
							</div>
						</div>
						<div class="form-group" align="left">
							<label for="">주소</label><br> <input class="form-control"
								style="width: 40%; display: inline;" name="ZIP_CODE"
								id="ZIP_CODE" type="text" value="${user.ZIP_CODE}" readonly>
							<button type="button" class="btn btn-warning"
								onclick="goPopup();">
								<i class="fa fa-search"></i> 우편번호 찾기
							</button>
						</div>
						<div class="form-group">
							<input class="form-control" style="top: 5px;" name="ADDRESS"
								id="ADDRESS" type="text" value="${user.ADDRESS}" readonly />
						</div>
						<div class="form-group">
							<input class="form-control" name="ADDRESS_DETAIL"
								id="ADDRESS_DETAIL" type="text" value="${user.ADDRESS_DETAIL}" />
						</div>
						<div class="form-group" align="center">
							<button type="submit" class="btn btn-primary" id="registerBtn">수정</button>
						</div>
					</form>
				</div>
			</div>
			<div class="row align-items-center justify-content-center">
				<div class="col-md-12 col-lg-10 p-5 bg-white">
					<h3 class="page-title">등록 공고 정보</h3>
					<div class="panel">
						<div class="panel-body">
							<table class="table table-hover">
								<colgroup>
									<col width="10%">
									<col width="*">
									<col width="*">
									<col width="*">
									<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>No.</th>
										<th>날짜</th>
										<th>장소</th>
										<th>모집인원</th>
										<th>상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${myPostList}" var="myPostList">
										<tr>
											<td>${ myPostList.ID}</td>
											<td>${ myPostList.DATETIME}</td>
											<td>${ myPostList.ADDRESS}</td>
											<td>${ myPostList.PER}</td>
											<c:if test="${myPostList.STATUS == 'Y'}"><td>모집중</td></c:if>
											<c:if test="${myPostList.STATUS == 'N'}"><td>모집 마감</td></c:if>
											<c:if test="${myPostList.STATUS == 'E'}">
											<td><a href="evaluPage.do" class="btn btn-sm btn-secondary">평가 등록</a></td>
											</c:if>
											<c:if test="${myPostList.STATUS == 'O'}"><td>평가 완료</td></c:if>
											<c:if test="${myPostList.STATUS == 'C'}"><td>경기 취소</td></c:if>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="row align-items-center justify-content-center">
				<div class="col-md-12 col-lg-10 p-5 bg-white">
					<h3 class="page-title">신청 정보</h3>
					<div class="panel">
						<div class="panel-body">
							<table class="table table-hover">
								<colgroup>
									<col width="10%">
									<col width="*">
									<col width="*">
									<col width="*">
									<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>No.</th>
										<th>공고 제목</th>
										<th>신청 날짜</th>
										<th>신청 내용</th>
										<th>상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${myApplyList}" var="myApplyList">
										<tr>
											<td>${ myApplyList.ID}</td>
											<td>${ myApplyList.POST_TITLE}</td>
											<td>${ myApplyList.DATETIME}</td>
											<td>${ myApplyList.CONTENT}</td>
											<c:if test="${myApplyList.STATUS == 'Y'}"><td>신청 완료</td></c:if>
											<c:if test="${myApplyList.STATUS == 'N'}"><td>수락</td></c:if>
											<c:if test="${myApplyList.STATUS == 'C'}"><td>거절</td></c:if>
											<c:if test="${myApplyList.STATUS == 'E'}">
											<td><a href="evaluPage.do" class="btn btn-sm btn-secondary">평가 등록</a></td>
											</c:if>
											<c:if test="${myApplyList.STATUS == 'O'}"><td>평가 완료</td></c:if>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="/includes/footer.jsp"%>
	<%@ include file="/includes/scripts.jsp"%>
</body>

</html>