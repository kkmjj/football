<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
</head>
<body>
	${userNAME}님 접속!
	<form action="mypage.jsp" method="post">
		<input type="submit" value="마이페이지" />
	</form>
	<form action="logout.do" method="post">
		<input type="submit" value="로그아웃" />
	</form>
</body>
</html>