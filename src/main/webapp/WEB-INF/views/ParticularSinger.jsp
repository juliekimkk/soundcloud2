<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css"
	href="/assets/css/ParticularSinger.css">
<meta charset="utf-8">

<script>
function zoomIn(event) {
    event.target.style.transform = "scale(1.2)";
    event.target.style.zIndex = 1;
    event.target.style.transition = "all 0.5s";
  }
<<<<<<< HEAD

function zoomOut(event) {
    event.target.style.transform = "scale(1)";
    event.target.style.zIndex = 0;
    event.target.style.transition = "all 0.5s";
  }
</script>

<title>특정가수노래만 모은 트렉</title>
</head>
=======

function zoomOut(event) {
    event.target.style.transform = "scale(1)";
    event.target.style.zIndex = 0;
    event.target.style.transition = "all 0.5s";
  }
  
function get_3D(particular_singer){
	var url = "${getuser.request.contextPath}/test";
	url = url + "?particular_singer=" + particular_singer;
	location.href = url;
	console.log(url);
}
</script>

<title>특정가수노래만 모은 트렉</title>
</head>

<body style="background-color: #f2f2f2;">
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
										<!-- 클릭시 위에 이미지 바뀌는 onclick 함수 --> <a href="#"
										onclick="get_src(${list.song_singer})"> <img
											class="img-fluid"
											src="data:image/jpg;base64,${list.song_pic}" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" alt="" /> <img
											class="show_play_icon"
											src="<c:url value="assets/images/orangeplaybutton.png" />" />

									</a>
									</li>


									<li class="singername"><a href="#" style="color: black">:
											<c:out value="${list.song_singer}" />
									</a></li>
									<li class="songname"><a href="#" style="color: black">노래
											이름 : <c:out value="${list.song_name}" /></li>
									<li class="viewcnt"><c:out value="${list.view}" /></li>



									<div id="footer">
										<!-- player bar -->
										
										<div class="player2">

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

											<div class="slider_container">
												<div class="current-time">00:00</div>
												<input type="range" min="1" max="100" value="0"
													class="seek_slider" onchange="seekTo()">
												<div class="total-duration">00:00</div>
											</div>

											<!-- volum bar -->
											<div class="slider_container">
												<i class="fa fa-volume-down"></i> <input type="range"
													min="1" max="100" value="99" class="volume_slider"
													onchange="setVolume()"> <i class="fa fa-volume-up"></i>
											</div>
										</div>

										
										<!--mini track  -->
										<div class="details">
											<div class="track-art"
												src="data:image/jpg;base64,${songno[0].song_pic}" /></div>
											<div class="track-name-artist" style="display: inline-block";>
												<div class="track-name">
													<c:out value="${songno[0].song_singer}" />
												</div>
												<div class="track-artist">
													<c:out value="${songno[0].song_name}" />
												</div>
											</div>
										</div>

										<audio controls="controls" autoplay>
											<source src="data:audio/mpeg;base64,${songno[0].song}"
												type="audio/ogg">
										</audio>

									</div>
								</ul>
								<hr class="my-1">

							</c:forEach>
						</div>
					</c:when>
				</c:choose>
			</tbody>
		</div>
</div>
>>>>>>> 7e33556fc270540933205298f88167a35423524a

<body style="background-color: #f2f2f2;">
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
										<!-- 클릭시 위에 이미지 바뀌는 onclick 함수 --> <a href="#"
										onclick="get_src(${list.song_singer})"> <img
											class="img-fluid"
											src="data:image/jpg;base64,${list.song_pic}" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" alt="" /> <img
											class="show_play_icon"
											src="<c:url value="assets/images/orangeplaybutton.png" />" />

									</a>
									</li>


									<li class="singername"><a href="#" style="color: black">:
											<c:out value="${list.song_singer}" />
									</a></li>
									<li class="songname"><a href="#" style="color: black">노래
											이름 : <c:out value="${list.song_name}" /></li>
									<li class="viewcnt"><c:out value="${list.view}" /></li>



									<div id="footer">
										<!-- player bar -->
										
										<div class="player2">

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

											<div class="slider_container">
												<div class="current-time">00:00</div>
												<input type="range" min="1" max="100" value="0"
													class="seek_slider" onchange="seekTo()">
												<div class="total-duration">00:00</div>
											</div>

											<!-- volum bar -->
											<div class="slider_container">
												<i class="fa fa-volume-down"></i> <input type="range"
													min="1" max="100" value="99" class="volume_slider"
													onchange="setVolume()"> <i class="fa fa-volume-up"></i>
											</div>
										</div>

										
										<!--mini track  -->
										<div class="details">
											<div class="track-art"
												src="data:image/jpg;base64,${songno[0].song_pic}" /></div>
											<div class="track-name-artist" style="display: inline-block";>
												<div class="track-name">
													<c:out value="${songno[0].song_singer}" />
												</div>
												<div class="track-artist">
													<c:out value="${songno[0].song_name}" />
												</div>
											</div>
										</div>

										<audio controls="controls" autoplay>
											<source src="data:audio/mpeg;base64,${songno[0].song}"
												type="audio/ogg">
										</audio>

									</div>
								</ul>
								<hr class="my-1">

							</c:forEach>
						</div>
					</c:when>
				</c:choose>
			</tbody>
		</div>
</div>

<<<<<<< HEAD
=======
		<%-- 		 <div id="footer">
>>>>>>> 7e33556fc270540933205298f88167a35423524a

		<%-- 		 <div id="footer">

<<<<<<< HEAD

=======
>>>>>>> 7e33556fc270540933205298f88167a35423524a
	<!-- button,slider bar -->
			<div class="player2">
			
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


				<div class="slider_container">
					<div class="current-time">00:00</div>
					<input type="range" min="1" max="100" value="0" class="seek_slider"
						onchange="seekTo()">
					<div class="total-duration">00:00</div>
				</div>

		<!-- volumbar -->
				<div class="slider_container">
					<i class="fa fa-volume-down"></i> <input type="range" min="1"
						max="100" value="99" class="volume_slider" onchange="setVolume()">
					<i class="fa fa-volume-up"></i>
				</div>
			</div>



		
			<div class="details">
				<div class="track-art" src="data:image/jpg;base64,${songno[0].song_pic}" /></div>
				<div class="track-name-artist" style="display: inline-block";>
					<div class="track-name"><c:out value="${songno[0].song_singer}" /></div>
					<div class="track-artist"><c:out value="${songno[0].song_name}" /></div>
				</div>
			</div>

		</div>  --%>

	</div>
	<script type="text/javascript" src="/assets/js/playlist2.js"></script>

</body>
</html>