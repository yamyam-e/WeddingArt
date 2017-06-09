<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
	<div class="container">

<!-- 		<div style="background-color: white; height: 100px;width:100%;"></div> -->
		<div align="center">
			<img alt="" src="/wedding/resources/vender_gallery/vender_dress_back02.png" align="middle">
		</div>
		<h2 style="color: black;">Makeup</h2>
		<blockquote>
			<p><mark>메이크업</mark>
			<button type="button" class="btn btn-info" data-toggle="collapse" 
			data-target="#demo" style="background-color: Thistle">
				Click!
				<img alt="" src="/wedding/resources/vender_gallery/vender_dress_icon04.png">
			</button>
			</p>
			<div id="demo" class="collapse" style="color: black;">
				저희 Wedding Art 홈페이지는 총 12개의 메이크업 사이트와 협력업체를 맺고 있습니다.<br>
				1. A.La알레스 　<a href="http://blog.naver.com/alaalles">http://blog.naver.com/alaalles</a><br>
				2. 김활란뮤제네프_도산라벨르점　<a href="http://www.museeneuf.com/museeneuf/">http://www.museeneuf.com/museeneuf/</a><br>
				3. 김청경헤어페이스 <a href="http://www.hairface.net/contents/hairstyle.php">http://www.hairface.net/contents/hairstyle.php</a><br>
				4. 보이드by박철 <a href="http://www.voidbyparkchul.com/">http://www.voidbyparkchul.com/</a><br>
				5. 제니하우스_청담힐 <a href="http://www.jennyhouse.co.kr/">http://www.jennyhouse.co.kr/</a><br>
				6. 바이엘린 <a href="http://www.makeup-nozze.com/">http://www.makeup-nozze.com/</a><br>
				7. 순수_도산점 <a href="http://www.soonsoobeauty.com/">http://www.soonsoobeauty.com/</a><br>
				8. 끌림 <a href="http://the0809.co.kr/xe/">http://the0809.co.kr/xe/</a><br>
				9. 끌로에_청담본점 <a href="http://www.jinchloe.com/">http://www.jinchloe.com/</a><br>
				10. 에이바이봄(A. by BOM) <a href="http://abybom.com/kor/">http://abybom.com/kor/</a><br>
				11. 제니하우스_프리모　<a href="http://www.jennyhouse.co.kr/">http://www.jennyhouse.co.kr/</a><br>
				12. 보떼101 <a href="http://beaute101.co.kr/">http://beaute101.co.kr/</a><br>
				사진에서 업체보기 버튼 클릭시 협력 사이트로 이동하여 더 많은 메이크업 정보를 얻으실 수 있습니다!
			</div>
		</blockquote>
		<div align="right" style="height: 25px;">
			<a href="/wedding/vender_makeup">
				<abbr title="World Health Organization">처음 보기</abbr>
			</a>&nbsp;&nbsp;
			<a href="/wedding/vender_makeup_selectName">
				<abbr title="World Health Organization">이름순 보기</abbr>
			</a>&nbsp;&nbsp;
			<a href="/wedding/vender_makeup_selectJudge">
				<abbr title="World Health Organization">별점순 보기</abbr>
			</a>
		</div>
		
		<div class="row">
			<c:forEach var="each" items="${ vender_makeup }">
			<div class="col-md-4">
				<a href="" class="thumbnail" data-toggle="modal"
					data-target="#makeupModal"
					onclick="javascript:govenderMmodal('${each.num}')"> 
					<img
					src="/wedding/resources/vender_gallery/vender_makeup_gallery/${ each.logo }" alt="img"
					style="width: 250px; height: 260px;">
<!-- 					style="width: 300px; height: 310px;"> -->
					<h4 align="center" class="cursive"><strong>${ each.name }</strong></h4>
					<h4 align="center">${each.phone}</h4>
					<h4 align="center">
						별점 : 
						<c:forEach begin="1" end="${each.judge}">
							<img alt="" src="/wedding/resources/vender_gallery/vender_icon04.png">
						</c:forEach>
						
					</h4>
					<br><br>
					<a href="" class="btn btn-warning01" style="position: relative;left: 80px; bottom: 65px;"
						onclick="javascript:goInquire()">
						<span class="glyphicon glyphicon-edit"></span>
						업체문의
					</a>
					<a href="${ each.homeurl }" class="btn btn-warning01" style="position: relative;left: 90px; bottom: 65px;">
						<span class="glyphicon glyphicon-share"></span>	
						업체보기
					</a>
				</a>
				
			</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/menu/vender/vender_modal/vender_makeup_modal.jsp"/>
	<jsp:include page="/WEB-INF/views/menu/vender/vender_modal/vender_inquire_modal.jsp"/>
	
	

