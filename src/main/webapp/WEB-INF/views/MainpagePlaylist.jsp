<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/assets/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/plugins/colorbox/colorbox.css" rel="stylesheet"
	type="text/css">

<link rel="stylesheet" type="text/css"
	href="/assets/styles/bootstrap-4.1.2/bootstrap.min.css">
<link rel="stylesheet"
	href="https:/maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

<meta name="viewport" content="width=device-width, initial-scale=1" />

<script
	src="https:/ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https:/cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https:/maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
	$(function() {
		objectFitImages()
	});
</script>
<script>
	function LoginIndex(){
		var url = "${getuser.request.contextPath}/LoginIndex";
		location.href = url;
		console.log(url);
	}
	
	/*괄호 안에 들어있는 값은 함수안에서 쓰는 변수명*/
	function get_songbysinger(particular_singer){
		var url = "${getuser.request.contextPath}/ParticularSinger";
		url = url + "?particular_singer=" + particular_singer;
		location.href = url;
		console.log(url);
	}
</script>
<link rel="stylesheet" href="/assets/css/main.css">

<title>SoundCloud</title>
<style type="text/css">
* {
	margin: 0px; 
	padding: 0px; 

}
.img-fluid{

}
.jumbotron {
	background-image: url('/assets/images/main.jpg');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}


.show_image{ /*가로정렬 */
	display:inline;
	float:right;
	max-width:100%;

}
.box{
}


.submit {
  display: flex;
  align-items: center;
  justify-content: center;
  bottom:20px;
}

.show_play_icon {
height:35px;
}
</style>


</head>
<body>

<nav class="box">
	<tbody>
		<c:choose>

			<c:when test="${viewcnt2 == null}">
				<tr>
					<td colspan="5" align="center">데이터가 없습니다.</td>
				</tr>
			</c:when>
			
			
			<c:when test="${viewcnt2 != null}">

				<div class="container" style="display:grid;">
					<div id="gallery" class="carousel slide" data-ride="carousel">

						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="line" style= "width:1100px; height:600px;">
									<c:forEach var="list" items="${viewcnt2}" varStatus="status">
										<c:if test="${status.count < 13}">
											
												<div class="show_image" style= "width:180px; margin:10px; border: solid white; "> 
													<a href="#" onclick="get_songbysinger('<c:out value="${list.song_singer}" />')"> 
													<img class="img-fluid" src="${list.path }${list.song_pic}" alt="Image 1" />
													<img class="show_play_icon"
														src="<c:url value="/assets/images/play.svg" />" /></a>


													<td class="img-fluid"><a href="LoginIndex"><c:out
																value="${list.song_name}" /></a></td>
													<td class="img-fluid"><a href="LoginIndex"><c:out
																value="${list.user_name}" /></a></td>
													<td class="img-fluid">조회수:<c:out value="${list.view}" /></td>			
												</div>
										</c:if>
									</c:forEach>
									</div>
								</div>
							</div>
							<div class="submit" style="bottom:30px;"><button onClick="LoginIndex()"; type="button" class="btn btn-danger btn-lg" >Explore trending playlists</button></div>
						</div>

					</div>
				</div>
			</c:when>

		</c:choose>
		
	</tbody>
	
</nav>
<ul>
<li><a href="#">노래 이름 : <c:out value="${getparticularsinger.singer_name}" /></li></ul>


</body>
</html>