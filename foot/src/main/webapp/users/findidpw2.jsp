<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호 확인</title>
</head>
<body>
<h1>${findMessage}</h1>
<br>${userID}
<br>${userPASSWORD}
	<form action="login.jsp" method="post">
		<input type="submit" value="로그인 페이지" />
	</form>
</body>
</html>