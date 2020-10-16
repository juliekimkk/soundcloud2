<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="userupdateaction" method="post">
		<label for="user_name">이름</label> 
		<input type="text" name="user_name" value="${userList[0].user_name}">
		<label for="e_mail">E-Mail</label>
		<input type="email" name="e_mail" value="${userList[0].e_mail}">
		<input type="submit" value="수정">
	</form>
</body>
</html>