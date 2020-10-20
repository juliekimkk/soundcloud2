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
</script>
<link rel="stylesheet" href="/resources/css/main.css">

<title>login mainpage</title>
</head>
<body>
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
						<td colspan="5" align="center">데이터가 없습니다.이런ㅠㅠ</td>
					</tr>
				</c:when>

				<c:when test="${!empty theme}">
					<div class="container">
						<div id="gallery" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
											
											
											<c:if test="${(status.count < 6) and (list.theme == 'study') }">
												<div class="col">
													<div class="show_image">
														<td>ssssssss<c:out value="${list.theme}" /></td>
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
	</section>



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

				<c:when test="${empty theme }">
					<tr>
						<td colspan="5" align="center">데이터가 없습니다.이런ㅠㅠ</td>
					</tr>
				</c:when>
				<c:when test="${!empty theme}">

					<div class="container">
						<div id="gallery" class="carousel slide" data-ride="carousel">

							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
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
	</section>


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

				<c:when test="${empty theme }">
					<tr>
						<td colspan="5" align="center">데이터가 없습니다.이런ㅠㅠ</td>
					</tr>
				</c:when>
				<c:when test="${!empty theme}">

					<div class="container">
						<div id="gallery" class="carousel slide" data-ride="carousel">

							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
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
	</section>

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

				<c:when test="${empty theme }">
					<tr>
						<td colspan="5" align="center">데이터가 없습니다.이런ㅠㅠ</td>
					</tr>
				</c:when>
				<c:when test="${!empty theme}">

					<div class="container">
						<div id="gallery" class="carousel slide" data-ride="carousel">

							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
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
	</section>

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

				<c:when test="${empty theme }">
					<tr>
						<td colspan="5" align="center">데이터가 없습니다.이런ㅠㅠ</td>
					</tr>
				</c:when>
				<c:when test="${!empty theme}">

					<div class="container">
						<div id="gallery" class="carousel slide" data-ride="carousel">

							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="row">
										<c:forEach var="list" items="${theme}" varStatus="status">
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
	</section>

</body>
</html>