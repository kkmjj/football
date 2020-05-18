<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>playerfind-login</title>
</head>
<body>
	<hr>
	<form action="signup.jsp" method="get">
		<table border="1">
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="회원가입" /></td>
			</tr>
		</table>
	</form>
	<form action="findidpw.jsp" method="get">
		<table border="1">
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="id/passowrd찾기" /></td>
			</tr>
		</table>
	</form>
	<form action="login.do" method="post">
		<table border="1">
			<tr>
				<td><input type="text" name="ID" /> 아이디</td>
			</tr>
			<tr>
				<td><input type="password" name="PASSWORD" />비밀번호</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="로그인" />
				</td>
			</tr>
		</table>
	</form>
	<hr>
</body>
</html>