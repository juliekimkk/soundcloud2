<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="#">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<script type="text/javascript">

function fn_getuser(user_name) {
	var url = "${getuser.request.contextPath}/perpage/getuser";
	url = url + "?user_name=" + user_name;
	location.href = url;
	console.log(url);
}
</script>

</head>
<body>
	<tbody>
		<c:choose>
			<c:when test="${empty songList }">
				<tr>
					<td colspan="5" align="center">데이터가 없습니다.</td>
				</tr>
		    </c:when>

			<c:when test="${!empty songList}">
				<c:forEach var="list" items="${songList}">
					<tr>
						<td>
							<c:out value="${list.song_no}" />
						</td>
						
						<td>
							<a href="#" onClick="fn_getuser(<c:out value="${list.user_name}"/>)"> <c:out value="${list.user_name}" /></a>
						</td>
						
						<td>
							<c:out value="${list.song_name}" />
						</td>
						
						<td>
							<img src="data:image/jpg;base64,${list.song_pic}" />
						</td>
						
						<audio controls="controls">
							<source src="data:audio/mpeg;base64,${list.song}" type="audio/ogg">
						</audio>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</tbody>

</body>
</html>