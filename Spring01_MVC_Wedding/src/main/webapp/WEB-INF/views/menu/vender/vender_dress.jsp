<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
	<div class="container">

<!-- 		<div style="background-color: green; height: 100px;width:100%;"></div> -->
		<div align="center">
			<img alt="" src="/wedding/resources/vender_gallery/vender_dress_back02.png" align="middle">
		</div>
		<h2 style="color: black;" class="cursive">WeddingDress</h2>
		<blockquote>
			<p><mark>드레스 대여</mark>
			<button type="button" class="btn btn-info" data-toggle="collapse" 
			data-target="#demo" style="background-color: Thistle">
				Click!
				<img alt="" src="/wedding/resources/vender_gallery/vender_dress_icon04.png">
			</button>
			</p>
			<div id="demo" class="collapse" style="color: black;">
				저희 Wedding Art 홈페이지는 총 4개의 드레스 대여 사이트와 협력업체를 맺고 있습니다.<br>
				1.루이엔젤 　<a href="http://luyangel.com/index.html">http://luyangel.com/index.html</a><br>
				2.해피파티코　<a href="http://www.happypartyco.kr">http://www.happypartyco.kr</a><br>
				3.숲속드레스　<a href="http://supsokdress.com/index.html">http://supsokdress.com/index.html</a><br>
				4.마이수드레스　<a href="http://www.mysoodress.com/index.html">http://www.mysoodress.com/index.html</a><br>
	  			사진에서 업체보기 버튼 클릭시 협력 사이트로 이동하여 더 많은 드레스 및 정보를 얻으실 수 있습니다!
			</div>
		</blockquote>
		
		<table style="text-align: center; width: 100%; height: 100%;">
			<tr>
				<td style="width: 19%">
					<jsp:include page="/WEB-INF/views/menu/vender/vender_dress_ext/vender_dress_left.jsp" />
				</td>
				<td align="center">
					<c:choose>
						<c:when test="${ vender_dress != null }">
							<jsp:include page="/WEB-INF/views/menu/vender/vender_dress_ext/vender_dress_weddingDress.jsp" />
						</c:when>
						<c:when test="${ vender_dress_weddingDress != null }">
							<jsp:include page="/WEB-INF/views/menu/vender/vender_dress_ext/vender_dress_weddingDress.jsp" />
						</c:when>
						<c:when test="${ vender_dress_miniDress != null }">
							<jsp:include page="/WEB-INF/views/menu/vender/vender_dress_ext/vender_dress_miniDress.jsp" />
						</c:when>
						<c:when test="${ vender_dress_tuxedo != null }">
							<jsp:include page="/WEB-INF/views/menu/vender/vender_dress_ext/vender_dress_tuxedo.jsp" />
						</c:when>
						<c:when test="${ vender_dress_shoes != null }">
							<jsp:include page="/WEB-INF/views/menu/vender/vender_dress_ext/vender_dress_shoes.jsp" />
						</c:when>
					</c:choose>
				</td>
			</tr>
		</table>
	</div>

