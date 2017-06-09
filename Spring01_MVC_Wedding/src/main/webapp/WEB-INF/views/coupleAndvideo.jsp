<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<div class="header-content">
	<div class="inner">
		<c:choose>
			<c:when test="${ masterSaleTotal != null }">
				<h1 class="cursive">총 매출 : ${ masterSaleTotal }원 입니다!!</h1>
			</c:when>
			<c:otherwise>
				<h1 class="cursive">The moment that I want to memorize</h1>
			</c:otherwise>
		</c:choose>
		
		<c:choose>
			<c:when test="${ infoSign != null }">
				<h4 class="cursive">${ infoSign.getdDay() }</h4>
				<h4 class="cursive">${ infoSign.getcName() } 커플</h4>
			</c:when>
			<c:when test="${ nowLogin != null }">
				<h4 class="cursive">${ nowLogin.getdDay() }</h4>
				<h4 class="cursive">${ nowLogin.getcName() } 커플</h4>
			</c:when>
		</c:choose>
		<hr>
		<a href="#video-background" id="toggleVideo" data-toggle="collapse"
			class="btn btn-primary btn-xl" onclick="video_pause()">Toggle Video</a> &nbsp; <a
			href="/wedding/findCouple" class="btn btn-primary btn-xl">Find Couple</a>&nbsp;
	</div>
	<script type="text/javascript">
		function video_pause() {
			  var myVideo = document.getElementById("video-background");
			  if (myVideo.paused) {
			    myVideo.play();
			  } else {
			    myVideo.pause();
			  }
			}
	</script>
</div>
<video autoplay="autoplay" loop="loop"
	class="fillWidth fadeIn wow collapse in" data-wow-delay="0.5s"
	id="video-background">
	<source src="/wedding/resources/video/video.mp4" type="video/mp4">
</video>



