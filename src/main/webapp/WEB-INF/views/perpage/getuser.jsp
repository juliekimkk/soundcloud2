<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
function fn_insert(user_no) {

	var url = "${getuser.request.contextPath}/perpage/insert";

	url = url + "?user_no=" + user_no;

	location.href = url;
	
	console.log(url);

}
function fn_userupdate(user_no) {

	var url = "${getuser.request.contextPath}/perpage/userupdate";

	url = url + "?user_no=" + user_no;

	location.href = url;
	
	console.log(url);
}
function fn_del(song_no,user_no) {

	var url = "${getuser.request.contextPath}/perpage/songdelete";

	url = url + "?song_no=" + song_no;
	
	url = url + "&user_no=" + user_no;

	location.href = url;
	
	console.log(url);
}


</script>
<style type="text/css">
.menu {
	float: right;
	list-style: none;
}

.menu li {
	float: left;
	margin: 10px;
}
</style>
</head>
<body>
	<div>
		<a href="getsongs">목록가기</a> <a href="#"
			onClick="fn_insert(<c:out value="${user[0].user_no}"/>)">노래넣기</a> <a
			href="#"
			onClick="fn_userupdate(<c:out value="${songList[0].user_no}"/>)">회원정보수정</a>
	</div>
	<div>
		<c:out value="${user[0].user_name }" />
		<img id="userpic_" src="data:image/jpg;base64,${user[0].user_pic}"/>
	</div>

	<ul class="menu">
		<li>메뉴1</li>

		<li>메뉴2</li>

		<li>메뉴3</li>

		<li>메뉴4</li>

		<li>메뉴5</li>
	</ul>
	<tbody>
		<c:choose>

			<c:when test="${empty songList }">
				<tr>
					<td colspan="5" align="center">데이터가 없습니다.</td>
				</tr>
			</c:when>

			<c:when test="${!empty songList}">
				<c:forEach var="list" items="${songList}">
					<div>
						<tr>
							<td><img src="data:image/jpg;base64,${list.song_pic}" /></td>
							<td><audio controls="controls">
									<source src="data:audio/mpeg;base64,${list.song}"
										type="audio/ogg"></td>
							</audio>
							<td><c:out value="${list.song_name}" /></td>
							<td><a href="#"
								onClick="fn_del(<c:out value="${list.song_no},${list.user_no}"/>)">
									삭제</a></td>
						</tr>

					</div>
				</c:forEach>

			</c:when>

		</c:choose>


	</tbody>



</body>
</html>