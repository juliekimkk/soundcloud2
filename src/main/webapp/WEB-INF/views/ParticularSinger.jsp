<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<link rel="stylesheet" type="text/css"
	href="/assets/css/ParticularSinger.css">
<meta charset="utf-8">
<script type="text/javascript" src="/assets/js/playlist2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/color-thief/2.3.0/color-thief.umd.js"></script>

<script type="text/javascript">
	function zoomIn(event) {
		event.target.style.transform = "scale(1.2)";
		event.target.style.zIndex = 1;
		event.target.style.transition = "all 0.5s";
	}

	function zoomOut(event) {
		event.target.style.transform = "scale(1)";
		event.target.style.zIndex = 0;
		event.target.style.transition = "all 0.5s";
	}

	function zoomOut(event) {
		event.target.style.transform = "scale(1)";
		event.target.style.zIndex = 0;
		event.target.style.transition = "all 0.5s";
	}

	function get3d(song_singer) {
		var url = "${getuser.request.contextPath}/test";
		url = url + "?song_singer=" + song_singer;
		location.href = url;
	}
</script>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>



<title>특정가수노래만 모은 트렉</title>
</head>

<body style="background-color: #f2f2f2;">
	<div class="super_class2">
		<sec:authentication property="principal" var="pinfo" />
		<%@ include file="navbar.jsp"%>
		<c:if test="${empty pinfo.username }">
			<%@ include file="navbar2.jsp"%>
		</c:if>
		<div class="super_class"
			style="width: 1200px; height: auto; left: 350px; background-color: white;">


			<div style="display: flex;">
				<tbody>
					<c:choose>
						<c:when test="${particularsinger == null}">
							<tr>
								<td colspan="5" align="center">데이터가 없습니다.</td>
							</tr>
						</c:when>


						<c:when test="${particularsinger != null}">
							<div class="songlist_big">
								<c:forEach var="list" items="${particularsinger}"
									varStatus="status">

									<ul class="songlist_one">
										<li class="thumnails">
											<!-- 클릭시 위에 이미지 바뀌는 onclick 함수 --> <a href="#"><img
												class="img-fluid" src="${list.path }${list.song_pic}"
												onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"
												alt="" /> <img class="show_play_icon"
												src="<c:url value="assets/images/orangeplaybutton.png" />" />

										</a>
										</li>


										<li class="singername"><a href="#"
											onclick="get3d('${list.song_singer}')"> <c:out
													value="${list.song_singer}" /></a></li>
										<li class="songname"><a href="#" style="color: black">
												: <c:out value="${list.song_name}" /></li>
										<li class="viewcnt"><c:out value="${list.view}" /></li>

									</ul>
									<hr class="my-1">

								</c:forEach>
							</div>
						</c:when>
					</c:choose>
				</tbody>
			</div>
		</div>
	</div>



</body>
</html>