<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css"
   href="/assets/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="/assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="/assets/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="/assets/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="/assets/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="/assets/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="/assets/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/assets/css/util.css">
<link rel="stylesheet" type="text/css" href="/assets/css/main.css">
<!--===============================================================================================-->
<script type="text/javascript">
   function f_link() {
      location.href = "/index";
   }
</script>
<script type="text/javascript">
   function checksongFile(f) {

      // files 로 해당 파일 정보 얻기.
      var file = f.files;

      // file[0].name 은 파일명 입니다.
      // 정규식으로 확장자 체크
      if (!/\.(mp3|wav|m4a|flac|ogg|amr|mp2|m4r)$/i.test(file[0].name))
         alert('해당 확장자의 파일은 업로드할수 없습니다.\n\n현재 파일 : ' + file[0].name);
      //mp3, wav, m4a, flac, ogg, amr, mp2
      // 체크를 통과했다면 종료.
      else
         return;

      // 체크에 걸리면 선택된  내용 취소 처리를 해야함.
      // 파일선택 폼의 내용은 스크립트로 컨트롤 할 수 없습니다.
      // 그래서 그냥 새로 폼을 새로 써주는 방식으로 초기화 합니다.
      // 이렇게 하면 간단 !?
      f.outerHTML = f.outerHTML;
   }
   function checkpicFile(f) {

      // files 로 해당 파일 정보 얻기.
      var file = f.files;

      // file[0].name 은 파일명 입니다.
      // 정규식으로 확장자 체크
      if (!/\.(gif|jpg|jpeg|png)$/i.test(file[0].name))
         alert('해당 확장자의 파일은 업로드할수 없습니다.\n\n현재 파일 : ' + file[0].name);
      //mp3, wav, m4a, flac, ogg, amr, mp2
      // 체크를 통과했다면 종료.
      else
         return;

      // 체크에 걸리면 선택된  내용 취소 처리를 해야함.
      // 파일선택 폼의 내용은 스크립트로 컨트롤 할 수 없습니다.
      // 그래서 그냥 새로 폼을 새로 써주는 방식으로 초기화 합니다.
      // 이렇게 하면 간단 !?
      f.outerHTML = f.outerHTML;
   }
</script>

<style type="text/css">
.button4:hover {background-color: #e7e7e7;}
.font{
font-family:  Ubuntu-Regular;}
.button4 {
  background-color: white;
  color: black;
  border: 2px solid #e7e7e7;
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-login100">
<div class="wrap-login100 p-t-50 p-b-90">
<div class="button button4" style="text-align:center;">
   <a href="/LoginIndex" style="font-size: 22px; color: black; font-family: Ubuntu-Bold; ">Go to list</a></div>
   </br>
   </br>
   <form action="saveImage?${_csrf.parameterName}=${_csrf.token}"
      method="post" enctype="multipart/form-data" accept-charset="UTF-8">
      
      <input type="hidden" name="user_name" value="${user[0].user_name}" required> 
      
      
      <!-- <div style="float:left; width:400px;"> -->
      <div class="font" style="font-size:22px; margin-bottom:5px;">song name</div>
      <div class="wrap-input100 validate-input m-b-16" style="display:float; width:400px;">
      <input class="input100" "type="text" name="song_name" placeholder="song name" required> 
      </div>
      
      <div style="float:left; width:400px; font-size:22px; margin-bottom:5px;">
      <label for="song">Add Music File</label> 
      <input type="file" class="login100-form-btn" name="song_" accept="audio/*" onchange="checksongFile(this)"> 
      </div>
      
      <div style="float:left; width:400px; font-size:22px; margin-bottom:5px;">
      <label for="song_pic">Add Album picture</label> 
      <input class="login100-form-btn" type="file" name="songpic" accept="image/*" onchange="checkpicFile(this)">
      </div>
      
      
      <div class="font" style="font-size:22px; margin-bottom:5px;">Theme</div>
      <div class="wrap-input100 validate-input m-b-16" style="display:float; width:400px;">
        <input class="input100" "type="text" name="theme" placeholder="theme" required>
        </div>
        
        
        
        <div class="font"style="font-size:22px; margin-bottom:5px;">Playlist</div>
        <div class="wrap-input100 validate-input m-b-16" style="float:left; width:400px;">
        <input class="input100" type="text" name="playlist" placeholder="playlist" required>
        </div>
        
        <div class="font" style="font-size:22px; margin-bottom:5px;">Song_Singer</div>
        <div class="wrap-input100 validate-input m-b-16" style="float:left; width:400px;">
        <input class="input100" type="text" name="song_singer" placeholder="song_singer" required>
        </div>
        
      
      <input type="submit" value="upload" div class="button button4" style="float:left; width:100px; font-size:20px; position: relative; left:150px; bottom:0px; margin-top:10px; "></div>
      <input type="hidden"
         name="user_no" value="${user[0].user_no}">

   </form>
   </div>
   </div>



   <div id="dropDownSelect1"></div>

   <!--===============================================================================================-->
   <script src="/assets/vendor/jquery/jquery-3.2.1.min.js"></script>
   <!--===============================================================================================-->
   <script src="/assets/vendor/animsition/js/animsition.min.js"></script>
   <!--===============================================================================================-->
   <script src="/assets/vendor/bootstrap/js/popper.js"></script>
   <script src="/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
   <!--===============================================================================================-->
   <script src="/assets/vendor/select2/select2.min.js"></script>
   <!--===============================================================================================-->
   <script src="/assets/vendor/daterangepicker/moment.min.js"></script>
   <script src="/assets/vendor/daterangepicker/daterangepicker.js"></script>
   <!--===============================================================================================-->
   <script src="/assets/vendor/countdowntime/countdowntime.js"></script>
   <!--===============================================================================================-->
   <script src="/assets/js/main.js"></script>

</body>
</html>