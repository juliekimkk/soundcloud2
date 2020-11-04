<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	function(song_no){
		var url = "${c}/perpage/getsongno";
		url = url + "?song_no=" + song_no
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

#userpic_ {
	width: 100px;
	height: 100px;
	border-radius: 70%
}

.box {
	border: 1px solid black;
	width: 700px;
	height: 200px;
	text-align: left;
}

.in {
	display: inline-block;
}

.info {
	list-style: none;
}
#songno{
	width: 180px;
	height: 180px;
}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<sec:authentication property="principal" var="pinfo" />
	<div>

		<sec:authorize access="isAuthenticated()">
			<c:if test="${!empty pinfo.username }">
				<a href="/LoginIndex">목록가기</a>
			</c:if>
			<c:if test="${empty pinfo.username }">
				<a href="/Index">목록가기</a>
			</c:if>
			<c:if test="${pinfo.username eq user[0].user_name }">
				<a href="insert?user_name=${pinfo.username }">노래넣기</a>
				<a href="userupdate?user_name=${pinfo.username }">회원정보수정</a>
			</c:if>
			<c:out value="${pinfo.username }"/>
			<c:out value="${user[0].user_name }"/>
		</sec:authorize>
	</div>
	<div>
		<c:out value="${user[0].user_name }" />
		<div>
			<%-- <img id="userpic_" src="${image}" alt="프로필사진" onerror="/resources/pngegg.png"/> --%>
			<%-- <img id="userpic_" src="data:image/jpg;base64,${user[0].user_pic}"
				onerror="/resources/pngegg.png" />
		</div> --%>
			<img id="userpic_" src="${user[0].path}${user[0].user_pic }"
				onerror="this.src='/assets/pngegg.png'">
		</div>

		<ul class="menu">
			<li>메뉴1</li>

			<li>메뉴2</li>

			<li>메뉴3</li>

			<li>메뉴4</li>

			<li>메뉴5</li>
		</ul>

		<%-- <tbody>
		<c:choose>

			<c:when test="${empty stringsong }">
			<c:when test="${empty sontList }">
				<tr>
					<td colspan="5" align="center">데이터가 없습니다.</td>
				</tr>
			</c:when>

			<c:when test="${!empty stringsong}">
			<c:when test="${!empty songList}">
				<c:forEach var="stringsonglist" items="${stringsong}">
				<c:forEach var="list" items="${songList}">
					<div>
						<tr>
							<td><img src="data:image/jpg;base64,${list.song_pic}" /></td>
							<td><audio src="${stringsonglist }"controls></audio>
							</td>
							<td><audio controls="controls">
									<source src="data:audio/mpeg;base64,${list.song}"
										type="audio/ogg">
								</audio></td>
							<td><c:out value="${list.song_name}" /></td>
							<sec:authentication property="principal" var="pinfo" />
							<sec:authorize access="isAuthenticated()">
								<c:if test="${pinfo.username eq user[0].user_name }">
									<td><a href="songdelete?song_no=${list.song_no}&user_name=${pinfo.username}">
											삭제</a></td>
								</c:if>
							</sec:authorize>
						</tr>

					</div>
				</c:forEach>

			</c:when>

		</c:choose>


	</tbody> --%>

		<tbody>
			<c:choose>

				<c:when test="${empty songList }">
					<tr>
						<td colspan="5" align="center">데이터가 없습니다.</td>
					</tr>
				</c:when>

				<c:when test="${!empty songList}">
					<c:forEach var="list" items="${songList}">
						<div class="box">
							<div class="in">
								<%-- <td><img src="data:image/jpg;base64,${list.song_pic}" /></td> --%>
							 <img id="songno" src="${list.path}${list.song_pic }">
							
								
								<%-- <td><audio controls="controls">
									<source src="data:audio/mpeg;base64,${list.song}"
										type="audio/ogg"></audio></td> --%>
								<%-- <td><audio controls="controls">
									<source src="${list.path }${list.song }">
								</audio></td>

							<td><c:out value="${list.song_name}" /></td> --%>
							</div>
							<div class="in">
								<ul class="info">
									<li><c:out value="${list.song_name }" /></li>
									<li><c:out value="${list.play_list }" /></li>
									<li><c:out value="${list.theme }" /></li>
								</ul>
							</div>

							<c:if test="${pinfo.username eq user[0].user_name }">
								<td><a
									href="songdelete?song_no=${list.song_no }&user_name=${list.user_name}">
										삭제</a></td>
							</c:if>
							</tr>

						</div>
					</c:forEach>

				</c:when>

			</c:choose>
			
		</tbody>
		

		<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script>
		
		
		
		</script>
</body>
</html>