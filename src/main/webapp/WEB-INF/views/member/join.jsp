<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Form-v5 by Colorlib</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="/assets/css/roboto-font.css">
	<link rel="stylesheet" type="text/css" href="/assets/sfonts/font-awesome-5/css/fontawesome-all.min.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="/assets/css/style.css"/>
</head>
<body class="form-v5">
	<div class="page-content">
		<div class="form-v5-content">
			<form class="form-detail" action="/member/register" method="post">
				<h2>Register Account Form</h2>
				<div class="form-row">
					<label for="userid">ID</label>
					<input type="text" name="userid" id="userid" class="input-text" placeholder="Your ID" required>
					<i class="fas fa-user"></i>
				</div>
				<div class="form-row">
					<label for="userName">Nick Name</label>
					<input type="text" name="userName" id="userName" class="input-text" placeholder="Your Nick Name" required>
					<i class="fas fa-user"></i>
				</div>
				 <div class="form-row">
					<label for="your-email">Your Email</label>
					<input type="text" name="useremail" id="your-email" class="input-text" placeholder="Your Email" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
					<i class="fas fa-envelope"></i>
				</div> 
				<div class="form-row">
					<label for="userpw">Password</label>
					<input type="password" name="userpw" id="userpw" class="input-text" placeholder="Your Password" required>
					<i class="fas fa-lock"></i>
				</div>
				<!-- <div class="form-row">
					<label for="userpic">Profile</label>
					<input type="file" name="userpic" id="userpic" class="input-text" placeholder="Your Profile" required>
					<i class="fas fa-lock"></i>
				</div> -->
				<div class="form-row-last">
					<input type="submit" name="register" class="register" value="Register">
					  <input type="hidden" name="${_csrf.parameterName}"
    value="${_csrf.token}" />
				</div>
			</form>
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>