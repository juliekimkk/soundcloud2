<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="plugins/colorbox/colorbox.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css" href="resources/css/index.css">
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap-4.1.2/bootstrap.min.css">
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
<link rel="stylesheet" href="/resources/css/main.css">

<title>SoundCloud</title>
<style type="text/css">
.jumbotron {
	background-image: url('/resources/images/main.jpg');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}
.asd{
background-image: url('/resources/images/pic2.jpg');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}
</style>

</head>
<body>

	<nav>
		<div class="container">
			<div class="jumbotron jumbotron-fluid bg-dark" width="90%"
				height="130%">
				<div class="mainbutton">
					<button type="button" class="btn">Sign in</button>
					<button type="button" class="btn btn-danger btn-sm">Create
						account</button>
				</div>

				<div class="maintext">
					<div class="container text-white">
						<h1 class="display-4">Connect on SoundCloud</h1>
						<hr class="my-4">
						<p>
							Discover, stream, and share a constantly expanding mix of music<br>
							from emerging and major artists around the world.
						</p>
					</div>
				</div>
			</div>
		</div>
	</nav>


	<nav>
		<tbody>

			<c:choose>

				<c:when test="${empty songList }">
					<tr>
						<td colspan="5" align="center">데이터가 없습니다.</td>
					</tr>
				</c:when>
				<c:when test="${!empty songList}">

					<div class="container">
						<div id="gallery" class="carousel slide" data-ride="carousel">

							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="row">
										<c:forEach var="list" items="${songList}" varStatus="status">
											<c:if test="${status.count < 6}">
												<div class="col">
													<div class="show_image">
														<td class="img-fluid"><c:out value="${list.song_no}" /></td>
														<a href="episode.html"> <img class="img-fluid"
															src="data:image/jpg;base64,${list.song_pic}"
															alt="Image 1" /></a> <img class="show_play_icon"
															src="<c:url value="/resources/images/play.svg" />" />


														<td class="img-fluid"><a href="LoginIndex"><c:out
																	value="${list.song_name}" /></a></td>
														<td class="img-fluid"><a href="LoginIndex"><c:out
																	value="${list.user_name}" /></a></td>
													</div>
												</div>
											</c:if>
											<c:if test="${status.count == 6}">
									</div>
								</div>
								<div class="carousel-item">
									<div class="row">
										</c:if>
										<c:if test="${status.count >= 6}">

											<div class="col">
												<div class="show_image">
													<td class="img-fluid"><c:out value="${list.song_no}" /></td>
													<a href="episode.html"> <img class="img-fluid"
														src="data:image/jpg;base64,${list.song_pic}" alt="Image 1" /></a>
													<img class="show_play_icon"
														src="<c:url value="/resources/images/play.svg" />" />

													<td class="img-fluid"><a href="LoginIndex"><c:out
																value="${list.song_name}" /></a></td>
													<td class="img-fluid"><a href="LoginIndex"><c:out
																value="${list.user_name}" /></a></td>
												</div>
											</div>
										</c:if>
										</c:forEach>
									</div>
								</div>
							</div>
							<a class="carousel-control-prev" href="#gallery" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next" href="#gallery" role="button"
								data-slide="next"> <span class="carousel-control-next-icon"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</c:when>
			</c:choose>
		</tbody>
	</nav>



	<!-- 플레이어 -->
	<div class="super_container">
		<div class="shows">
			<div class="container">
				<div class="row shows_row">
					<!-- Show -->
					<div class="col-lg-4">
						<div class="show">
							<div class="show_image">
								<a href="episode.html"> <img
									src="resources/images/show_1.jpg"
									alt="https://unsplash.com/@icons8">
								</a>
								<div class="show_play_icon">
									<img src="resources/images/play_logo.svg"
										alt="https://www.flaticon.com/authors/cole-bemis">
								</div>
							</div>
						</div>
					</div>
					<!-- Show -->
					<div class="col-lg-4">
						<div class="show">
							<div class="show_image">
								<a href="episode.html"> <img
									src="resources/images/show_5.jpg"
									alt="https://unsplash.com/@icons8">
								</a>
								<div class="show_play_icon">
									<img src="resources/images/play_logo.svg"
										alt="https://www.flaticon.com/authors/cole-bemis">
								</div>
							</div>
						</div>
					</div>
					<!-- Show -->
					<div class="col-lg-4">
						<div class="show">
							<div class="show_image">
								<a href="episode.html"> <img
									src="resources/images/show_6.jpg"
									alt="https://unsplash.com/@icons8">
								</a>
								<div class="show_play_icon">
									<img src="resources/images/play_logo.svg"
										alt="https://www.flaticon.com/authors/cole-bemis">
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			
		</div>
		<div class="row">
			<div class="col text-center">
				<div class="button_fill shows_button">
					<a href="#">browse shows</a>
				</div>
			</div>
		</div>
	</div>
	
	
	
<jsp:include page="/WEB-INF/views/MainpagePlaylist.jsp">
 <jsp:param name="serverTime" value="${serverTime}"></jsp:param>
 </jsp:include>

	
	

	<div class="container">
		<div class="asd">
			<h1 class="text-center">코딩 독학을 소개합니다.</h1>
			<p class="text-center">코딩 독학은 It 교육 자료 입니다. 다양한 IT 유료 및 강의가 들어
				갑니다.</p>
			<p class="text-center">
				<a class="btn btn-primary btn-lg" href="#" role="button">강의 들으러
					가기</a>
			</p>
		</div>
	</div>
</body>
</html>
