<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<html>
<head>
<!-- 끼워넣기 모듈화 -->



<!-- 구글 폰트 -->
<link href='http://fonts.googleapis.com/css?family=Droid+Sans'
	rel='stylesheet' type='text/css'>

<!-- css -->
<link href="../resources/css/reset.css" rel="stylesheet" type="text/css">


<!-- 슬라이드 기능 -->
<link href="../resources/css/themes/default/default.css"
	rel="stylesheet" type="text/css">
<link href="../resources/css/nivo-slider.css" rel="stylesheet"
	type="text/css">



<script type="text/javascript"
	src="../resources/script/jquery.nivo.slider.js"></script>


<script type="text/javascript">
	/* 이미지 슬라이더 */
	$(window).load(function() {
		$('#slider').nivoSlider();

	});

	/* 게시판 */
	$(document).ready(function() {

		$(".tab_content").hide();
		$("ul.tabs li:first").addClass("active").show();
		$(".tab_content:first").show();

		/* 클릭이벤트 */

		$("ul.tabs li").click(function() {

			$("ul.tabs li").removeClass("active");
			$(this).addClass("active");
			$(".tab_content").hide();

			var activeTab = $(this).find("a").attr("href");
			$(activeTab).fadeIn();
			return false;
		});

	});
</script>

</head>
<body>

	<!-- core tag 선언문 -->
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<!-- set var ="변수명" value="값"
pageContext.request.contextPath
컨텍스트 이름을 리턴(request.getContextPath()와 같음) -->

	<c:set var="path" value="${pageContext.request.contextPath}"></c:set>



	<div id="wrap">
		<header>
			<div id="logo">
				<a href="${pageContext.request.contextPath}/main/main.html">로고들어갈자리
				</a>
			</div>

			<div id="hlink">

				<ul>


					<c:choose>
						<c:when test="${sessionScope.id==null }">
							<!-- 세션변수 id 값이 없을때 -->
							<li><a href="${path}/member/login">로그인·회원가입</a></li>
							<!--     <li><a href="/web03/member/memberInsert">회원가입</a></li> -->
						</c:when>

						<c:otherwise>
							<!-- 세션 변수 id 값이 있을때 -->
        
    [  ${sessionScope.name}님 로그인 중 ]
    <li><a href="${path}/member/logout">로그아웃</a></li>
							<%-- <li><a href="${path}/member/member_info.do">회원정보 수정</a></li> --%>
						</c:otherwise>

					</c:choose>


				</ul>

			</div>


			<nav>
				<ul>
					<!-- web3/ -->
					<li class="n1"><a
						href="${pageContext.request.contextPath}/company/company.html">회사소개</a></li>

					<li class="n2"><a
						href="${pageContext.request.contextPath}/product/product.html">제품정보</a></li>
					<li class="n3"><a href="${path}/board/board_list.do">게시판</a></li>
					<li class="n4"><a href="${path}/mail/mail_form.do">이메일</a></li>
				</ul>
			</nav>


		</header>


		<!-- 슬라이드 -->
		<div class="slider-wrapper theme-default">
			<div id="slider" class="nivoSlider">

				<img src="../resources/images/slider1.jpg" width="943" height="401">
				<img src="../resources/images/slider2.jpg" width="943" height="401">
				<img src="../resources/images/slider3.jpg" width="943" height="401">
				<img src="../resources/images/slider4.jpg" width="943" height="401">
			</div>
		</div>
		<!--     새 상품-->
		<div class="clear"></div>

		<div id="justar">
			<h3>만나 11월호</h3>

			<figure id="slide">

				<img src="../resources/images/goods1.jpg" width="161" height="125" />


			</figure>

		</div>

		<!-- <div class="clear"></div> -->


		<div id="notinews">
			<div class="container">
				<ul class="tabs">
					<!-- 탭부분 제목 -->
					<li><a href="#tab1">Notice</a></li>
					<li><a href="#tab2">News</a></li>
				</ul>

				<!-- 텝 1,2 테두리-->
				<div class="tab_container">

					<!-- 공지사항 컨텐트-->
					<div id="tab1" class="tab_content">
						<ul>
							<li><a href="#">여기는 공지사항이 들어가는 곳입니다</a></li>
							<li><a href="#">여기는 공지사항이 들어가는 곳입니다</a></li>
							<li><a href="#">여기는 공지사항이 들어가는 곳입니다</a></li>
							<li><a href="#">여기는 공지사항이 들어가는 곳입니다</a></li>

						</ul>
					</div>

					<div id="tab2" class="tab_content">
						<ul>
							<li><a href="#">여기는 뉴스가 들어가는 곳입니다.</a></li>
							<li><a href="#">여기는 뉴스가 들어가는 곳입니다.</a></li>
							<li><a href="#">여기는 뉴스가 들어가는 곳입니다.</a></li>
							<li><a href="#">여기는 뉴스가 들어가는 곳입니다.</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div id="social">
			<h3>social network</h3>
			<ul>
				<li><a href="#"><img src="../resources/images/icon1.png"
						alt="facebook"></a></li>
				<li><a href="#"><img src="../resources/images/icon2.png"
						alt="twitter"></a></li>
				<li><a href="#"><img src="../resources/images/icon3.png"
						alt="linkedin"></a></li>
				<li><a href="#"><img src="../resources/images/icon4.png"
						alt="RSS"></a></li>
				<li><a href="#"><img src="../resources/images/icon5.png"
						alt="google +"></a></li>
				<li><a href="#"><img src="../resources/images/icon6.png"
						alt="pinterest"></a></li>
				<li><a href="#"><img src="../resources/images/icon7.png"
						alt="Dribbble"></a></li>
				<li><a href="#"><img src="../resources/images/icon8.png"
						alt="youtube"></a></li>
				<li><a href="#"><img src="../resources/images/icon9.png"
						alt="vimeo"></a></li>

			</ul>
		</div>


		<div class="clear"></div>



		<footer>
			<address>
				All contents copyright SNSmedia Corp, ltd. Contact:
				creativeshake@hanmail.net<br> 서울시 종로구 인사동길 12, 대일빌딩 1006호 | Tel
				: 02-737-6590 Fax : 02-736-6591
			</address>
		</footer>


	</div>



	<div>
		<a href='#' onClick='fn_write()' class="btn btn-success">글쓰기</a>
	</div>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<link rel="stylesheet" href="/resources/css/main.css" , type="text/css">


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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<script type="text/javascript">
function fn_getuser(user_name) {
	var url = "${getuser.request.contextPath}/perpage/getuser";
	url = url + "?user_name=" + user_name;
	location.href = url;
	console.log(url);
}
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

