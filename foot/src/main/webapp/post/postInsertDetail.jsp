<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<link rel="stylesheet" href="resources/css/style.css">

<!-- summernote -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
<script src="resources/js/summernote-ko-KR.js"></script>

<!-- datepicker -->
<link rel="stylesheet" href="resources/date/bootstrap-datepicker3.css">
<link rel="stylesheet" href="resources/date/bootstrap-datepicker3.standalone.css">
<script src="resources/date/bootstrap-datepicker.js"></script>
<script src="resources/date/bootstrap-datepicker.kr.min.js"></script>
  
</head>

<body style="padding: 0px;">
	<form action="PostInsert.do" method="post" name="content_form">
		<div class="form-group" align="left">
			<label>제목</label> <input type="text" class="form-control" id="TITLE"
				name="TITLE" onkeyup="disable_change();">
		</div>
		<div class="form-group" align="left">
			<label class="mr-4">모집인원</label> <input type="text"
				class="form-control" id="PER" name="PER"
				style="width: 20%; display: inline;" onkeyup="disable_change();">
			<label class="mr-1">명</label>
		</div>
		<div class="form-group" align="left">
			<label>날짜</label>
			<input type="text" class="form-control datepicker"
				id="DATETIME" name="DATETIME" data-date-format="yyyy/mm/dd" onkeyup="disable_change();">
		</div>
		<div class="form-group" align="left">
			<select name="HOUR" id="HOUR" class="form-control mr-1"
				style="width: 40%; display: inline;">
				<%
					for (int i = 1; i <= 24; i++) {
				%>
				<option value=<%=i%>><%=i%></option>
				<%
					}
				%>
			</select> <label class="mr-4">시</label> <select name="MIN" id="MIN"
				class="form-control mr-1" style="width: 40%; display: inline;">
				<%
					for (int i = 0; i <= 50; i += 10) {
				%>
				<option value=<%=i%>><%=i%></option>
				<%
					}
				%>
			</select> <label class="">분</label>
		</div>
		<div class="form-group" align="left">
			<label>모임 장소</label><br> <input class="form-control"
				style="width: 40%; display: inline;" placeholder="우편번호"
				name="ZIP_CODE" id="ZIP_CODE" type="text">
			<button type="button" class="btn btn-warning" onclick="goPopup();">
				<i class="fa fa-search"></i> 우편번호 찾기
			</button>
		</div>
		<div class="form-group">
			<input class="form-control" style="top: 5px;" placeholder="도로명 주소"
				name="ADDRESS" id="ADDRESS" type="text" onchange="disable_change();" />
		</div>
		<div class="form-group">
			<input class="form-control" placeholder="상세주소" name="ADDRESS_DETAIL"
				id="ADDRESS_DETAIL" type="text" onchange="disable_change();" />
		</div>
		<div class="form-group" align="left">
			<label for="name">내용</label>
				<textarea id="summernote" name="CONTENT"></textarea>
		</div>
		<div class="form-group" align="center">
			<button type="submit" class="btn btn-primary" id="insertsubmit"
				onClick="checkForm()" disabled>등록</button>
		</div>
	</form>
</body>

<script src="resources/js/post.js"></script>  

</html>