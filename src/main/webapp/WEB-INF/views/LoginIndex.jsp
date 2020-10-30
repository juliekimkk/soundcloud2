<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link
	href="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="/resources/plugins/colorbox/colorbox.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css" href="/resources/css/index.css">
<link rel="stylesheet" type="text/css"
	href="/resources/styles/bootstrap-4.1.2/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
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
	
	function fn_getsongno(song_no) {

		var url = "${getuser.request.contextPath}/playpage";

		url = url + "?song_no=" + song_no;

		location.href = url;
		
		console.log(url);
	}
	function fn_my(username){
		
		var url = "${getuser.request.contextPath}/perpage/getuser";
		
		url = url + "?user_name?" + username;
		
		location.href = url;
		
		consol.log(url);
	}
</script>
<link rel="stylesheet" href="/resources/css/LoginIndex.css">

<title>login mainpage</title>
</head>
<body>

<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="pinfo" />
<a href="/customLogout">로그아웃</a>
<a href="/perpage/getuser?user_name=${pinfo.username }" >마이페이지</a>

</sec:authorize>
	<section style="border: 1px solid red;">
		<div class="together" style="border: 1px dashed magenta;">
			<div class="container" style="border: 1px solid blue;">
				<hr class="my-1">
				<h4 class="display-5">
					Chill
					</h1>
					<p>Popular playlists from the SoundCloud community</p>
			</div>

			<tbody>
				<c:choose>
					<c:when test="${empty theme}">
						<tr>
							<td colspan="5" align="center">데이터가 없습니다.</td>
						</tr>
					</c:when>

					<c:when test="${!empty theme}">
						<div class="container" style="border: 3px solid green;">
							<div id="gallery1" class="carousel slide" data-ride="carousel">
								<div class="carousel-inner">

									<div class="carousel-item active">
										<div class="row">
											<c:forEach var="list" items="${theme}" varStatus="status">
												<c:if
													test="${(status.count < 6) and (list.theme == 'chill') }">

													<div class="col">
														<div class="show_image">
														<a href="#" onClick="fn_getsongno(<c:out value="${list.song_no}"/>)">
															<img class="img-fluid"
																src="data:image/jpg;base64,${list.song_pic}" /><img
																class="show_play_icon"
																src="<c:url value="/resources/images/play.svg" />" /></a>

															<td class="img-fluid"><a href="LoginIndex">노래
																	이름: <c:out value="${list.song_name}" />
															</a></td>
															<td class="img-fluid"><a
																href="perpage/getuser?user_name=${list.user_name}">유저이름
																	: <c:out value="${list.user_name}" />
															</a></td>
														</div>
													</div>
												</c:if>
											</c:forEach>
										</div>
									</div>
									<div class="carousel-item">
										<div class="row">
											<c:forEach var="list" items="${theme}" varStatus="status">
												<c:if
													test="${(status.count < 11 ) and (list.theme == 'chill') and (status.count > 5) }">
													<div class="col">
														<div class="show_image">
															<img class="img-fluid"
																src="data:image/jpg;base64,${list.song_pic}" /></a> <img
																class="show_play_icon"
																src="<c:url value="/resources/images/play.svg" />" />

															<td class="img-fluid"><a href="LoginIndex">노래
																	이름: <c:out value="${list.song_name}" />
															</a></td>
															<td class="img-fluid"><a
																href="perpage/getuser?user_name=${list.user_name}">유저이름
																	: <c:out value="${list.user_name}" />
															</a></td>
														</div>
													</div>
												</c:if>
											</c:forEach>


										</div>
									</div>
								</div>
								<a class="carousel-control-prev"
									style="border: 2px dashed magenta; top: 25px;" href="#gallery1"
									role="button" data-slide="prev"> <span
									class="carousel-control-prev-icon" aria-hidden="true"></span> <span
									class="sr-only">Previous</span>
								</a> <a class="carousel-control-next" style="top: 25px;"
									href="#gallery1" role="button" data-slide="next"> <span
									class="carousel-control-next-icon" aria-hidden="true"></span> <span
									class="sr-only">Next</span>
								</a>
							</div>
						</div>
					</c:when>
				</c:choose>
			</tbody>
		</div>
	</section>






	<!-- ?�번째트?? -->
	<section>
		<div class="container">
			<hr class="my-1">
			<h4 class="display-5">
				Party
				</h1>
				<p>Popular playlists from the SoundCloud community</p>
		</div>

		<tbody>
			<c:choose>

				<c:when test="${empty theme}">
					<tr>
						<td colspan="5" align="center">데이터가 없습니다.</td>
					</tr>
				</c:when>

				<c:when test="${!empty theme}">
					<div class="container">
						<div id="gallery2" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
											<c:if
												test="${(status.count < 16) and (list.theme == 'party') }">

												<div class="col">
													<div class="show_image">
														<%-- 		<td class="img-fluid"><c:out value="${list.song_no}" /></td> --%>
														<a href="episode.html"> <img class="img-fluid"
															src="data:image/jpg;base64,${list.song_pic}"
															alt="Image 1" /></a> <img class="show_play_icon"
															src="<c:url value="/resources/images/play.svg" />" />
														<td class="img-fluid"><a href="LoginIndex">노래 이름:
																<c:out value="${list.song_name}" />
														</a></td>
														<td class="img-fluid"><a
															href="perpage/getuser?user_name=${list.user_name}">유저이름 :
																<c:out value="${list.user_name}" />
														</a></td>
													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
								<div class="carousel-item">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
											<c:if
												test="${(status.count > 15) and (status.count < 21) and (list.theme == 'party') }">
												<div class="col">
													<div class="show_image">
														<a href="episode.html"> <img class="img-fluid"
															src="data:image/jpg;base64,${list.song_pic}"
															alt="Image 1" /></a> <img class="show_play_icon"
															src="<c:url value="/resources/images/play.svg" />" />

														<td class="img-fluid"><a href="LoginIndex">노래 이름:
																<c:out value="${list.song_name}" />
														</a></td>
														<td class="img-fluid"><a
															href="perpage/getuser?user_name=${list.user_name}">유저이름 :
																<c:out value="${list.user_name}" />
														</a></td>
													</div>
												</div>
											</c:if>
										</c:forEach>


									</div>
								</div>
							</div>
							<a class="carousel-control-prev" href="#gallery2" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next" href="#gallery2" role="button"
								data-slide="next"> <span class="carousel-control-next-icon"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</c:when>
			</c:choose>
		</tbody>
	</section>





	<!-- ?�번째트?? -->
	<section>
		<div class="container">
			<hr class="my-1">
			<h4 class="display-5">
				Relax
				</h1>
				<p>Popular playlists from the SoundCloud community</p>
		</div>

		<tbody>
			<c:choose>

				<c:when test="${empty theme}">
					<tr>
						<td colspan="5" align="center">데이터가 없습니다.</td>
					</tr>
				</c:when>

				<c:when test="${!empty theme}">
					<div class="container">
						<div id="gallery3" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
											<c:if
												test="${(status.count < 26 ) and (list.theme == 'relax') }">

												<div class="col">
													<div class="show_image">
														<a href="episode.html"> <img class="img-fluid"
															src="data:image/jpg;base64,${list.song_pic}"
															alt="Image 1" /></a> <img class="show_play_icon"
															src="<c:url value="/resources/images/play_logo.svg" />" />
														<td class="img-fluid"><a href="LoginIndex">노래 이름:
																<c:out value="${list.song_name}" />
														</a></td>
														<td class="img-fluid"><a
															href="perpage/getuser?user_name=${list.user_name}">유저이름 :
																<c:out value="${list.user_name}" />
														</a></td>
													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
								<div class="carousel-item">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
											<c:if
												test="${(status.count < 31) and (list.theme == 'relax') and (status.count > 25) }">
												<div class="col">
													<div class="show_image">
														<a href="episode.html"> <img class="img-fluid"
															src="data:image/jpg;base64,${list.song_pic}"
															alt="Image 1" /></a> <img class="show_play_icon"
															src="<c:url value="/resources/images/play.svg" />" />

														<td class="img-fluid"><a href="LoginIndex">노래 이름:
																<c:out value="${list.song_name}" />
														</a></td>
														<td class="img-fluid"><a
															href="perpage/getuser?user_name=${list.user_name}">유저이름 :
																<c:out value="${list.user_name}" />
														</a></td>
													</div>
												</div>
											</c:if>
										</c:forEach>


									</div>
								</div>
							</div>
							<a class="carousel-control-prev" href="#gallery3" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next" href="#gallery3" role="button"
								data-slide="next"> <span class="carousel-control-next-icon"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</c:when>
			</c:choose>
		</tbody>
	</section>





	<!-- ?�번째트?? -->
	<section>
		<div class="container">
			<hr class="my-1">
			<h4 class="display-5">
				Work out
				</h1>
				<p>Popular playlists from the SoundCloud community</p>
		</div>

		<tbody>
			<c:choose>

				<c:when test="${empty theme}">
					<tr>
						<td colspan="5" align="center">데이터가 없습니다.</td>
					</tr>
				</c:when>

				<c:when test="${!empty theme}">
					<div class="container">
						<div id="gallery4" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
											<c:if
												test="${(status.count < 46) and (list.theme == 'workout') }">

												<div class="col">
													<div class="show_image">
														<a href="episode.html"> <img class="img-fluid"
															src="data:image/jpg;base64,${list.song_pic}"
															alt="Image 1" /></a> <img class="show_play_icon"
															src="<c:url value="/resources/images/play.svg" />" />
														<td class="img-fluid"><a href="LoginIndex">노래 이름:
																<c:out value="${list.song_name}" />
														</a></td>
														<td class="img-fluid"><a
															href="perpage/getuser?user_name=${list.user_name}">유저이름 :
																<c:out value="${list.user_name}" />
														</a></td>
													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
								<div class="carousel-item">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
											<c:if
												test="${(status.count < 51) and (list.theme == 'workout') and (status.count > 45) }">
												<div class="col">
													<div class="show_image">
														<a href="episode.html"> <img class="img-fluid"
															src="data:image/jpg;base64,${list.song_pic}"
															alt="Image 1" /></a> <img class="show_play_icon"
															src="<c:url value="/resources/images/play.svg" />" />

														<td class="img-fluid"><a href="LoginIndex">노래 이름:
																<c:out value="${list.song_name}" />
														</a></td>
														<td class="img-fluid"><a
															href="perpage/getuser?user_name=${list.user_name}">유저이름 :
																<c:out value="${list.user_name}" />
														</a></td>
													</div>
												</div>
											</c:if>
										</c:forEach>


									</div>
								</div>
							</div>

							<a class="carousel-control-prev" href="#gallery4" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next" href="#gallery4" role="button"
								data-slide="next"> <span class="carousel-control-next-icon"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</c:when>
			</c:choose>
		</tbody>
	</section>




	<!-- ?�섯번째?�랙 -->
	<section>
		<div class="container">
			<hr class="my-1">
			<h4 class="display-5">
				Study
				</h1>
				<p>Popular playlists from the SoundCloud community</p>
		</div>

		<tbody>
			<c:choose>

				<c:when test="${empty theme}">
					<tr>
						<td colspan="5" align="center">데이터가 없습니다.</td>
					</tr>
				</c:when>

				<c:when test="${!empty theme}">
					<div class="container">
						<div id="gallery5" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
											<c:if
												test="${(status.count < 36) and (list.theme == 'study') }">

												<div class="col">
													<div class="show_image">
														<a href="episode.html"> <img class="img-fluid"
															src="data:image/jpg;base64,${list.song_pic}"
															alt="Image 1" /></a> <img class="show_play_icon"
															src="<c:url value="/resources/images/play.svg" />" />
														<td class="img-fluid"><a href="LoginIndex">노래 이름:
																<c:out value="${list.song_name}" />
														</a></td>
														<td class="img-fluid"><a
															href="perpage/getuser?user_name=${list.user_name}">유저이름 :
																<c:out value="${list.user_name}" />
														</a></td>
													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
								<div class="carousel-item">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
											<c:if
												test="${(status.count < 41) and (list.theme == 'study') and (status.count >35)}">
												<div class="col">
													<div class="show_image">
														<a href="episode.html"> <img class="img-fluid"
															src="data:image/jpg;base64,${list.song_pic}"
															alt="Image 1" /></a> <img class="show_play_icon"
															src="<c:url value="/resources/images/play.svg" />" />

														<td class="img-fluid"><a href="LoginIndex">노래 이름:
																<c:out value="${list.song_name}" />
														</a></td>
														<td class="img-fluid"><a
															href="perpage/getuser?ss=${list.user_name}">유저이름 :
																<c:out value="${list.user_name}" />
														</a></td>
													</div>
												</div>
											</c:if>
										</c:forEach>


									</div>
								</div>
							</div>
							<a class="carousel-control-prev" href="#gallery5" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next" href="#gallery5" role="button"
								data-slide="next"> <span class="carousel-control-next-icon"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</c:when>
			</c:choose>
		</tbody>
	</section>

</body>
</html>