<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>




<form action="../PostInsert.do" method="post">
<table border="1" cellpadding="0" cellspacing="0" >
	

	<tr>
		<td bgcolor="orange" >경기시간</td>			<!-- 내용과 제목은 수정가능하게 구성되있어 name값을 지정  -->
		<td align="left"><input  name="DATETIME" type="date"></textarea></td>
	</tr>
	<tr>
		<td bgcolor="orange" >희망인원</td>
		<td align="left"><input name="PER" type="text"/></td>
	</tr>
	<tr>
		<td bgcolor="orange" >내용</td>
		<td align="left"><input name="CONTENT" type="text" cols="40" rows="10"/></td>
	</tr>
	</tr>
	<tr>
		<td bgcolor="orange" >ZIP_CODE</td>
		<td align="left"><input name="ZIP_CODE" type="text"/></td>
	</tr>
	<tr>
		<td bgcolor="orange" >ADDRESS</td>
		<td align="left"><input name="ADDRESS" type="text"/></td>
	</tr>
	<tr>
		<td bgcolor="orange" >ADDRESS_DETAIL</td>
		<td align="left"><input name="ADDRESS_DETAIL" type="text"/></td>
	</tr>

	<tr>
		<td colspan="2" align="center"><input type="submit" value="글 등록" /></td>
		
	</tr>

</table>

</form>







</body>
</html>