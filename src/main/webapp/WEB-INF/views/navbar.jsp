<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/assets/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">


<link rel="stylesheet" href="/assets/css/navbar.css">
<meta charset="utf-8">
<title>song_pic 을누르면 같은 song_pic을 띄우기</title>





</head>


<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">

	<!------------- Navbar -------------->
	<nav class="navbar navbar-inverse bs-dark">


		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1" style="height: 30px;">


			<ul class="nav navbar-nav">
				<li class="active"><img src="/assets/images/orangelogo.jpg"></li>
				<li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
				<li class="active"><a href="#">Stream <span class="sr-only">(current)</span></a></li>
				<li class="active"><a href="#">Library <span
						class="sr-only">(current)</span></a></li>



				<li class="dropdown">
					<ul class="dropdown-menu">
						<li><a href="#">News</a></li>
						<li><a href="#">Sports</a></li>
						<li><a href="#">Business</a></li>
						<li><a href="#">Fashion</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Gallery</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Videos</a></li>
					</ul>
				</li>
			</ul>



			<form class="navbar-form navbar-left form-horizontal" role="search">
				<div class="input-group">
					<input type="text" class="search-box" placeholder="Search">
					<button type="submit" class="btn">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</div>
			</form>
			<sec:authentication property="principal" var="pinfo" />
			<sec:authorize access="isAuthenticated()">

				<ul class="nav navbar-nav" style="width: 300px;">



					<li class="active" style="right: 0px;"><a href="#">Logout
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="active" style="right: 0px;"><a
						href="/perpage/getuser?user_name=${pinfo.username }">Mypage <span
							class="sr-only">(current)</span>
					</a></li>
				</ul>	
			</sec:authorize>
			

		</div>


	</nav>


</div>



</body>
</html>