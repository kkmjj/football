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
						<span class="mr-3">Post <i class="ion-ios-arrow-forward"></i></span>
						<span>Detail</span>
					</p>
					<h1 class="mb-3 bread">공고 정보</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section bg-light">
		<div class="container">

			<div class="breadcrumb">
				<div class="col-9">
					<h3>${ postdetail.TITLE}</h3>
				</div>
				<c:if test="${postdetail.WRITER == userID}">
					<div class="row col-3 align-items-center justify-content-end">
						<a href="PostUpdatePage.do"><button
								class="btn btn-dark btn-sm mr-2" type="button" id="modify">수정</button></a>
						<a href="PostStatusD.do?id=${postdetail.ID}"><button
								class="btn btn-dark btn-sm mr-2" type="button" id="delete">삭제</button></a>
					</div>
				</c:if>
			</div>

			<div class="row align-items-center justify-content-center">
				<div class="col-md-12 col-lg-12 mb-5">
					<div class="p-5 bg-white">
						<table class="table" style="font-size: 30px; color: black;">
							<colgroup>
								<col width="25%">
								<col width="*">
							</colgroup>
							<tr>
								<td>
									<h5>경기일</h5>
								</td>
								<td>
									<h5>${postdetail.DATETIME}${postdetail.HOUR}시
										${postdetail.MIN}분</h5>
								</td>
							</tr>
							<tr>
								<td>
									<h5>경기 장소</h5>
								</td>
								<td>
									<h5>${postdetail.ADDRESS}${postdetail.ADDRESS_DETAIL}</h5>
								</td>
							</tr>
							<tr>
								<td>
									<h5>모집 인원</h5>
								</td>
								<td>
									<h5>${postdetail.PER}명</h5>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
						</table>
						<table>
							<tr>
								<td style="vertical-align: text-top;">
									<h5>주최자 정보</h5>
								</td>
								<td>
									<ul>
										<li>아이디 :${ postdetail.WRITER}</li>
										<li>이름 : ${ postdetail.NAME}</li>
										<li>평균 평점 : 75점</li>
									</ul>
								</td>
							</tr>
						</table>

						<div style="padding: 15px; border-top: 1.5px solid gray;">
							<h3>상세설명</h3>
							<div id="content"
								style="overflow-y: scroll; min-height: 300px; max-height: 700px">
								${ postdetail.CONTENT}</div>
						</div>
						<c:if test="${postdetail.WRITER == userID}">
							<div class="" align="center">
								<a href="PostStatusN.do?id=${postdetail.ID}"
									class="btn btn-danger">모집 마감</a>

							</div>
						</c:if>
					</div>
				</div>
			</div>

			<div class="row align-items-center justify-content-center">
				<div class="col-md-12 col-lg-12 mb-5">
					<div class="p-5 bg-white">
						<form method="post" action="apply.do">
							<div class="input-group align-items-center" style="width: 100%;">
								<input type="hidden" id="postId" name="postId"
									value="${postdetail.ID}" /> <input id="comment" type="text"
									style="width: 300px;" name="userComment" class="form-control"
									placeholder="내용을 입력하세요." maxlength=255> <span
									class="input-group-btn">
									<button id="comment" style="margin-left: 15px;"
										class="btn btn-primary" type="submit">신청</button>
									<button id="comment" style="margin-left: 15px;"
										class="btn btn-primary" type="submit" disabled="disabled">신청</button>
								</span>
							</div>
						</form>
						<br>
						<table class="table table-hover">
							<colgroup>
								<col width="20%">
								<col width="*">
								<col width="20%">
							</colgroup>
							<thead class="thead-dark">
								<tr>
									<th class="text-center">작성자</th>
									<th class="text-center">내용</th>
									<th class="text-center">상태</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${postApplyUser}" var="postApplyUser">
									<tr>
										<td class="text-center">${postApplyUser.APPLICANT}</td>
										<td class="text-left">${postApplyUser.CONTENT}</td>
										<td class="text-center">${postApplyUser.STATUS}</td>
									</tr>
								</c:forEach>
								<tr>
									<td class="text-center" colspan="3">작성된 댓글이 없습니다.</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>
	</section>


	<%@ include file="/includes/footer.jsp"%>


	<%@ include file="/includes/scripts.jsp"%>

</body>

</html>