<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="getsongs">목록가기</a>
	<form action="saveImage" method="post">
		<input type="hidden" name="user_name" value="${songList[0].user_name}" required>
		<label for="song_name">곡 제목</label> 
		<input type="text" name="song_name" placeholder="곡 제목" required> 
		<label for="song">노래 파일</label> 
		<input type="file" name="song"> 
		<label for="song_pic">노래 커버 사진</label> 
		<input type="file" name="song_pic">
		<label for="theme">테마</label>
		<input type="text" name="theme">
		<label for="play_list">플레이 리스트</label>
		<input type="text" name="play_list">
		<input type="submit" value="등록">
		<input type="hidden" name="user_no" value="${songList[0].user_no}">
		<input type="hidden" name="${_csrf.parameterName}"
    value="${_csrf.token}" />
		
	</form>

</body>
</html>