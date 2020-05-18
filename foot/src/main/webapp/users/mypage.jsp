<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
</head>
<body>
${userNAME}님!
	<h1>마이페이지</h1>
	<form action="home.jsp" method="post">
		<input type="submit" value="홈으로" />
	</form>
	<form action="deleteUser.do" method="post">
		<input type="submit" value="회원탈퇴" />
	</form>
	<form action="updateUser.do" method="post">
		<table>
			<tr>
				<td >아이디</td>
				<td><input type="text" name="ID" value="${userID}" disabled/></td>
			</tr>
			<tr>
				<td>성명</td>
				<td><input type="text" name="NAME" value="${userNAME}" disabled/></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="text" name="GENDER" value="${userGENDER}" disabled/></td>
			</tr>
			<tr>
				<td>실력</td>
				<td><input type="text" name="GRADE" value="${userGRADE}"/>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name="PHONE" value="${userPHONE}"/>
			</tr>
		</table>
		<br /> <input type="submit" name="UPDATE" value="수정하기" />
	</form>
</body>
</html>