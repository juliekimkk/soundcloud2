<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function checkpicFile(f){

	// files �� �ش� ���� ���� ���.
	var file = f.files;

	// file[0].name �� ���ϸ� �Դϴ�.
	// ���Խ����� Ȯ���� üũ
	if(!/\.(gif|jpg|fpeg|png)$/i.test(file[0].name)) alert('�ش� Ȯ������ ������ ���ε��Ҽ� �����ϴ�.\n\n���� ���� : ' + file[0].name);
	 //mp3, wav, m4a, flac, ogg, amr, mp2
	// üũ�� ����ߴٸ� ����.
	else return;

	// üũ�� �ɸ��� ���õ�  ���� ��� ó���� �ؾ���.
	// ���ϼ��� ���� ������ ��ũ��Ʈ�� ��Ʈ�� �� �� �����ϴ�.
	// �׷��� �׳� ���� ���� ���� ���ִ� ������� �ʱ�ȭ �մϴ�.
	// �̷��� �ϸ� ���� !?
	f.outerHTML = f.outerHTML;
}



</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="userupdateaction?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
		<label for="user_name">�̸�</label> 
		<input type="text" name="user_name" value="${userList[0].user_name}">
		<label for="e_mail">E-Mail</label>
		<input type="email" name="e_mail" value="${userList[0].e_mail}">
		<label for="user_pic">������ ����</label>
		<input type="file" name="userpic" accept="image/*" required>
		<input type="hidden" name="user_no" value="${userList[0].user_no}">
		<input type="hidden" name="user_password" value="${userList[0].user_password}">
		<input type="hidden" name="theme" value="${songList[0].theme}">
		<input type="hidden" name="play_list" value="${songList[0].play_list}">
		<input type="hidden" name="song_name" value="${songList[0].song_name}">
		<input type="hidden" name="song_no" value="${songList[0].song_no}">
		<input type="hidden" name="${_csrf.parameterName}"
    value="${_csrf.token}" />
		<input type="submit" value="����" onClick="bbsCheck();">
	</form>
</body>
</html>