<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<title>Form-v5 by Colorlib</title>
<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- Font-->
<link rel="stylesheet" type="text/css"
	href="/assets/css/roboto-font.css">
<link rel="stylesheet" type="text/css"
	href="/assets/fonts/font-awesome-5/css/fontawesome-all.min.css">
<!-- Main Style Css -->
<link rel="stylesheet" href="/assets/css/style.css" />


</head>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<body class="form-v5">
	<div class="page-content">
		<div class="form-v5-content">
			<form class="form-detail" action="/member/register" method="post">
				<h2>Register Account Form</h2>
				<div class="form-row">
					<label for="userid">ID</label> 
					<input type="text" name="userid" id="userid" class="input-text" placeholder="Your ID" required>
					<!-- <button id="idChkBtn" class="btn btn-primary" onclick="checkId()">ID중복확인</button>
					<div class="check_font" id="id_check"></div>
					<div id="checkMsg"></div>			 -->
					<i class="fas fa-user"></i>
				</div>
				<div class="form-row">
					<label for="userName">Nick Name</label>
					<input type="text" name="userName" id="userName" class="input-text"
						placeholder="Your Nick Name" required> 
						<i class="fas fa-user"></i>
				</div>
				<div class="form-row">
					<label for="your-email">Your Email</label> <input type="text"
						name="useremail" id="your-email" class="input-text"
						placeholder="Your Email" required
						pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}"> <i
						class="fas fa-envelope"></i>
				</div>
				<div class="form-row">
					<label for="userpw">Password</label> <input type="password"
						name="userpw" id="userpw" class="input-text"
						placeholder="Your Password" required> <i
						class="fas fa-lock"></i>
				</div>
				<!-- <div class="form-row">
					<label for="userpic">Profile</label>
					<input type="file" name="userpic" id="userpic" class="input-text" placeholder="Your Profile" required>
					<i class="fas fa-lock"></i>
				</div> -->
				<div class="form-row-last">
					<button name="register" class="register"
						>Register</button> <input type="hidden"
						name="${_csrf.parameterName}" value="${_csrf.token}" />
				</div>
			</form>
		</div>
	</div>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
<script type="text/javascript">
	//	     아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
	var idCheck = 0;
	//아이디 체크하여 가입버튼 비활성화, 중복확인.
	function checkId() {
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content");
		$.ajax({
			url : "/member/idCheck",
			type : 'post',
			data : {
				"id" : $('#userid').val()
			},
			beforeSend: function( xhr ) {
				  xhr.setRequestHeader(header, token);
			},
			success : function(data) {
				if (data == '0') {
					$(".register").prop("disabled", false);
					$("#input-text").css("background-color", "#FFCECE");
					$('#checkMsg').html('<p style="color:blue">사용가능</p>');
					idCheck = 0;
				}else{
					$(".register").prop("disabled", true);
					$(".register").css("background-color", "red");
					$("#input-text").css("background-color", "yellow");
					$('#checkMsg').html('<p style="color:blue">이미 가입된 ID입니다.</p>');
					idCheck = 0;
				}
			}
		});
	}
</script>

</html>