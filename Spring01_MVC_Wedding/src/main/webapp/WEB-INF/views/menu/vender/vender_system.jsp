<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"> <title>Insert title here</title>
</head>
<body>
<div class="container">
<div align="center">
	<img alt="" src="/wedding/resources/gallery/system_back04.jpg" align="middle">
</div>
	<div style="height: 40px;position: relative;top: 35px;">
		<form action="/wedding/vender_system_search" class="form-inline" method="post">
			<div class="form-group">
				<label for="pwd" style="color: black;">검색 : </label> 
				<input type="text" class="form-control" name="search" placeholder="업체명를 입력해주세요"> 
				<button type="submit" class="btn btn-info" style="background-color: Wheat; color: DarkSlateGray">
					<span class="glyphicon glyphicon-search"></span>검색
				</button>
			</div>
		</form>
		<div class="dropdown" style="position: relative; bottom: 33px; left: 1040px;">
			<button class="btn btn-default dropdown-toggle" type="button"
				data-toggle="dropdown" style="color: black;">
				Vender <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li class="dropdown-header">Vender</li>
				<li class="divider"></li>
				<li><a href="/wedding/vender_system_studio">Studio</a></li>
				<li><a href="/wedding/vender_System">Dress</a></li>
				<li><a href="/wedding/vender_system_makeup">Makeup</a></li>
				<li class="divider"></li>
				<li><a href="/wedding/vender_system_florists">Florists</a></li>
			</ul>
		</div>
	</div>
</div>
<br>
<br>
	<div class="container">
		<c:choose>
			<c:when test="${ vender_system != null }">
				<jsp:include page="/WEB-INF/views/menu/vender/vender_dress_ext/vender_system_dress.jsp"/>
			</c:when>
			<c:when test="${ vender_system_studio != null }">
				<jsp:include page="/WEB-INF/views/menu/vender/vender_dress_ext/vender_system_studio.jsp"/>
			</c:when>
			<c:when test="${ vender_system_makeup != null }">
				<jsp:include page="/WEB-INF/views/menu/vender/vender_dress_ext/vender_system_makeup.jsp"/>
			</c:when>
			<c:when test="${ vender_system_florists != null }">
				<jsp:include page="/WEB-INF/views/menu/vender/vender_dress_ext/vender_system_florists.jsp"/>
			</c:when>
		</c:choose>
	</div>
	<jsp:include page="/WEB-INF/views/menu/vender/vender_modal/vender_system_Dressmodal.jsp"/>
	<jsp:include page="/WEB-INF/views/menu/vender/vender_modal/vender_system_Floristsmodal.jsp"/>
	<jsp:include page="/WEB-INF/views/menu/vender/vender_modal/vender_system_Studiomodal.jsp"/>
	<jsp:include page="/WEB-INF/views/menu/vender/vender_modal/vender_system_Makeupmodal.jsp"/>
</body>
</html>