<%-- 	<tbody>
		<c:choose>
			<c:when test="${empty songList }">
				<tr>
					<td colspan="5" align="center">데이터가 없습니다.</td>
				</tr>
		    </c:when>

			<c:when test="${!empty songList}">
				<c:forEach var="list" items="${songList}">
					<tr>
						<td>
							<img src="data:image/jpg;base64,${list.song_pic}" />
						</td>
						<td>
							<c:out value="${list.song_name}" />
						</td>
						<td>
							<a href="#" onClick="fn_getuser(<c:out value="${list.user_name}"/>)">
							<c:out value="${list.user_name }" /></a>
						</td>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</tbody> --%>


<c:forEach items="${myImages}" var="image">
       <img src="${image}">        
</c:forEach>
<nav>
	<tbody>
		<c:choose>
			<c:when test="${empty songList }">
				<tr>
					<td colspan="5" align="center">데이터가 없습니다.</td>
				</tr>
		 </c:when>
		    
		    <c:when test="${!empty songList}">
				<c:forEach var="list" items="${songList}">
						
						<sction class="middle">
							<div id="gallery" class="carousel slide" data-ride="carousel">
									<div class="carousel-item active">
										<ul class="row">
											<li class="col"></li>
											<li	<img src="data:image/jpg;base64,${list.song_pic}" />></li>
											<li	<c:out value="${list.song_name}" />></li>
											<li	<a href="#" onClick="fn_getuser(<c:out value="${list.user_name}"/>)"></a>></li>
										</ul>
										
										<ul class="row">
											<li class="col"></li>
											<li	<img src="data:image/jpg;base64,${list.song_pic}" />></li>
											<li	<c:out value="${list.song_name}" />></li>
											<li	<a href="#" onClick="fn_getuser(<c:out value="${list.user_name}"/>)"></a>></li>
										</ul>

										<ul class="row">
											<li class="col"></li>
											<li	<img src="data:image/jpg;base64,${list.song_pic}" />></li>
											<li	<c:out value="${list.song_name}" />></li>
											<li	<a href="#" onClick="fn_getuser(<c:out value="${list.user_name}"/>)"></a>></li>
										</ul>

									    <ul class="row">
											<li class="col"></li>
											<li	<img src="data:image/jpg;base64,${list.song_pic}" />></li>
											<li	<c:out value="${list.song_name}" />></li>
											<li	<a href="#" onClick="fn_getuser(<c:out value="${list.user_name}"/>)"></a>></li>
										</ul>
										
									    <ul class="row">
											<li class="col"></li>
											<li	<img src="data:image/jpg;base64,${list.song_pic}" />></li>
											<li	<c:out value="${list.song_name}" />></li>
											<li	<a href="#" onClick="fn_getuser(<c:out value="${list.user_name}"/>)"></a>></li>
										</ul>		
									</div>
								</div>
							</sction>

									<div class="carousel-item">
										<div class="row">
											<div class="col">
												<img class="img-fluid"
													src="http://via.placeholder.com/800x450/f35b04/ffffff?text=Image+6"
													alt="Image 6" />
											</div>

											<div class="col">
												<img class="img-fluid"
													src="http://via.placeholder.com/800x450/f18701/ffffff?text=Image+7"
													alt="Image 7" />
											</div>

											<div class="col">
												<img class="img-fluid"
													src="http://via.placeholder.com/800x450/f7b801/ffffff?text=Image+8"
													alt="Image 8" />
											</div>

											<div class="col">
												<img class="img-fluid"
													src="http://via.placeholder.com/800x450/7678ed/ffffff?text=Image+9"
													alt="Image 9" />
											</div>

											<div class="col">
												<img class="img-fluid"
													src="http://via.placeholder.com/800x450/3d348b/ffffff?text=Image+10"
													alt="Image 10" />
											</div>
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
					</nav>
					</c:forEach>
			</c:when>
		</c:choose>
	</tbody>
					

					<section
						class="oneMusic-buy-now-area has-fluid bg-gray section-padding-100">
						<div class="container-fluid">

							<div class="row">
								<div class="col-12">
									<div class="section-heading style-2">
										<p>See what’s new</p>
										<h2>Buy What’s New</h2>
									</div>
								</div>
							</div>

							<div class="row">

								<!-- Single Album Area -->
								<div class="col-12 col-sm-6 col-md-4 col-lg-2">
									<div class="single-album-area wow fadeInUp"
										data-wow-delay="100ms">
										<div class="album-thumb">
											<img src="/resources/images/main.jpg">
											<!-- Album Price -->
											<div class="album-price">
												<p>$0.90</p>
											</div>
											<!-- Play Icon -->
											<div class="play-icon">
												<a href="#" class="video--play--btn"><span
													class="icon-play-button"></span></a>
											</div>
										</div>
										<div class="album-info">
											<a href="#">
												<h5>Garage Band</h5>
											</a>
											<p>Radio Station</p>
										</div>
									</div>
								</div>

								<!-- Single Album Area -->
								<div class="col-12 col-sm-6 col-md-4 col-lg-2">
									<div class="single-album-area wow fadeInUp"
										data-wow-delay="400ms">
										<div class="album-thumb">
											<img src="/resources/images/main.jpg">
										</div>
										<div class="album-info">
											<a href="#">
												<h5>Noises</h5>
											</a>
											<p>Buble Gum</p>
										</div>
									</div>
								</div>

								<!-- Single Album Area -->
								<div class="col-12 col-sm-6 col-md-4 col-lg-2">
									<div class="single-album-area wow fadeInUp"
										data-wow-delay="500ms">
										<div class="album-thumb">
											<img src="/resources/images/main.jpg">
											<!-- Album Price -->
											<div class="album-price">
												<p>$0.90</p>
											</div>
											<!-- Play Icon -->
											<div class="play-icon">
												<a href="#" class="video--play--btn"><span
													class="icon-play-button"></span></a>
											</div>
										</div>
										<div class="album-info">
											<a href="#">
												<h5>Garage Band</h5>
											</a>
											<p>Radio Station</p>
										</div>
									</div>
								</div>

								<!-- Single Album Area -->
								<div class="col-12 col-sm-6 col-md-4 col-lg-2">
									<div class="single-album-area wow fadeInUp"
										data-wow-delay="600ms">
										<div class="album-thumb">
											<img src="/resources/images/main.jpg">
										</div>
										<div class="album-info">
											<a href="#">
												<h5>Noises</h5>
											</a>
											<p>Buble Gum</p>
										</div>
									</div>
								</div>

								<!-- Single Album Area -->
								<div class="col-12 col-sm-6 col-md-4 col-lg-2">
									<div class="single-album-area wow fadeInUp"
										data-wow-delay="100ms">
										<div class="album-thumb">
											<img src="/resources/images/main.jpg">
										</div>
										<div class="album-info">
											<a href="#">
												<h5>Jess Parker</h5>
											</a>
											<p>The Album</p>
										</div>
									</div>
								</div>

								<!-- Single Album Area -->
								<div class="col-12 col-sm-6 col-md-4 col-lg-2">
									<div class="single-album-area wow fadeInUp"
										data-wow-delay="200ms">
										<div class="album-thumb">
											<img src="/resources/images/main.jpg">
										</div>
										<div class="album-info">
											<a href="#">
												<h5>Noises</h5>
											</a>
											<p>Buble Gum</p>
										</div>
									</div>
								</div>

								<!-- Single Album Area -->
								<div class="col-12 col-sm-6 col-md-4 col-lg-2">
									<div class="single-album-area wow fadeInUp"
										data-wow-delay="300ms">
										<div class="album-thumb">
											<img src="/resources/images/main.jpg">
											<!-- Album Price -->
											<div class="album-price">
												<p>$0.90</p>
											</div>
											<!-- Play Icon -->
											<div class="play-icon">
												<a href="#" class="video--play--btn"><span
													class="icon-play-button"></span></a>
											</div>
										</div>
										<div class="album-info">
											<a href="#">
												<h5>Garage Band</h5>
											</a>
											<p>Radio Station</p>
										</div>
									</div>
								</div>

								<!-- Single Album Area -->
								<div class="col-12 col-sm-6 col-md-4 col-lg-2">
									<div class="single-album-area wow fadeInUp"
										data-wow-delay="400ms">
										<div class="album-thumb">
											<img src="/resources/images/main.jpg">
										</div>
										<div class="album-info">
											<a href="#">
												<h5>Noises</h5>
											</a>
											<p>Buble Gum</p>
										</div>
									</div>
								</div>

								<!-- Single Album Area -->
								<div class="col-12 col-sm-6 col-md-4 col-lg-2">
									<div class="single-album-area wow fadeInUp"
										data-wow-delay="500ms">
										<div class="album-thumb">
											<img src="/resources/images/main.jpg">
										</div>
										<div class="album-info">
											<a href="#">
												<h5>Jess Parker</h5>
											</a>
											<p>The Album</p>
										</div>
									</div>
								</div>

								<!-- Single Album Area -->
								<div class="col-12 col-sm-6 col-md-4 col-lg-2">
									<div class="single-album-area wow fadeInUp"
										data-wow-delay="600ms">
										<div class="album-thumb">
											<img src="/resources/images/main.jpg">
										</div>
										<div class="album-info">
											<a href="#">
												<h5>Noises</h5>
											</a>
											<p>Buble Gum</p>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-12">
									<div class="load-more-btn text-center wow fadeInUp"
										data-wow-delay="300ms">
										<a href="#" class="btn oneMusic-btn">Load More please <i
											class="fa fa-angle-double-right"></i></a>
									</div>
								</div>
							</div>

						</div>
</body>
</html>
</div>
</div>
</div>
</div>
</nav>

</div>


</nav>
</body>
</html>

