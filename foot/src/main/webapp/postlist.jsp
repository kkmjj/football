<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<!-- 검색기능 -->
<form action="postlist.do" method="post">
<table border="1" cellpadding="0" cellspacing="0" width="700">
	<tr>
		<td align="right">
			<select name="searchCondition">
				<option value="writer">작성자</option>
			</select>
			<input name="searchKeyword" type="text"/>
			<input type="submit" value="검색"/>
		</td>
	
	</tr>

</table>

</form>
<!-- - -->



<table  border="1" cellpadding="0" cellspacing="0" width="700">

<tr>
	<th bgcolor="orange" with="100">번호</th>
	<th bgcolor="orange" with="100">제목</th>
	<th bgcolor="orange" with="100">작성자</th>
	<th bgcolor="orange" with="100">등록일</th>
	
</tr>

<c:forEach items="${postlist}" var="postlist">
<tr>

	<td>${ postlist.ID}</td>
	<td>${ postlist.WRITER}</td>
	<td>${ postlist.DATETIME}</td>
	<td>${ postlist.PLACE}</td>

</tr>



</c:forEach>

</table>

</body>
</html>