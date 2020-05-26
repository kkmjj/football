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
						<span>Insert</span>
					</p>
					<h1 class="mb-3 bread">공고 등록</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row align-items-center justify-content-center">

				<div class="col-md-12 col-lg-8 mb-5">

					<div class="main-content p-5 bg-white">
		                <div>
		                  <iframe id="contentFrame" name="contentFrame" src="InsertDetailPage.do"
		                  frameborder="0" width="100%" height="1200px" scrolling="no"></iframe>
		                </div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<%@ include file="/includes/footer.jsp"%>


	<%@ include file="/includes/scripts.jsp"%>
	<script type="text/javascript">
	function disable_change() {
		var TITLE = $("#TITLE").val();
		var PER = $("#PER").val();
		var DATETIME = $("#DATETIME").val();
		var ADDRESS = $("#ADDRESS").val();
		var ADDRESS_DETAIL = $("#ADDRESS_DETAIL").val();

		if (TITLE != "" && PER != "" && DATETIME != ""
				&& ADDRESS != "" && ADDRESS_DETAIL != "") {
            $("#insertsubmit").removeAttr("disabled");
		} else {
            $("#insertsubmit").attr("disabled", "disabled");
		}
	}
	</script>

</body>

</html>