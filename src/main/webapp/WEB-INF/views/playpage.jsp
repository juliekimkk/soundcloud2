<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link
	href="/assets/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/plugins/colorbox/colorbox.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="/assets/css/playpage.css">
<link rel="stylesheet" type="text/css"
	href="/assets/styles/bootstrap-4.1.2/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

<meta name="viewport" content="width=device-width, initial-scale=1" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/color-thief/2.3.0/color-thief.umd.js"></script>
<script>
	$(function() {
		objectFitImages()
	});
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
		url = url + "?user_no=" + user_no;
		location.href = url;
		console.log(url);
	}
	
	function get_songpic(song_no) {
		var url = "${getuser.request.contextPath}/songpic";
		url = url + "?song_no=" + song_no;
		location.href = url;
		console.log(url);
	}
	
	/*?�릭?�을?? src주소가 바뀌어?? ?��?지�? ?�른?�치?? 뿌려주는�? */
	function get_src(song_no,user_no,play_list){
		var url = "${getuser.request.contextPath}/playpage";
		url = url + "?song_no=" + song_no;
		url = url + "&user_no=" + user_no;
		url = url + "&play_list=" + play_list;
		location.href = url;
		console.log(url);
	}


	

</script>
<script>
var bigPic = document.querySelector("#big");            //?? ?�진
var smallPics = document.querySelectorAll(".small");    //?��? ?�진(?�러�?)
 
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
<script src="jquery.fillcolor.js"></script>


<link rel="stylesheet" href="/assets/css/play.css">

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
	background-image: url('/assets/images/main.jpg');
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
	<div class="super_class"
		style="width: 1200px; height: 1100px; left: 350px; background-color: white;">
		<!-- ?�일 ?�단 컨테?�너 head  -->
		<div class="trackInfo" >
			<tbody>
				<c:choose>
					<c:when test="${playlist != null}">
						<div class="trackinfo_player_button">
							<a href="#"><img class="player"
								src="/assets/images/orangeplaybutton.png"></a>
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
								src="data:image/jpg;base64,${songno[0].song_pic}" /> 
							</div>
						</div>
					
						
						<%-- <%@ include file="songpic.jsp"%> --%>
							
						

					</c:when>
				</c:choose>
			</tbody>
		</div>

		<div></div>
		<!-- center ?�쪽 ?��??�보  -->
		<div style="display: flex;">
			<tbody>
				<c:choose>
					<c:when test="${user_no != null}">
						<div class="userinfo">
						  <a href="#"
						  	onClick="userpage(<c:out value="${user_no[0].user_no}" />)">
							<img class="rounded-circle"
								src="data:image/jpg;base64,${user_no[0].user_pic}" alt="" /></a>
								
								
								<a href="#"
								 onClick="userpage(<c:out value="${user_no[0].user_no}" />)">
								<c:out value="${user_no[0].user_name}">?�안?�오지?</c:out></a>
						</div>

						
					</c:when>
				</c:choose>
			</tbody>


			<!-- center ?�른�? ?�레?�리?�트  -->
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

									<ul class="songlist_one" >
										<li class="thumnails" >
										<!-- ?�릭?? ?�에 ?��?지 바뀌는 onclick ?�수 -->
										<a href="#" onclick="get_src(${list.song_no},${list.user_no },'${list.play_list}')">
										<img class="img-fluid" src="data:image/jpg;base64,${list.song_pic}" alt="" /> 
										
										<img class="show_play_icon" src="<c:url value="/assets/images/play_logo.svg" />"  />
										</a></li>
										
										<li class="songno" ><a
											href="LoginIndex"> <c:out value="${list.song_no}" /></a></li>

										<li class="singername"><a href="LoginIndex" style="color:black">: <c:out value="${list.song_singer}" />
										</a>
										</li>
										<li class="songname" ><a href="LoginIndex" style="color:black">노래이름 : <c:out
													value="${list.song_name}" /></li>
										<li class="viewcnt" ><c:out
												value="${list.view}" /></li>
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
