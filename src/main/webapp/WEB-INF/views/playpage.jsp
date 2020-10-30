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
</script>

<link rel="stylesheet" href="/resources/css/main.css">

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
	background-image: url('/resources/images/main.jpg');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
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
		<a href="LoginIndex">메인화면</a>

		<div class="container">
			<div class="jumbotron jumbotron-fluid">
				<div class="mainbutton">
					<div class="button_border home_button trans_200">
						<a href="#" onClick="singin()";> Create account</a>
					</div>

					<div class="button_border home_button trans_200">
						<a href="#" onClick="singin()";>로그??</a>
					</div>
				</div>

				<div class="maintext">
					<div class="container text-white">
						<h4 class="display-4">Connect on SoundCloud</h4>

						<p>
							Discover, stream, and share a constantly expanding mix of music<br>
							from emerging and major artists around the world.
						</p>
					</div>
				</div>
			</div>
		</div>





		<tbody>
			<c:choose>


				<c:when test="${viewcnt2 == null}">
					<tr>
						<td colspan="5" align="center">?�이?��? ?�습?�다.</td>
					</tr>
				</c:when>


				<c:when test="${viewcnt2 != null}">
					<div class="songlist_big" style="border: solid magenta;">
						<c:forEach var="list" items="${viewcnt2}" varStatus="status">

							<ul class="songlist_one" style="border: solid red;">
								<li class="thumnails" style="border: solid blue;"><a
									href="episode.html"> <img class="img-fluid"
										src="data:image/jpg;base64,${list.song_pic}" alt="" /></a> <img
									class="show_play_icon"
									src="<c:url value="/resources/images/play_logo.svg" />" /></li>
								<li class="songno" style="border: solid black;"><a href="LoginIndex">
																<c:out value="${list.user_no}" /></a></li>
								
								<li class="singername" stlye="border: solid blue"><a href="LoginIndex">
																: <c:out value="${list.user_name}" />
														</a></td> </li>
								<li class="songname" style="border: solid red;"><a href="LoginIndex">?�래 ?�름
																: <c:out value="${list.song_name}" /></li>
								<li class="viewcnt" style="border: solid magenta">
																<c:out value="${list.view}" /></li>
							</ul>

						</c:forEach>
					</div>
				</c:when>
			</c:choose>
		</tbody>
	</div>




</body>
</html>
