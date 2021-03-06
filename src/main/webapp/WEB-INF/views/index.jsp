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
<link rel="stylesheet" type="text/css" href="/assets/css/index.css">

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

<link rel="stylesheet" href="/assets/css/main.css">

<title>SoundCloud</title>
<style type="text/css">
.jumbotron {
	background-image: url('/assets/images/main.jpg');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}

.asd {
	background-image: url('/assets/images/pic2.jpg');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}

.buttonset{
position:absolute;
 flaot:right;
 right:0px;
 top:0px;
}
</style>

</head>
<%@ include file="navbar.jsp"%>
<body>

	<nav>
		<div class="container">
			<div class="jumbotron jumbotron-fluid bg-dark" width="90%" height="130%";>
				<div class="buttonset">
				<div class="button_border home_button trans_200">
						<a href="#" onClick="create()";>회원가입</a></div>
					
				<div class="button_border home_button trans_200">
						<a href="#" onClick="singin()";>로그인</a>
				</div>
				</div>

				<div class="maintext">
					<div class="container text-white">
						<h1 class="display-4" >Connect on SoundCloud</h1>
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


	

<%@ include file="MainpagePlaylist.jsp"%>

<!-- Footer -->

	<footer class="footer">
		<div class="container">
		
			<div class="row footer_content_row">
				
				<!-- Tags -->
				<div class="col-lg-4">
					<div class="footer_title">Tags</div>
					<div class="footer_list">
						<div><div><a href="#">music</a></div></div>
						<div><div><a href="#">art</a></div></div>
						<div><div><a href="#">technology</a></div></div>
						<div><div><a href="#">travel & food</a></div></div>
						<div><div><a href="#">viral</a></div></div>
						<div><div><a href="#">social media</a></div></div>
						<div><div><a href="#">interview</a></div></div>
						<div><div><a href="#">developement</a></div></div>
						<div><div><a href="#">success</a></div></div>
						<div><div><a href="#">live</a></div></div>
						<div><div><a href="#">did you know?</a></div></div>
						<div><div><a href="#">health</a></div></div>
					</div>
				</div>

				<!-- Latest Episodes -->
				<div class="col-lg-4">
					<div class="footer_title">Latest Episodes</div>
					<div class="latest_container">
						
						<!-- Latest -->
						<div class="latest">
							<div class="latest_title_container d-flex flex-row align-items-start justify-content-start">
								<a href="episode.html">
									<div class="d-flex flex-row align-items-start justify-content-start">
										<div class="latest_play">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="512px" height="512px" viewBox="0 0 714 714" style="enable-background:new 0 0 714 714;" xml:space="preserve">
												<g id="Play">
													<path d="M641.045,318.521L102,0C73.822,0,51,22.822,51,51v612c0,28.178,22.822,51,51,51l539.045-318.521      C654.661,387.422,663,372.81,663,357C663,341.19,654.661,326.579,641.045,318.521z M153,565.386V148.614L505.665,357      L153,565.386z" fill="#FFFFFF"/>
												</g>
											</svg>
										</div>
										<div class="latest_title_content">
											<div class="latest_title">Season 4 Episode 48 - A Step Further</div>
										</div>
									</div>
								</a>
							</div>
							<div class="latest_episode_info">
								<ul class="d-flex flex-row align-items-start justify-content-start">
									<li><a href="#">September 24, 2018</a></li>
									<li><a href="#">Music</a></li>
								</ul>
							</div>
						</div>


						<!-- Latest -->
						<div class="latest">
							<div class="latest_title_container d-flex flex-row align-items-start justify-content-start">
								<a href="episode.html">
									<div class="d-flex flex-row align-items-start justify-content-start">
										<div class="latest_play">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="512px" height="512px" viewBox="0 0 714 714" style="enable-background:new 0 0 714 714;" xml:space="preserve">
												<g id="Play">
													<path d="M641.045,318.521L102,0C73.822,0,51,22.822,51,51v612c0,28.178,22.822,51,51,51l539.045-318.521      C654.661,387.422,663,372.81,663,357C663,341.19,654.661,326.579,641.045,318.521z M153,565.386V148.614L505.665,357      L153,565.386z" fill="#FFFFFF"/>
												</g>
											</svg>
										</div>
										<div class="latest_title_content">
											<div class="latest_title">Season 4 Episode 47 - Deep in Crypto</div>
										</div>
									</div>
								</a>
							</div>
							<div class="latest_episode_info">
								<ul class="d-flex flex-row align-items-start justify-content-start">
									<li><a href="#">September 24, 2018</a></li>
									<li><a href="#">Music</a></li>
								</ul>
							</div>
						</div>



						<!-- Latest -->
						<div class="latest">
							<div class="latest_title_container d-flex flex-row align-items-start justify-content-start">
								<a href="episode.html">
									<div class="d-flex flex-row align-items-start justify-content-start">
										<div class="latest_play">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="512px" height="512px" viewBox="0 0 714 714" style="enable-background:new 0 0 714 714;" xml:space="preserve">
												<g id="Play">
													<path d="M641.045,318.521L102,0C73.822,0,51,22.822,51,51v612c0,28.178,22.822,51,51,51l539.045-318.521      C654.661,387.422,663,372.81,663,357C663,341.19,654.661,326.579,641.045,318.521z M153,565.386V148.614L505.665,357      L153,565.386z" fill="#FFFFFF"/>
												</g>
											</svg>
										</div>
										<div class="latest_title_content">
											<div class="latest_title">Season 4 Episode 46 - Nothing is real</div>
										</div>
									</div>
								</a>
							</div>
							<div class="latest_episode_info">
								<ul class="d-flex flex-row align-items-start justify-content-start">
									<li><a href="#">September 24, 2018</a></li>
									<li><a href="#">Music</a></li>
								</ul>
							</div>
						</div>

					</div>
				</div>

				<!-- Gallery -->
				<div class="col-lg-4">
					<div class="footer_title">Instagram</div>
					<div class="gallery d-flex flex-row align-items-start justify-content-start flex-wrap">
						
						<!-- Gallery Item -->
						<div class="gallery_item">
							<a class="colorbox" href="assets/images/gallery_1_large.jpg"><img src="assets/images/gallery_1.jpg" alt=""></a>
						</div>

						<!-- Gallery Item -->
						<div class="gallery_item">
							<a class="colorbox" href="assets/images/gallery_2_large.jpg"><img src="assets/images/gallery_2.jpg" alt=""></a>
						</div>

						<!-- Gallery Item -->
						<div class="gallery_item">
							<a class="colorbox" href="assets/images/gallery_3_large.jpg"><img src="assets/images/gallery_3.jpg" alt=""></a>
						</div>

						<!-- Gallery Item -->
						<div class="gallery_item">
							<a class="colorbox" href="assets/images/gallery_4_large.jpg"><img src="assets/images/gallery_4.jpg" alt=""></a>
						</div>

						<!-- Gallery Item -->
						<div class="gallery_item">
							<a class="colorbox" href="assets/images/gallery_5_large.jpg"><img src="assets/images/gallery_5.jpg" alt=""></a>
						</div>
						
						<!-- Gallery Item -->
						<div class="gallery_item">
							<a class="colorbox" href="assets/images/gallery_3_large.jpg"><img src="assets/images/gallery_3.jpg" alt=""></a>
						</div>

					</div>
				</div>
			</div>
			<!-- <div class="row footer_social_row">
				<div class="col">
					<div class="footer_social">
						<ul class="d-flex flex-row align-items-center justify-content-center">
							<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-soundcloud" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
			</div> -->

</br></br><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

		</div>
	</footer>	



	




</body>
</html>
