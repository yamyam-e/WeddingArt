<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">

<!-- 	<div style="background-color: white; height: 100px; width: 100%;"></div> -->
	<div align="center">
		<img alt=""
			src="/wedding/resources/gallery/system_back02.jpg"
			align="middle">
	</div>
	<h2 style="color: black;">Florists</h2>
	<blockquote>
		<p>
			<mark>웨딩부케 & 악세사리</mark>
			<button type="button" class="btn btn-info" data-toggle="collapse"
				data-target="#demo" style="background-color: Thistle">
				Click! <img alt=""
					src="/wedding/resources/vender_gallery/vender_dress_icon04.png">
			</button>
		</p>
		<div id="demo" class="collapse" style="color: black;">
			저희 Wedding Art 홈페이지는 총 3개의 florists사이트와 협력업체를 맺고 있습니다.<br>
			1.키나플라워 <a href="http://www.kinaflower.com/index.html">http://www.kinaflower.com/index.html</a><br>
			2.르씨엘 플라워 <a href="http://www.lecielflower.com/index.html">http://www.lecielflower.com/index.html</a><br>
			3.아뜰리에 에이 <a href="http://www.ateliera.net/index.html">http://www.ateliera.net/index.html</a><br>
			사진에서 더보기 버튼 클릭시 협력 사이트로 이동하여 더 많은florists 정보를 얻으실 수 있습니다!
		</div>
	</blockquote>

	<table style="text-align: center; width: 100%; height: 100%;">
		<tr>
			<td style="width: 19%"><jsp:include
					page="/WEB-INF/views/menu/vender/vender_florists_ext/vender_florists_left.jsp" />
			</td>
			<td>
				<c:choose>
					<c:when test="${ vender_florists != null }">
						<jsp:include
							page="/WEB-INF/views/menu/vender/vender_florists_ext/vender_florists_bouquet.jsp" />
					</c:when>
					<c:when test="${ vender_florists_bouquet != null }">
						<jsp:include
							page="/WEB-INF/views/menu/vender/vender_florists_ext/vender_florists_bouquet.jsp" />
					</c:when>
					<c:when test="${ vender_florists_decoration != null }">
						<jsp:include
							page="/WEB-INF/views/menu/vender/vender_florists_ext/vender_florists_decoration.jsp" />
					</c:when>
				</c:choose>
				
			</td>
		</tr>
	</table>
</div>




