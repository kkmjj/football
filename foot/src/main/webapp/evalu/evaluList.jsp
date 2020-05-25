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
						<span class="mr-3">Evaluation <i class="ion-ios-arrow-forward"></i></span>
						<span>List</span>
					</p>
					<h1 class="mb-3 bread">평가 정보</h1>
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
									<h5>${postdetail.DATETIME} ${postdetail.HOUR}시
										${postdetail.MIN}분</h5>
								</td>
							</tr>
							<tr>
								<td>
									<h5>경기 장소</h5>
								</td>
								<td>
									<h5>${postdetail.ADDRESS} ${postdetail.ADDRESS_DETAIL}</h5>
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
										<li>평균 평점 : ${ userEvalu} 점</li>
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
					</div>
				</div>
			</div>

			<div class="row align-items-center justify-content-center">
				<div class="col-md-12 col-lg-12 mb-5">
					<div class="p-5 bg-white">
					<h3>평가 리스트</h3>
						<table class="table table-hover">
							<colgroup>
								<col width="20%">
								<col width="*">
								<col width="20%">
								<col width="20%">
							</colgroup>
							<thead class="thead-dark">
								<tr>
									<th class="text-center">평가자</th>
									<th class="text-center">코멘트</th>
									<th class="text-center">점수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${postApplyUser}" var="postApplyUser">
									<tr>
										<td class="text-center">${postApplyUser.RATER}</td>
										<td class="text-left">${postApplyUser.CONTENT}</td>
										<td class="text-center">${postApplyUser.SCORE}</td>
									</tr>
								</c:forEach>
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