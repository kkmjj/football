<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
	ID : ${userID}
	<br> PASSWORD : ${userPASSWORD}
	<br> NAME : ${userNAME}
	<br> GRADE : ${userGRADE}
	<br> TEL : ${userTEL1} - ${userTEL2} - ${userTEL3}
	<br> ZIP_CODE : ${userZIP_CODE}
	<br> ADDRESS : ${userADDRESS}
	<br> ADDRESS_DETAIL : ${userADDRESS_DETAIL}
	<br> 내가 올린 공고
	<table border="1" cellpadding="0" cellspacing="0" width="700">
		<tr>
			<th bgcolor="#D0F5A9" width="100">방 번호</th>
			<th bgcolor="#D0F5A9" width="350">제목</th>
			<th bgcolor="#D0F5A9" width="150">방장</th>
			<th bgcolor="#D0F5A9" width="100">참여인원</th>
		</tr>
		<c:forEach items="${myPostList}" var="myPostList">
			<tr>

				<td>${ myPostList.ID}</td>
				<td>${ myPostList.WRITER}</td>
				<td>${ myPostList.DATETIME}</td>
				<td>${ myPostList.STATUS}</td>
			</tr>
		</c:forEach>
	</table>

	내가 지원한 공고
	<table border="1" cellpadding="0" cellspacing="0" width="700">
		<tr>
			<th bgcolor="#D0F5A9" width="100">방 번호</th>
			<th bgcolor="#D0F5A9" width="350">제목</th>
			<th bgcolor="#D0F5A9" width="150">방장</th>
			<th bgcolor="#D0F5A9" width="100">참여인원</th>
		</tr>
		<c:forEach items="${myApplyList}" var="myApplyList">
			<tr>
				<td>${ myApplyList.ID}</td>
				<td>${ myApplyList.WRITER}</td>
				<td>${ myApplyList.DATETIME}</td>
				<td>${ myApplyList.STATUS}</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>