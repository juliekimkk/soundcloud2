<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<meta charset="utf-8">
<title>특정가수노래만 모은 트렉</title>
</head>
<body>
<div class="playlistContainer">
			<tbody>
					<c:choose>
						<c:when test="${particularsinger == null}">
							<tr>
								<td colspan="5" align="center">데이터가 없습니다.</td>
							</tr>
						</c:when>


						<c:when test="${particularsinger != null}">
							<div class="songlist_big">
								<c:forEach var="list" items="${particularsinger}" varStatus="status">

									<ul class="songlist_one" >
										<li class="thumnails" >
										<!-- 클릭시 위에 이미지 바뀌는 onclick 함수 -->
										<a href="#" onclick="get_src(${list.song_singer})">
										<img class="img-fluid" src="data:image/jpg;base64,${list.song_pic}" alt="" /> 
										
										<img class="show_play_icon" src="<c:url value="/resources/images/play_logo.svg" />"  />
										</a></li>


										<li class="singername"><a href="LoginIndex" style="color:black">: <c:out value="${list.song_singer}" />
										</a>
										</li>
										<li class="songname" ><a href="LoginIndex" style="color:black">노래 이름 : <c:out
													value="${list.song_name}" /></li>
										<li class="viewcnt" ><c:out
												value="${list.view}" /></li>
									</ul>
									<hr class="my-1">

								</c:forEach>
							</div>
						</c:when>
					</c:choose>
				</tbody> 
				
				
				
		<div style="display: flex;">
			<tbody>
				<c:choose>
					<c:when test="${particularsinger != null}">
						<div class="userinfo">
						  <a href="#"
						  	onClick="userpage(<c:out value="${user_no[0].user_no}" />)">
							<img class="rounded-circle"
								src="data:image/jpg;base64,${user_no[0].user_pic}" alt="" /></a>
								
								
								<a href="#"
								 onClick="userpage(<c:out value="${user_no[0].user_no}" />)">
								<c:out value="${user_no[0].user_name}">왜안나오지?</c:out></a>
						</div>

						
					</c:when>
				</c:choose>
			</tbody>


			<!-- center 오른쪽 플레이리스트  -->
			<div class="playlistContainer">
				<tbody>
					<c:choose>


						<c:when test="${playlist == null}">
							<tr>
								<td colspan="5" align="center">데이터가 없습니다.</td>
							</tr>
						</c:when>


						<c:when test="${playlist != null}">
							<div class="songlist_big">
								<c:forEach var="list" items="${playlist}" varStatus="status">

									<ul class="songlist_one" >
										<li class="thumnails" >
										<!-- 클릭시 위에 이미지 바뀌는 onclick 함수 -->
										<a href="#" onclick="get_src(${list.song_no},${list.user_no },'${list.play_list}')">
										<img class="img-fluid" src="data:image/jpg;base64,${list.song_pic}" alt="" /> 
										
										<img class="show_play_icon" src="<c:url value="/resources/images/play_logo.svg" />"  />
										</a></li>
										
										<li class="songno" ><a
											href="LoginIndex"> <c:out value="${list.song_no}" /></a></li>

										<li class="singername"><a href="LoginIndex" style="color:black">: <c:out value="${list.song_singer}" />
										</a>
										</li>
										<li class="songname" ><a href="LoginIndex" style="color:black">노래 이름 : <c:out
													value="${list.song_name}" /></li>
										<li class="viewcnt" ><c:out
												value="${list.view}" /></li>
									</ul>
									<hr class="my-1">

								</c:forEach>
							</div>
						</c:when>
					</c:choose>
				</tbody>
			</div>
		</div>
			
</body>
</html>