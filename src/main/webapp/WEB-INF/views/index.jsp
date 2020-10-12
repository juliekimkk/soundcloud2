<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="utf-8" />
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

<title>SoundCloud</title>
</head>
<body>

	<nav>
		<div class="container">
			<div class="jumbotron jumbotron-fluid bg-dark" width="90%"
				height="130%">
				<div class="jumbotron-background">
					<img src="/resources/images/main.jpg" width="100%" height="130%">
				</div>

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
													<td class="img-fluid"><c:out value="${list.song_no}" /></td>
													<img class="img-fluid"
														src="data:image/jpg;base64,${list.song_pic}" alt="Image 1" />
													<td class="img-fluid"><c:out value="${list.song_name}" /></td>
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
										<td class="img-fluid"><c:out value="${list.song_no}" /></td>
										<img class="img-fluid"
											src="data:image/jpg;base64,${list.song_pic}" alt="Image 1" />
										<td class="img-fluid"><c:out value="${list.song_name}" /></td>
									</div>
								</c:if>
								</c:forEach>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#gallery" role="button"
						data-slide="prev"> <span class="carousel-control-prev-icon"
						aria-hidden="true"></span> <span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#gallery" role="button"
						data-slide="next"> <span class="carousel-control-next-icon"
						aria-hidden="true"></span> <span class="sr-only">Next</span>
					</a>
					</div>
					</div>
				</c:when>
			</c:choose>
		</tbody>
	</nav>

</body>
</html>
