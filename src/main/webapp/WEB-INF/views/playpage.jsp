<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!-- ?�영 ?�레?�리?�트 ?��??? -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

<link rel="stylesheet" type="text/css" href="/assets/css/playlist2.css">


<link href="/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/assets/css/playpage.css">
<link rel="stylesheet" type="text/css"
	href="/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />





<meta name="viewport" content="width=device-width, initial-scale=1" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/color-thief/2.3.0/color-thief.umd.js"></script>
<!-- <script>
	$(function() {
		objectFitImages()
	});
</script>
 -->

<script>
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
</script>

<!-- song with DB -->
<script type="text/javascript">
var track_list = new Array();
<c:forEach items="${songno}" var="item">
track_list.push(
      {name:"${item.song_name}",
      artist:"${item.song_singer}",
      image:"${item.path}${item.song_pic}",
      path:"${item.path}${item.song}"}
   );
</c:forEach>
for(var i=0; i < track_list.length; i++)
{
    var person = JSON.stringify(track_list[i]);
      var oPerson = JSON.parse(person);
}
</script>



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
	function userpage(user_no) {
		var url = "${getuser.request.contextPath}/perpage/getuser";
		url = url + "?user_name=" + user_name;
		location.href = url;
		console.log(url);
	}
	
	function get_songpic(song_no) {
		var url = "${getuser.request.contextPath}/songpic";
		url = url + "?song_no=" + song_no;
		location.href = url;
		console.log(url);
	}
	
	/*?�릭?�을?? src주소가 바뀌어?? ?��?지�?? ?�른?�치?? 뿌려주는�?? */
	function get_src(song_no,user_name,play_list){
		var url = "${getuser.request.contextPath}/playpage";
		url = url + "?song_no=" + song_no;
		url = url + "&user_name=" + user_name;
		url = url + "&play_list=" + play_list;
		location.href = url;
		console.log(url);
	}
	
	function next_song(song_no,user_name,play_list){
		var url = "${getuser.request.contextPath}/nextsong";
		url = url + "?song_no=" + song_no;
		url = url + "&user_name=" + user_name;
		url = url + "&play_list=" + play_list;
		location.href = url;
	}
	
	function prev_song(song_no,user_name,play_list){
		var url = "${getuser.request.contextPath}/prevsong";
		url = url + "?song_no=" + song_no;
		url = url + "&user_name=" + user_name;
		url = url + "&play_list=" + play_list;
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
<script src="/assets/jquery.fillcolor.js"></script>


<link rel="stylesheet" href="/assets/css/playpage.css">

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
	background-image: url('/assets/images/conangray1.jpg');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}

.show_image { /*가로정?? */
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
	background-image: url('/assets/images/pic2.jpg');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}
</style>
</head>

<body>
<body style="background-color: #f2f2f2;">
<sec:authentication property="principal" var="pinfo" />
	<%@ include file="navbar.jsp"%>
	<c:if test="${empty pinfo.username }">
				<%@ include file="navbar2.jsp"%>
			</c:if>
	<div class="super_class"
		style="width: 1200px; height: 1100px; left: 350px; background-color: white;">
		<!-- top container head  -->
		<div class="trackInfo">
			<tbody>
				<c:choose>
					<c:when test="${playlist != null}">
						<div class="trackinfo_player_button">
							<button class="orange" onclick="playpauseTrack2()">
								<img class="player" src="/assets/images/orangeplaybutton.png">
							</button>
						</div>
						<div class="trackinfo">
							<div class="trackinfo_user_name">
								<c:out value="${user_no[0].user_name}" />
							</div>
							<div class="trackinfo_song_play_list">
								<c:out value="${songno[0].play_list}" />
							</div>
							<div>
								<img class="trackinfo_song_pic"
									src="${songno[0].path }${songno[0].song_pic}" />
							</div>
						</div>


						<%-- <%@ include file="songpic.jsp"%> --%>



					</c:when>
				</c:choose>
			</tbody>
		</div>

		<div></div>
		<!-- center userinfo  -->
		<div style="display: flex;">
			<tbody>

				<div class="userinfo">
					<a href="/perpage/getuser?user_name=${user_no[0].user_name }">
						<img class="rounded-circle"
						src="${user_no[0].path }${user_no[0].user_pic}"
						onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)" alt=""
						onerror="this.src='/assets/pngegg.png'" />
					</a> <a href="/perpage/getuser?user_name=${user_no[0].user_name }">
						<c:out value="${user_no[0].user_name}"></c:out>
					</a>
				</div>

			</tbody>


			<!-- center list  -->
			<div class="playlistContainer">
				<tbody>
					<c:choose>


						<c:when test="${playlist == null}">
							<tr>
								<td colspan="5" align="center">?�이?��? ?�습?�다.</td>
							</tr>
						</c:when>


						<c:when test="${playlist != null}">
							<div class="songlist_big">
								<c:forEach var="list" items="${playlist}" varStatus="status">

									<ul class="songlist_one" style="top: 10px;">
										<li class="thumnails">
											<!-- ?�릭?? ?�에 ?��?지 바뀌는 onclick ?�수 --> <a href="#"
											onclick="get_src(${list.song_no},'${list.user_name }','${list.play_list}')">
												<img class="img-fluid" src="${list.path}${list.song_pic}"
												alt="" /> <img class="show_play_icon"
												src="<c:url value="/assets/images/play_logo.svg" />" />
										</a>
										</li>

										<li class="songno"><a href="#"> <c:out
													value="${list.song_no}" /></a></li>

										<li class="singername"><a href="#">: <c:out
													value="${list.song_singer}" />
										</a></li>
										<li class="songname"><a href="#"> <c:out
													value="${list.song_name}" /></li>
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







	<!-- 인영씨플레이어 -->


	<div id="footer">


		<!-- button,slider bar -->
		<div class="player2">
			<!-- Define the section for displaying track buttons -->
			<div class="buttons">
				<div class="prev-track" onclick="prev_song(${songno[0].song_no},'${songno[0].user_name}','${songno[0].play_list}')">
					<i class="fa fa-step-backward fa-2x" style="top: 3px;"></i>
				</div>

				<div class="playpause-track" onclick="playpauseTrack()">
					<i class="fa fa-play-circle fa-2x"></i>
				</div>
				<div class="next-track"
					onclick="next_song(${songno[0].song_no},'${songno[0].user_name}','${songno[0].play_list}')">
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



			<!-- 볼륨바-->
			<div class="slider_container">
				<i class="fa fa-volume-down"></i> <input type="range" min="1"
					max="100" value="99" class="volume_slider" onchange="setVolume()">
				<i class="fa fa-volume-up"></i>
			</div>



			<tbody>
				<c:choose>
					<c:when test="${playlist != null}">

						<div class="details">
							<div class="track-art">
								<img class="miniartsize"
									src="${songno[0].path }${songno[0].song_pic}" />
							</div>
							<div class="track-name-artist" style="display: inline-block";>
								<div class="track-name">
									<c:out value="${songno[0].song_singer}" />
									:
								</div>
								<div class="track-artist">
									<c:out value="${songno[0].song_name}" />
								</div>


							</div>
						</div>

					</c:when>
				</c:choose>
			</tbody>

		</div>
	</div>

	<!-- Load the main script for the player -->
	<script type="text/javascript" src="/assets/js/playlist2.js"></script>



</body>
</html>