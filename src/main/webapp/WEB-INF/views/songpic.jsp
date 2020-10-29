<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="utf-8">
<title>song_pic 을누르면 같은 song_pic을 띄우기</title>
</head>
<body>
	<tbody>
		<c:choose>
			<c:when test="${songno == null}">
				<tr>
					<td colspan="5" align="center">데이터가 없습니다.</td>
				</tr>
			</c:when>


			<c:when test="${songno != null}">
				<div>
					<img class="img-fluid" src="data:image/jpg;base64,${songno[0].song_pic}" alt="" />
				</div>
			</c:when>
		</c:choose>
	</tbody>
</body>
</html>