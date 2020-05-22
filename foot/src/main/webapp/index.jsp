<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="/includes/header.jsp" %>

<body>
	<%@ include file="/includes/navbar.jsp" %>

	<div class="hero-wrap img"
		style="background-image: url(images/bg_1.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row d-md-flex no-gutters slider-text align-items-center justify-content-center">
				<div
					class="col-md-10 d-flex align-items-center justify-content-center ftco-animate">
					<div class="text text-center pt-5 mt-md-5">
						<p class="mb-4">부족한 인원을 채워드립니다!!</p>
						<h1 class="mb-5">모두의 용병 웹 서비스</h1>
						<div class="ftco-counter ftco-no-pt ftco-no-pb">
							<div class="row">
								<div
									class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
									<div class="block-18">
										<div class="text d-flex">
											<div class="icon mr-2">
												<span class="flaticon-worldwide"></span>
											</div>
											<div class="desc text-left">
												<strong class="number" data-number="46">0</strong> <span>Countries</span>
											</div>
										</div>
									</div>
								</div>
								<div
									class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
									<div class="block-18 text-center">
										<div class="text d-flex">
											<div class="icon mr-2">
												<span class="flaticon-visitor"></span>
											</div>
											<div class="desc text-left">
												<strong class="number" data-number="450">0</strong> <span>Companies</span>
											</div>
										</div>
									</div>
								</div>
								<div
									class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
									<div class="block-18 text-center">
										<div class="text d-flex">
											<div class="icon mr-2">
												<span class="flaticon-resume"></span>
											</div>
											<div class="desc text-left">
												<strong class="number" data-number="80000">0</strong> <span>Active
													Employees</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<!-- 검색 창  -->
						<div class="ftco-search my-md-5">
							<div class="row">
								<div class="col-md-12 nav-link-wrap">
									<div class="nav nav-pills text-center" id="v-pills-tab" role="tablist"
										aria-orientation="vertical">
										<a class="nav-link active mr-md-1" id="v-pills-1-tab" data-toggle="pill"
											href="#v-pills-1" role="tab" aria-controls="v-pills-1"
											aria-selected="true">날짜로 검색</a>

										<a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2"
											role="tab" aria-controls="v-pills-2" aria-selected="false">장소로 검색</a>

									</div>
								</div>
								<div class="col-md-12 tab-wrap">

									<div class="tab-content p-4" id="v-pills-tabContent">

										<div class="tab-pane fade show active" id="v-pills-1" role="tabpanel"
											aria-labelledby="v-pills-nextgen-tab">
											<form action="PostDATESearchList.do" class="search-job">
												<div class="row no-gutters">
													<div class="col-md mr-md-2">
														<div class="form-group">
															<div class="form-field">
																<div class="icon"><span class="icon-briefcase"></span>
																</div>
																<input type="date" class="form-control" id="start" name="start"
																	placeholder="start">
															</div>
														</div>
													</div>
													<div class="col-md mr-md-2">
														<div class="form-group">
															<div class="form-field">
																<div class="icon"><span class="icon-map-marker"></span>
																</div>
																<input type="date" class="form-control" id="end" name="end"
																	placeholder="end">
															</div>
														</div>
													</div>
													<div class="col-md">
														<div class="form-group">
															<div class="form-field">
																<button type="submit"
																	class="form-control btn btn-primary">Search</button>
															</div>
														</div>
													</div>
												</div>
											</form>
										</div>

										<div class="tab-pane fade" id="v-pills-2" role="tabpanel"
											aria-labelledby="v-pills-performance-tab">
										<form action="PostlocationSearchList.do" class="search-job">
												<div class="row">
													<div class="col-md mr-md-2">
														<div class="form-group">
															<div class="form-field">
																<div class="select-wrap">
																	<div class="icon"><span
																			class="icon-map-marker"></span></div>
																	<select name="region" id="region" class="form-control">
																		<option value="서울">서울</option>
																		<option value="경기">경기</option>
																		<option value="인천">인천</option>
																		<option value="강원">강원</option>
																		<option value="충남">충남</option>
																		<option value="대전">대전</option>
																		<option value="충북">충북</option>
																		<option value="세종">세종</option>
																		<option value="부산">부산</option>
																		<option value="울산">울산</option>
																		<option value="대구">대구</option>
																		<option value="경북">경북</option>
																		<option value="경남">경남</option>
																		<option value="전남">전남</option>
																		<option value="광주">광주</option>
																		<option value="전북">전북</option>
																		<option value="제주">제주</option>
																	</select>
																</div>
															</div>
														</div>
													</div>
													<div class="col-md">
														<div class="form-group">
															<div class="form-field">
																<div class="icon"><span class="icon-map-marker"></span>
																</div>
																<input type="text" class="form-control" id="input_location"
																name="input_location"
																	placeholder="Location">
															</div>
														</div>
													</div>
													<div class="col-md">
														<div class="form-group">
															<div class="form-field">
																<button type="submit"
																	class="form-control btn btn-primary">Search</button>
															</div>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 검색 창 end -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 pr-lg-4">
					<div class="row">
					<% String userId = (String)session.getAttribute("userID"); 
						if(userId != null) { %>
						<div class="col-md-12 ftco-animate text-lg-right">
							<a href="PostInsertPage.do" class="btn btn-primary mb-4">공고 등록</a>
						</div>
						<% } %>
						<!-- end -->

						<c:forEach items="${postlist}" var="postlist">
							<div class="col-md-12 ftco-animate"
								onclick="location.href = 'PostDetail.do?id=${postlist.ID}';">
								<div
									class="job-post-item p-4 d-block d-lg-flex align-items-center">
									<div class="one-third mb-4 mb-md-0">
										<div class="job-post-item-header align-items-center">
											<span class="subadge">${ postlist.ID}</span>
											<h2 class="mr-3 text-black">
												<a>${ postlist.DATETIME}</a>
											</h2>
										</div>
										<div class="job-post-item-body d-block d-md-flex">
											<div class="mr-3">
												<span class="icon-layers"></span> <a>${ postlist.WRITER}</a>
											</div>
											<div>
												<span class="icon-my_location"></span> <span>${ postlist.ADDRESS}</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- end -->
						</c:forEach>
					</div>
					<div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul>
									<li><a href="#">&lt;</a></li>
									<li class="active"><span>1</span></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&gt;</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<%@ include file="/includes/footer.jsp" %>
	

	<%@ include file="/includes/scripts.jsp" %>


</body>

</html>