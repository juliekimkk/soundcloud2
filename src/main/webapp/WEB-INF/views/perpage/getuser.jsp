<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<link rel="stylesheet" type="text/css"
	href="../assets/css/getuser.css">
<meta charset="utf-8">
<script type="text/javascript" src="../assets/js/playlist2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

<!-- <link rel="stylesheet" type="text/css" href="/assets/css/playlist2.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="/assets/css/playpage.css"> -->
<link rel="stylesheet" type="text/css" href="/assets/css/playlist2.css">


<link href="/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="/assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

<title>Insert title here</title>

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
    event.target.style.transform = "scale(1.1)";
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
<c:forEach items="${song}" var="item">
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
	function get_src(user_name,song_no){
		var url = "${getuser.request.contextPath}/perpage/getuser";
		url = url + "?user_name=" + user_name;
		url = url + "&song_no=" + song_no;
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
<style type="text/css">
.thumnails{
	position:absolute;
	width:150px;
	height:150px;
	top:0px;
}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
<body style="background-color: #f2f2f2;">
	<sec:authentication property="principal" var="pinfo" />

	<div class="super_class2">
		<%-- <%@ include file="navbar.jsp"%> --%>
		<div class="super_class"
			style="width: 1200px; height: auto; left: 350px; background-color: white;">
			<%@ include file="navbar.jsp"%>

			<c:if test="${empty pinfo.username }">
				<%@ include file="navbar2.jsp"%>
			</c:if>


			<div style="display: flex;">
				<tbody>
					<a href="insert?user_name=${pinfo.username }">노래넣기</a>
					<c:choose>
						<c:when test="${songList == null}">
							<tr>
								<td colspan="5" align="center">데이터가 없습니다.</td>
							</tr>
						</c:when>


						<c:when test="${songList != null}">
							<div class="songlist_big">
								<c:forEach var="list" items="${songList}" varStatus="status">

									<ul class="songlist_one">
										<li class="thumnails">
											<!-- 클릭시 위에 이미지 바뀌는 onclick 함수 --> <a href="#" onclick="get_src('${list.user_name}',${list.song_no })"><img
												class="img-fluid" src="${list.path }${list.song_pic}"
												onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)"
												alt="" /> <img class="show_play_icon"
												src="<c:url value="/assets/images/orangeplaybutton.png" />" />

										</a>
										</li>

										<li class="singername"><a href="#"
											onclick="get3d('${list.song_singer}')"> <c:out
													value="${list.song_singer}" />
										</a></li>
										<li class="songname"><a href="#" style="color: black">
												: <c:out value="${list.song_name}" /></li>
										<li class="viewcnt"><c:out value="${list.view}" /></li>

									</ul>
									<sec:authorize access="isAuthenticated()">
										<c:if test="${pinfo.username == list.user_name }">
											<a
												href="songdelete?song_no=${list.song_no }&user_name=${list.user_name}">
												삭제</a>
										</c:if>
									</sec:authorize>
									<hr class="my-1">


								</c:forEach>
							</div>
						</c:when>
					</c:choose>
				</tbody>
			</div>
		</div>
	</div>
	
	<div id="footer">
		<!-- button,slider bar -->
		<div class="player2">
			<!-- Define the section for displaying track buttons -->
			<div class="buttons">
				<div class="prev-track"
					onclick="prev_song(${songno[0].song_no},'${songno[0].user_name}','${songno[0].play_list}')">
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
					<c:when test="${song != null}">

						<div class="details">
							<div class="track-art">
								<img class="miniartsize"
									src="${song[0].path }${song[0].song_pic}" />
							</div>
							<div class="track-name-artist" style="display: inline-block";>
								<div class="track-name">
									<c:out value="${song[0].song_singer}" />
									:
								</div>
								<div class="track-artist">
									<c:out value="${song[0].song_name}" />
								</div>


							</div>
						</div>

					</c:when>
				</c:choose>
			</tbody>

		</div>
	</div>

	<!-- Load the main script for the player -->
	<script type="text/javascript" src="../assets/js/playlist2.js"></script>


</body>


</html>