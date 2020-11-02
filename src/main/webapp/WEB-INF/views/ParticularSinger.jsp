<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css"
	href="/assets/css/ParticularSinger.css">
<meta charset="utf-8">
<title>특정가수노래만 모은 트렉</title>
</head>
<body>
	<div class="container">
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
									<!-- 클릭시 위에 이미지 바뀌는 onclick 함수 --> <a href="#"
									onclick="get_src(${list.song_singer})"> <img
										class="img-fluid" src="data:image/jpg;base64,${list.song_pic}"
										alt="" /> <img class="show_play_icon"
										src="<c:url value="assets/images/orangeplaybutton.png" />" />

								</a>
								</li>


								<li class="singername"><a href="LoginIndex"
									style="color: black">: <c:out value="${list.song_singer}" />
								</a></li>
								<li class="songname"><a href="LoginIndex"
									style="color: black">노래 이름 : <c:out
											value="${list.song_name}" /></li>
								<li class="viewcnt"><c:out value="${list.view}" /></li>
							</ul>
							<hr class="my-1">

						</c:forEach>
					</div>
				</c:when>
			</c:choose>
		</tbody>





		<div id="footer">


			<!-- ë²í¼,íë ì´ì´,ìë -->
			<div class="player">
				<!-- Define the section for displaying track buttons -->
				<div class="buttons">
					<div class="prev-track" onclick="prevTrack()">
						<i class="fa fa-step-backward fa-2x"></i>
					</div>

					<div class="playpause-track" onclick="playpauseTrack()">
						<i class="fa fa-play-circle fa-2x"></i>
					</div>
					<div class="next-track" onclick="nextTrack()">
						<i class="fa fa-step-forward fa-2x"></i>
					</div>
				</div>
				<!-- Define the section for displaying the seek slider-->
				<div class="slider_container">
					<div class="current-time">00:00</div>
					<input type="range" min="1" max="100" value="0" class="seek_slider"
						onchange="seekTo()">
					<div class="total-duration">00:00</div>
				</div>

				<!-- Define the section for displaying the volume slider-->
				<div class="slider_container">
					<i class="fa fa-volume-down"></i> <input type="range" min="1"
						max="100" value="99" class="volume_slider" onchange="setVolume()">
					<i class="fa fa-volume-up"></i>
				</div>
			</div>



			<!-- ë¸ë ì ëª© ê°ì ì´ë¯¸ì§ -->
			<div class="details">
				<div class="track-art" style="display: inline-block";></div>
				<div class="track-name-artist" style="display: inline-block";>
					<div class="track-name">Track Name</div>
					<div class="track-artist">Track Artist</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>