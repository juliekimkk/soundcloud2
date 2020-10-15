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
* {
	margin: 0px; 
	padding: 0px; 
	box-sizing: border-box;
}
.jumbotron {
	background-image: url('/resources/images/main.jpg');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}

</style>


</head>
<body>

<nav>
	<tbody>
		<c:choose>

			<c:when test="${empty viewcnt2 }">
				<tr>
					<td colspan="5" align="center">데이터가 없습니다.</td>
				</tr>
			</c:when>
			
			
			<c:when test="${!empty viewcnt2}">

				<div class="container" style="border: solid red; display:grid;">
					<div id="gallery" class="carousel slide" data-ride="carousel">

						<div class="carousel-inner">
							<div class="carousel-item active">
								
									<c:forEach var="list" items="${viewcnt2}" varStatus="status">
										<c:if test="${status.count < 13}">
											
												<div class="show_image" style= "flex:auto; width:60px; margin:0px;">
													<td class="img-fluid"><c:out value="${list.view}" /></td>
													<a href="episode.html"> <img class="img-fluid"
														src="data:image/jpg;base64,${list.song_pic}" alt="Image 1" /></a>
													<img class="show_play_icon"
														src="<c:url value="/resources/images/play.svg" />" />


													<td class="img-fluid"><a href="LoginIndex"><c:out
																value="${list.song_name}" /></a></td>
													<td class="img-fluid"><a href="LoginIndex"><c:out
																value="${list.user_name}" /></a></td>
												</div>
										
										</c:if>
									</c:forEach>
								</div>
							</div>
						</div>

					</div>
				</div>
			</c:when>

		</c:choose>
	</tbody>
</nav>



</body>
</html>