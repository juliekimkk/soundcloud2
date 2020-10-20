<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="getsongs">목록가기</a>
	<form action="saveImage?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
		<input type="hidden" name="user_name" value="${user[0].user_name}" required>
		<label for="song_name">곡 제목</label> 
		<input type="text" name="song_name" placeholder="곡 제목" required> 
		<label for="song">노래 파일</label> 
		<input type="file" name="song_"> 
		<label for="song_pic">노래 커버 사진</label> 
		<input type="file" name="songpic">
		<label for="theme">테마</label>
		<input type="text" name="theme">
		<label for="play_list">플레이 리스트</label>
		<input type="text" name="play_list">
		<input type="submit" value="등록">
		<input type="hidden" name="user_no" value="${user[0].user_no}">
		
	</form>

</body>
</html>