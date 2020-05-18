<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호 찾기</title>
</head>
<body>
	<h1>가입한 핸드폰 번호를 입력하세요</h1>
	<form action="findidpw.do" method="post">
		<table border="1">
			<tr>
				<td><input type="text" name="PHONE" /> 핸드폰번호</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="아이디/패스워드 찾기" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>