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

<div class="container" style="width: 100%;">

	<!------------- Navbar -------------->
	<nav class="navbar navbar-inverse bs-dark">


		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1" style="height: 17px;">


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



			<form class="navbar-form navbar-left form-horizontal" role="search"
				style="border: solid red;">
				<div class="input-group">
					<input type="text" class="search-box" placeholder="Search">
					<button type="submit" class="btn">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</div>
			</form>
			<sec:authentication property="principal" var="pinfo" />
			<sec:authorize access="isAuthenticated()">

				<ul class="nav navbar-nav" style="width: 150px;">
					<li class="dropdown"><a href="#"
						class="dropdown-toggle navbar-img" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
							Account <img src="http://placehold.it/150x150" class="img-circle"
							alt="Profile Image" />
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">Profile</a></li>
							<li><a href="#">Inbox</a></li>
							<li><a href="#">Followers</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Settings</a></li>
						</ul></li>

					<li class="active" style="right: 0px;"><a href="#">Logout
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="active" style="right: 0px;"><a href="/perpage/getuser?user_name=${pinfo.username }">Mypage
							<span class="sr-only">(current)</span>
					</a></li>
			</sec:authorize>
			</ul>

		</div>


	</nav>

	<div></div>
</div>



</body>
</html>