<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Simple Music Player</title>
<!-- Load FontAwesome icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

<!-- Load the custom CSS style file -->
<link rel="stylesheet" type="text/css" href="/assets/css/playlist2.css">


</head>
<body>

<%@ include file="navbar.jsp"%>

	<div id="footer">


		 <!-- 버튼,플레이어,음량 -->
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

	<!-- Load the main script for the player -->
	<script type="text/javascript" src="/assets/js/playlist2.js"></script>
	
</body>
</html>
