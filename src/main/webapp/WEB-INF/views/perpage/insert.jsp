<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function checksongFile(f){

	// files 로 해당 파일 정보 얻기.
	var file = f.files;

	// file[0].name 은 파일명 입니다.
	// 정규식으로 확장자 체크
	if(!/\.(mp3|wav|m4a|flac|ogg|amr|mp2|m4r)$/i.test(file[0].name)) alert('해당 확장자의 파일은 업로드할수 없습니다.\n\n현재 파일 : ' + file[0].name);
	 //mp3, wav, m4a, flac, ogg, amr, mp2
	// 체크를 통과했다면 종료.
	else return;

	// 체크에 걸리면 선택된  내용 취소 처리를 해야함.
	// 파일선택 폼의 내용은 스크립트로 컨트롤 할 수 없습니다.
	// 그래서 그냥 새로 폼을 새로 써주는 방식으로 초기화 합니다.
	// 이렇게 하면 간단 !?
	f.outerHTML = f.outerHTML;
}
function checkpicFile(f){

	// files 로 해당 파일 정보 얻기.
	var file = f.files;

	// file[0].name 은 파일명 입니다.
	// 정규식으로 확장자 체크
	if(!/\.(gif|jpg|jpeg|png)$/i.test(file[0].name)) alert('해당 확장자의 파일은 업로드할수 없습니다.\n\n현재 파일 : ' + file[0].name);
	 //mp3, wav, m4a, flac, ogg, amr, mp2
	// 체크를 통과했다면 종료.
	else return;

	// 체크에 걸리면 선택된  내용 취소 처리를 해야함.
	// 파일선택 폼의 내용은 스크립트로 컨트롤 할 수 없습니다.
	// 그래서 그냥 새로 폼을 새로 써주는 방식으로 초기화 합니다.
	// 이렇게 하면 간단 !?
	f.outerHTML = f.outerHTML;
}
</script>
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
		<input type="file" name="song_" accept="audio/*" onchange="checksongFile(this)"> 
		<label for="song_pic">노래 커버 사진</label> 
		<input type="file" name="songpic" accept="image/*" onchange="checkpicFile(this)">
		
		<label for="theme">테마</label>
		<input type="text" name="theme">
		<label for="play_list">플레이 리스트</label>
		<input type="text" name="play_list">
		<input type="submit" value="등록">
		<input type="hidden" name="user_no" value="${user[0].user_no}">
		
	</form>

</body>
</html>