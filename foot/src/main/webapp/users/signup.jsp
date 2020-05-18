<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sign-up page</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="signupUser.do" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="ID" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="PASSWORD" /></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" />&nbsp;*비밀번호를 다시입력하여주세여.</td>
			</tr>
			<tr>
				<td>성명</td>
				<td><input type="text" name="NAME" /></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name="GENDER"  value="M" checked/> 남자 <input
					type="radio" name="GENDER" value="F" /> 여자</td>
			</tr>
			<tr>
				<td>실력</td>
				<td><input type="text" name="GRADE" />
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name="PHONE" />
			</tr>
		</table>
		<br /> <input type="submit" value="가입하기" />
	</form>

</body>
</html>

