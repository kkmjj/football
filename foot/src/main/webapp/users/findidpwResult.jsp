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
						<span>ID/PW</span>
					</p>
					<h1 class="mb-3 bread">ID/PW 찾기</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row align-items-center justify-content-center">

				<div class="col-md-12 col-lg-8 mb-5">
					<div class="p-5 bg-white">
						<c:if test="${findMessage == 'Y' }">
							<h4 class="mb-4">조회된 ID/PW입니다.</h4>
							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th class="text-center">ID</th>
										<th class="text-center">PW</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${findUser}" var="findUser">
										<tr>
											<td class="text-center">${findUser.ID}</td>
											<td class="text-center">${findUser.PASSWORD}</td>
										</tr>
									</c:forEach>
										<tr>
											<td class="text-center"></td>
											<td class="text-center"></td>
										</tr>
								</tbody>
							</table>
						</c:if>
						<c:if test="${findMessage == 'N' }">
							<h4 class="">검색된 ID/PW가 없습니다.</h4>
						</c:if>
						
						<div class="" align="center">
							<button type="button" class="btn btn-outline-dark"
								onclick="location.href = 'loginPage.do';">로그인 페이지</button>
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
