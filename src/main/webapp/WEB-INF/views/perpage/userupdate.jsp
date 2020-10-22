<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function checkpicFile(f){

	// files 로 해당 파일 정보 얻기.
	var file = f.files;

	// file[0].name 은 파일명 입니다.
	// 정규식으로 확장자 체크
	if(!/\.(gif|jpg|fpeg|png)$/i.test(file[0].name)) alert('해당 확장자의 파일은 업로드할수 없습니다.\n\n현재 파일 : ' + file[0].name);
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

	<form action="userupdateaction?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
		<label for="user_name">이름</label> 
		<input type="text" name="user_name" value="${userList[0].user_name}">
		<label for="e_mail">E-Mail</label>
		<input type="email" name="e_mail" value="${userList[0].e_mail}">
		<label for="user_pic">프로필 사진</label>
		<input type="file" name="userpic" accept="image/*" required>
		<input type="hidden" name="user_no" value="${userList[0].user_no}">
		<input type="hidden" name="user_password" value="${userList[0].user_password}">
		<input type="hidden" name="theme" value="${songList[0].theme}">
		<input type="hidden" name="play_list" value="${songList[0].play_list}">
		<input type="hidden" name="song_name" value="${songList[0].song_name}">
		<input type="hidden" name="song_no" value="${songList[0].song_no}">
		<input type="hidden" name="${_csrf.parameterName}"
    value="${_csrf.token}" />
		<input type="submit" value="수정" onClick="bbsCheck();">
	</form>
</body>
</html>