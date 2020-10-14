<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>사진넣는곳</title>
</head>
<body>
<form action="/saveImage" enctype="multipart/form-data" method="post">
	<input type="file" name="imgFile" />
	<input type="submit" value="이미지저장"/>
</form>
</body>
</html>