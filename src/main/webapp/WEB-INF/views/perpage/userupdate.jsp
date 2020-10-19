<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="userupdateaction" method="post">
		<label for="user_name">이름</label> 
		<input type="text" name="user_name" value="${userList[0].user_name}">
		<label for="e_mail">E-Mail</label>
		<input type="email" name="e_mail" value="${userList[0].e_mail}">
		<input type="hidden" name="user_no" value="${userList[0].user_no}">
		<input type="hidden" name="user_password" value="${userList[0].user_password}">
		<input type="hidden" name="theme" value="${songList[0].theme}">
		<input type="hidden" name="play_list" value="${songList[0].play_list}">
		<input type="hidden" name="song_name" value="${songList[0].song_name}">
		<input type="hidden" name="song_no" value="${songList[0].song_no}">
		<input type="hidden" name="${_csrf.parameterName}"
    value="${_csrf.token}" />
		<input type="submit" value="수정">
	</form>
</body>
</html>