<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<link rel="stylesheet" href="/resources/css/playtest.css">
<!-- <link rel="stylesheet" href="/resources/css/playpage.css"> -->
<!-- <link href='https://fonts.googleapis.com/css?family=Allerta' rel='stylesheet'> -->
  <div class="audio-player">
    <div id="play-btn"></div>
    <div class="audio-wrapper" id="player-container" href="javascript:;">
      <audio id="player" ontimeupdate="initProgressBar()">
			  <source src="http://www.lukeduncan.me/oslo.mp3" type="audio/mp3">
			</audio>
    </div>
    <div class="player-controls scrubber">
      <p>Oslo <small>by</small> Holy Esque</p>
      <span id="seekObjContainer">
			  <progress id="seekObj" value="0" max="1"></progress>
			</span>
      <br>
      <small style="float: left; position: relative; left: 15px;" class="start-time"></small>
      <small style="float: right; position: relative; right: 20px;" class="end-time"></small>

    </div>
    <div class="album-image" style="background-image: url('https://artwork-cdn.7static.com/static/img/sleeveart/00/051/614/0005161476_350.jpg')"></div>
  </div>