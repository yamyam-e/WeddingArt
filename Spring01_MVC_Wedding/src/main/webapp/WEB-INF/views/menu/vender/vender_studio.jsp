<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
	<div class="container">

<!-- 		<div style="background-color: white; height: 100px;width:100%;"></div> -->
		<div align="center">
			<img alt="" src="/wedding/resources/vender_gallery/vender_dress_back02.png" align="middle">
		</div>
		<h2 style="color: black;">studio</h2>
		<blockquote>
			<p><mark>스튜디오</mark>
			<button type="button" class="btn btn-info" data-toggle="collapse" 
			data-target="#demo" style="background-color: Thistle">
				Click!
				<img alt="" src="/wedding/resources/vender_gallery/vender_dress_icon04.png">
			</button>
			</p>
			<div id="demo" class="collapse" style="color: black;">
				저희 Wedding Art 홈페이지는 총 12개의 스튜디오 사이트와 협력업체를 맺고 있습니다.<br>
				1. 거울과창 　<a href="http://www.mirrorandwindow.com">http://www.mirrorandwindow.com</a><br>
				2. 라망스튜디오　<a href="http://www.visualcompanylnc.com/fade.asp">http://www.visualcompanylnc.com/fade.asp</a><br>
				3. 29아트컴퍼니 <a href="http://www.art29.co.kr">http://www.art29.co.kr</a><br>
				4. 타라스튜디오 <a href="http://www.tahrastudio.co.kr">http://www.tahrastudio.co.kr</a><br>
				5. 포토아뜰리에더함 <a href="http://www.visualcompanylnc.com/fade.asp">http://www.visualcompanylnc.com/fade.asp</a><br>
				6. 그리다스튜디오 <a href="http://www.greeda.co.kr">http://www.greeda.co.kr</a><br>
				7. S 스튜디오 <a href="http://www.studioscompany.com">http://www.studioscompany.com</a><br>
				8. 동감스튜디오 <a href="http://www.donggam.company">http://www.donggam.company</a><br>
				9. 올제스튜디오 <a href="http://www.olzestudio.com/about/01">http://www.olzestudio.com/about/01</a><br>
				10. THE THIRD MIND <a href="http://www.the3studio.com">http://www.the3studio.com</a><br>
				11. 원규&노블레스　<a href="http://www.wonkyu.co.kr">http://www.wonkyu.co.kr</a><br>
				12. 구호스튜디오 <a href="http://www.kuhostudio.co.kr">http://www.kuhostudio.co.kr</a><br>
				사진에서 업체보기 버튼 클릭시 협력 사이트로 이동하여 더 많은 스튜디오 정보를 얻으실 수 있습니다!
			</div>
		</blockquote>
		<div align="right" style="height: 25px;">
			<a href="/wedding/vender_studio">
				<abbr title="World Health Organization">처음 보기</abbr>
			</a>&nbsp;&nbsp;
			<a href="/wedding/vender_studio_selectName">
				<abbr title="World Health Organization">이름순 보기</abbr>
			</a>&nbsp;&nbsp;
			<a href="/wedding/vender_studio_selectJudge">
				<abbr title="World Health Organization">별점순 보기</abbr>
			</a>
		</div>
		
		<div class="row">
		<c:forEach var="each" items="${ vender_studio }">
			<div class="col-md-4">
				<a href="" class="thumbnail" data-toggle="modal" data-target="#studioModal"
					onclick="javascript:govenderSmodal('${each.num}')"> 
					<img
					src="/wedding/resources/vender_gallery/vender_studio_gallery/${ each.logo }" alt="img"
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
					<button type="button" class="btn btn-warning01" style="position: relative;left: 70px;" onclick="javascript:goInquire()">
						<span class="glyphicon glyphicon-edit"></span> 업체문의
					</button>
					<a href="${ each.homeurl }" class="btn btn-warning01" style="position: relative;left: 190px; bottom: 56px;">
						<span class="glyphicon glyphicon-share"></span>	
						업체보기
					</a>
				</a>
				
			</div>
		</c:forEach>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/menu/vender/vender_modal/vender_studio_modal.jsp"/>
	<jsp:include page="/WEB-INF/views/menu/vender/vender_modal/vender_inquire_modal.jsp"/>
	
	

