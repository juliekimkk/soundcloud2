<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<script>
var bigPic = document.querySelector("#big");            //?? ?�진
var smallPics = document.querySelectorAll(".small");    //?��? ?�진(?�러�??)
 
for(var i = 0 ; i < smallPics.length ; i++){
    smallPics[i].addEventListener("click", changepic);  //?�벤?? 처리
    /* 
    onclick?�로 ?�면 ?�나?? ?�소?? ?�나?? ?�벤?�만 ?�용가??
    smallPics[i].onclick = changepic;
    */
}
 
function changepic(){   //?�진 바꾸?? ?�수
    var smallPicAttribute = this.getAttribute("src");
    bigPic.setAttribute("src", smallPicAttribute); 
}

</script>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>



<title>특정가수노래만 모은 트렉</title>
</head>

<body style="background-color: #f2f2f2;">
	<div class="super_class2">
		<%@ include file="navbar.jsp"%>
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
												class="img-fluid"
												src="data:image/jpg;base64,${list.song_pic}"
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


										<div id="footer">


											<!-- button,slider bar -->
											<div class="player2">
												<div class="details">

													<div class="track-art"></div>
													<div class="track-name">Track Name</div>
													<div class="track-artist">Track Artist</div>
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
														<div class="current-time" style="color: #f50;">00:00</div>
														</style>
														<input type="range" min="1" max="100" value="0"
															class="seek_slider" onchange="seekTo()">
														<div class="total-duration">00:00</div>
													</div>



													<!-- 볼륨바-->
													<div class="slider_container">
														<i class="fa fa-volume-down"></i> <input type="range"
															min="1" max="100" value="99" class="volume_slider"
															onchange="setVolume()"> <i
															class="fa fa-volume-up"></i>
													</div>
												</div>
											</div>
										</div>




										<tbody>
											<c:choose>
												<c:when test="${playlist != null}">

													<div class="details">
														<div class="track-art">
															<img class="miniartsize"
																src="data:image/jpg;base64,${songno[0].song_pic}" />
														</div>
														<div class="track-name-artist"
															style="display: inline-block";>
															<div class="track-name">
																<c:out value="${songno[0].song_singer}" />
															</div>
															<div class="track-artist">
																<c:out value="${songno[0].song_name}" />
															</div>

															<%-- 	<audio controls="controls"  autoplay>
									<source src="data:audio/mpeg;base64,${songno[0].song}"
										type="audio/ogg">
								</audio> --%>


														</div>
													</div>

												</c:when>
											</c:choose>
										</tbody>
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