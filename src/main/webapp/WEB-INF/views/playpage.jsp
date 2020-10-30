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
	
	/*?´ë¦­?ˆì„?? srcì£¼ì†Œê°€ ë°”ë€Œì–´?? ?´ë?ì§€ë¥? ?¤ë¥¸?„ì¹˜?? ë¿Œë ¤ì£¼ëŠ”ê²? */
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
var bigPic = document.querySelector("#big");            //?? ?¬ì§„
var smallPics = document.querySelectorAll(".small");    //?‘ì? ?¬ì§„(?¬ëŸ¬ê°?)
 
for(var i = 0 ; i < smallPics.length ; i++){
    smallPics[i].addEventListener("click", changepic);  //?´ë²¤?? ì²˜ë¦¬
    /* 
    onclick?¼ë¡œ ?˜ë©´ ?˜ë‚˜?? ?”ì†Œ?? ?˜ë‚˜?? ?´ë²¤?¸ë§Œ ?¬ìš©ê°€??
    smallPics[i].onclick = changepic;
    */
}
 
function changepic(){   //?¬ì§„ ë°”ê¾¸?? ?¨ìˆ˜
    var smallPicAttribute = this.getAttribute("src");
    bigPic.setAttribute("src", smallPicAttribute); 
}

</script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="jquery.fillcolor.js"></script>


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

.show_image { /*ê°€ë¡œì •?? */
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
		<!-- ?œì¼ ?ë‹¨ ì»¨í…Œ?´ë„ˆ head  -->
		<div class="trackInfo" >
			<tbody>
				<c:choose>
					<c:when test="${playlist != null}">
						<div class="trackinfo_player_button">
							<a href="#"><img class="player"
								src="/resources/images/orangeplaybutton.png"></a>
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
		<!-- center ?¼ìª½ ? ì??•ë³´  -->
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
								<c:out value="${user_no[0].user_name}">?œì•ˆ?˜ì˜¤ì§€?</c:out></a>
						</div>

						
					</c:when>
				</c:choose>
			</tbody>


			<!-- center ?¤ë¥¸ìª? ?Œë ˆ?´ë¦¬?¤íŠ¸  -->
			<div class="playlistContainer">
				<tbody>
					<c:choose>


						<c:when test="${playlist == null}">
							<tr>
								<td colspan="5" align="center">?°ì´?°ê? ?†ìŠµ?ˆë‹¤.</td>
							</tr>
						</c:when>


						<c:when test="${playlist != null}">
							<div class="songlist_big">
								<c:forEach var="list" items="${playlist}" varStatus="status">

									<ul class="songlist_one" >
										<li class="thumnails" >
										<!-- ?´ë¦­?? ?„ì— ?´ë?ì§€ ë°”ë€ŒëŠ” onclick ?¨ìˆ˜ -->
										<a href="#" onclick="get_src(${list.song_no},${list.user_no },'${list.play_list}')">
										<img class="img-fluid" src="data:image/jpg;base64,${list.song_pic}" alt="" /> 
										
										<img class="show_play_icon" src="<c:url value="/resources/images/play_logo.svg" />"  />
										</a></li>
										
										<li class="songno" ><a
											href="LoginIndex"> <c:out value="${list.song_no}" /></a></li>

										<li class="singername"><a href="LoginIndex" style="color:black">: <c:out value="${list.song_singer}" />
										</a>
										</li>
										<li class="songname" ><a href="LoginIndex" style="color:black">?¸ë˜ ?´ë¦„ : <c:out
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