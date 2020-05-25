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
						<span class="mr-3">Evaluation <i
							class="ion-ios-arrow-forward"></i></span> <span>Insert</span>
					</p>
					<h1 class="mb-3 bread">평가 등록</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row align-items-center justify-content-center">

				<div class="col-md-12 col-lg-8 mb-5">

					<div class="breadcrumb">
						<div class="col-12 align-items-center">
							<h3 class="align-items-center">${ postdetail.TITLE}</h3>
						</div>
					</div>
					<form action="evalu.do?postID=${ postdetail.ID}" method="post" class="p-5 bg-white">
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
									<%-- <h5>${postdetail.DATETIME} ${postdetail.HOUR}시 ${postdetail.MIN}분</h5> --%>
									<h5>${postdetail.DATETIME} ${postdetail.HOUR}시
										${postdetail.MIN}분</h5>
								</td>
							</tr>
							<tr>
								<td>
									<h5>경기 장소</h5>
								</td>
								<td>
									<%-- <h5>${postdetail.ADDRESS} ${postdetail.ADDRESS_DETAIL}</h5> --%>
									<h5>${postdetail.ADDRESS}${postdetail.ADDRESS_DETAIL}</h5>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
						</table>
						<div class="form-group" align="left">
							<label class="mr-4">점수</label> <input type="text"
								class="form-control" id="SCORE" name="SCORE"
								style="width: 20%; display: inline;"
								onkeydown='onlyNumber(event)' onkeyup='removeChar(event)'>
							<label class="mr-1">점</label>

							<div style="color: gray; font-size: 80%; padding: 5px 0 0 20px;">※
								100점 만점 기준으로 입력해주세요.</div>
						</div>
						<div class="form-group" align="left">
							<label for="name">내용</label> <input type="textarea"
								class="form-control" id="CONTENT" name="CONTENT">
						</div>
						<div class="form-group" align="center">
							<button type="submit" class="btn btn-primary" id="registerBtn">등록</button>
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