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
					<h1>title</h1>
				</div>
				<div class="row col-3 align-items-center justify-content-end">
					<a href="PostUpdatePage.do"><button
							class="btn btn-dark btn-sm mr-2" type="button" id="modify">수정</button></a>
					<a href="/item_delete?num=id"><button
							class="btn btn-dark btn-sm mr-2" type="button" id="delete">삭제</button></a>
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
									<h5>2020-05-21 18시 00분</h5>
								</td>
							</tr>
							<tr>
								<td>
									<h5>경기 장소</h5>
								</td>
								<td>
									<h5>서울시 구로구 000경기장</h5>
								</td>
							</tr>
							<tr>
								<td>
									<h5>모집 인원</h5>
								</td>
								<td>
									<h5>5명</h5>
								</td>
							</tr>
							<tr><td></td><td></td></tr>
						</table>
						<table>
							<tr>
								<td style="vertical-align: text-top;">
									<h5>주최자 정보</h5>
								</td>
								<td>
									<ul>
										<li>아이디 : 주최자 아이디</li>
										<li>이름 : 주최자 이름</li>
										<li>평균 평점 : 75점</li>
									</ul>
								</td>
							</tr>
						</table>

						<div style="padding: 15px; border-top: 1.5px solid gray;">
							<h3>상세설명</h3>
							<div id="content"
								style="overflow-y: scroll; min-height: 300px; max-height: 700px">
								내용 정보가 들어감</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row align-items-center justify-content-center">
				<div class="col-md-12 col-lg-12 mb-5">
					<div class="p-5 bg-white">
						<form method="post" action="/comment/add?num=id>">
							<div class="input-group align-items-center" style="width: 100%;">
								<input id="comment" type="text" style="width: 300px;"
									name="comment" class="form-control" placeholder="내용을 입력하세요."
									maxlength=255> <span class="input-group-btn">
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
								<tr>
									<td class="text-center" colspan="3">작성된 댓글이 없습니다.</td>
								</tr>
								<tr>
									<td class="text-center">강지인</td>
									<td class="text-left">하고싶습니다!</td>
									<td class="text-center">수락/거절</td>
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