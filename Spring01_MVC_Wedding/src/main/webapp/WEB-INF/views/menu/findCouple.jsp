<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <style>
    	.myInput table td input {
			border: 1px solid DeepSkyBlue;
			-webkit-border-radius: 3px;
			-moz-border-radius: 3px;
			border-radius: 3px;
		}
    </style>

	<h2 style="text-align: center; color: black">Find Couple</h2> <br>
	
	<div style="text-align: center; color: black;">
		
		<form action="/wedding/findCouple" method="post">
			<div class="myInput" align="center">
			<table style="text-align: center">
				<tr>
					<td>Couple Name&nbsp; : &nbsp;
					<input type="text" name="cName"  style="height: 40px;" required="required"/> &nbsp; &nbsp; 
					Wedding Date&nbsp; : &nbsp;
					<input type="date" name="weddingDay" class="myInput" required="required"/> &nbsp; &nbsp;
					<input type="submit" value="search" 
						   style="width: 100px; height: 40px; background-color: DeepSkyBlue"/>
					</td>
				</tr>
			</table>
			</div>
		</form>
		
	</div>
	
	
	<br><br><br><br>
	<c:if test="${ findCoupleSign != null }">
	
	<c:forEach var="each" items="${ findCouple }">
		<div class="container">
		<h2 style="text-align: center; color: black;"> Couple Profile </h2>
		<br>
			<table id="findCoupleTable" style="text-align: center; width: 100%; color: black;">
				<tr>
					<td rowspan="5" style="width: 500px;"> 
						<img id="myImg${ each.num }" class="img-circle" 
							src="/wedding/resources/gallery/${ each.sysName }"
							alt="${ each.cName }" style="width: 90%; height: 90%;">
					</td>
				</tr>
				<tr style="height: 100px; font-size: 30px;">
					<td style="">${ each.cName }</td>
				</tr>
				<tr style="height: 100px; font-size: 20px;">
					<td>결혼 날짜 : ${ each.weddingDay }</td>
				</tr>
				<tr style="height: 100px; font-size: 20px;">
					<td>
						<c:choose>
							<c:when test="${ findCoupleRegCartCnt != null }">
								레지스트리 상품 갯수 : ${ findCoupleRegCartCnt }개 등록되어 있습니다.
							</c:when>
							<c:otherwise>
								레지스트리 상품 갯수 : 등록된 상품이 없습니다.
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
				<tr style="height: 100px; font-size: 20px;">
					<td>예식장 주소 : ${ each.address }</td>
				</tr>
			</table>
		</div>
		
		<br><br><br><br>
		<div class="container">
		<h2 style="text-align: center; color: black;"> WeddingHall Location </h2>
		<br>
			<div id="map" style="width:100%;height:350px;"></div>
			
			<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=22264b9a0cc3f771f8c5320d49fbb2d7&libraries=services&libraries=services"></script>
			<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };  
			
			// 지도를 생성합니다    
			var map = new daum.maps.Map(mapContainer, mapOption); 
			
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new daum.maps.services.Geocoder();
			
			// 주소로 좌표를 검색합니다
			geocoder.addr2coord('${ each.address }', function(status, result) {
			
			    // 정상적으로 검색이 완료됐으면 
			     if (status === daum.maps.services.Status.OK) {
			
			        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
			
			        // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new daum.maps.Marker({
			            map: map,
			            position: coords
			        });
			
			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        var infowindow = new daum.maps.InfoWindow({
			            content: '<div style="color:black;width:150px;text-align:center;padding:6px 0;">예식장 위치</div>'
			        });
			        infowindow.open(map, marker);
			
			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			    }else{
			    	alert("검색결과가 없습니다.");
			    }
			});    
			</script>
		</div>
		
		<br><br><br><br>
		<div class="container">
		<h2 style="text-align: center; color: black;"> Resistry List </h2>
		<br>
		
		<c:choose>
			<c:when test="${ findRegSelectAllCart == null }">
				<h2 style="text-align: center;">등록된 상품이 없습니다.</h2>
			</c:when>
			<c:otherwise>
				<jsp:include page="registry/product/reg_Cart_for_Friend.jsp"/>
			</c:otherwise>
		</c:choose>	
		
		</div>
	</c:forEach>
	</c:if>

