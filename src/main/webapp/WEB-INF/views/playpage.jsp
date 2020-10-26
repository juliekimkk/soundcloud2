<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link
	href="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="/resources/plugins/colorbox/colorbox.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/playpage.css">
<link rel="stylesheet" type="text/css"
	href="/resources/styles/bootstrap-4.1.2/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

<meta name="viewport" content="width=device-width, initial-scale=1" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
	$(function() {
		objectFitImages()
	});
</script>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	function create() {
		var url = "${getuser.request.contextPath}/member/join";
		location.href = url;
		console.log(url);
	}

	function singin() {
		var url = "${getuser.request.contextPath}/customLogin";
		location.href = url;
		console.log(url);
	}

	function fn_del(song_no, user_no, play_list) {
		var url = "${getuser.request.contextPath}/playpage";
		url = url + "?song_no=" + song_no;
		url = url + "&user_no=" + user_no;
		url = url + "&play_list=" + play_list;
		location.href = url;
		console.log(url);
	}
</script>

<link rel="stylesheet" href="/resources/css/play.css">

<title>playlist page</title>

<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

.img-fluid {
	
}

.jumbotron {
	background-image: url('/resources/images/main.jpg');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}

.show_image { /*가로정렬 */
	display: inline;
	float: right;
	max-width: 100%;
}

.submit {
	display: flex;
	align-items: center;
	justify-content: center;
}
</style>
<style>
.jumbotron {
	background: linear-gradient(135deg, rgb(155, 146, 126) 0%,
		rgb(55, 54, 52) 100%);
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
	background-size: cover;
}

.asd {
	background-image: url('/resources/images/pic2.jpg');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}
</style>
</head>

<body>
<body style="background-color: #f2f2f2;">
	<div class="super_class"
		style="width: 1200px; height: 1100px; left: 350px; background-color: white;">

		<div class="trackInfo">
			<tbody>
				<c:choose>
					<c:when test="${playlist != null}">
							<div class="trackinfo_player_button"><a href="#"><img class="player" src="/resources/images/play_logo.svg"></a></div> 
							<div>
								<div class="trackinfo_user_name" style="border: solid red;"><c:out value="${user_no[0].user_name}" /></div>
								<div class="trackinfo_song_play_list" style="border: solid blue;"><c:out value="${songno[0].play_list}" /></div>
							</div>
							<div><img class="trackinfo_song_pic" src="data:image/jpg;base64,${songno[0].song_pic}" /></div>		
				 
					</c:when>
				</c:choose>
			</tbody>
		</div>



		<div style="display: flex;">
			<tbody>
				<c:choose>
					<c:when test="${user_no != null}">
						<div class=userinfo>
							<img class="rounded-circle"
								src="data:image/jpg;base64,${user_no[0].user_pic}" alt="" /> <a
								href="LoginIndex"> <c:out value="${user_no[0].user_name}" /></a>
						</div>
					</c:when>
				</c:choose>
			</tbody>



			<div class="playlistContainer">
				<tbody>
					<c:choose>


						<c:when test="${playlist == null}">
							<tr>
								<td colspan="5" align="center">데이터가 없습니다.</td>
							</tr>
						</c:when>


						<c:when test="${playlist != null}">
							<div class="songlist_big" style="border: solid magenta;">
								<c:forEach var="list" items="${playlist}" varStatus="status">

									<ul class="songlist_one" style="border: solid red;">
										<li class="thumnails" style="border: solid blue;"><a
											href="episode.html"> <img class="img-fluid"
												src="data:image/jpg;base64,${list.song_pic}" alt="" /></a> <img
											class="show_play_icon"
											src="<c:url value="/resources/images/play_logo.svg" />" /></li>
										<li class="songno" style="border: solid black;"><a
											href="LoginIndex"> <c:out value="${list.user_no}" /></a></li>

										<li class="singername" stlye="border: solid blue"><a
											href="LoginIndex">: <c:out value="${list.play_list}" />
										</a>
											</td></li>
										<li class="songname" style="border: solid red;"><a
											href="LoginIndex">노래 이름 : <c:out
													value="${list.song_name}" /></li>
										<li class="viewcnt" style="border: solid magenta"><c:out
												value="${list.view}" /></li>
									</ul>

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