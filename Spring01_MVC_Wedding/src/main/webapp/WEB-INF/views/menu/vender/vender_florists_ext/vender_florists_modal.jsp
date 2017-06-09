<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"> <title>Insert title here</title>
</head>
<body>
<!-- 모달 -->
	<div class="modal fade" id="floristsModal" tabindex="-1" role="dialog" aria-labelledby="floristsModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	    
	      <div class="modal-header" style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg')">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h4 class="modal-title" style="color: dimgray;">
				<img alt="" src="/wedding/resources/vender_gallery/vender_dress_icon05.png">
				<strong>Florists</strong>
				<img alt="" src="/wedding/resources/vender_gallery/vender_dress_icon05.png">
			</h4>
	      </div>
	      
	     <div class="modal-body">
	     	<table>
	     		<tr>
	     			<td style="width: 500px; height: 300px;">
	     				<img alt="" src="/wedding/resources/vender_gallery/vender_florists_gallery/${ vfDto.orgname }"
						class="img-thumbnail" style="width: 250px; height: 260px;">
	     			</td>
	     			<td>
	     				<div style="color: black; width: 330px; height:270px; background : rgba(240, 120, 100, 0.1);" align="left">
	     					<br>
	     					<form class="form-horizontal" role="form">
	     					<div class="form-group" style="color: black;">
								<label class="control-label col-xs-3" for="inputEmail">업체명 : </label>
								<div class="col-xs-7">
									<input type="text" class="form-control" id="name" value="${ vfDto.bname }" 
										style="color: black; background-color: white;" readonly="readonly"/>
								</div>
							</div>
							<div class="form-group" style="color: black;">
								<label class="control-label col-xs-3" for="inputEmail">상품명 : </label>
								<div class="col-xs-7">
									<input type="text" class="form-control" id="name" value="${ vfDto.name }" 
										style="color: black; background-color: white;" readonly="readonly"/>
								</div>
							</div>
							<div class="form-group" style="color: black;">
								<label class="control-label col-xs-3" for="inputEmail">가격 : </label>
								<div class="col-xs-7">
									<input type="text" class="form-control" id="name" value="${ vfDto.price }" 
										style="color: black; background-color: white;" readonly="readonly"/>
								</div>
							</div>
							<div class="form-group" style="color: black;">
								<label class="control-label col-xs-3" for="inputEmail">주소 : </label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="name" value="${ vfDto.address }" 
										style="color: black; background-color: white;" readonly="readonly"/>
								</div>
							</div>
							<div class="form-group" style="color: black;">
								<label class="control-label col-xs-3" for="inputEmail">번호 : </label>
								<div class="col-xs-7">
									<input type="text" class="form-control" id="name" value="${ vfDto.phone }" 
										style="color: black; background-color: white;" readonly="readonly"/>
								</div>
							</div>
							</form>
	     					
				     	</div>
	     			</td>
	     		</tr>
	     	</table>
	     	<form action="/wedding/vender_cart" method="post">
				<button class="btn btn-warning" onclick="javascript:goInquire()" type="button"
					style="background-color: PeachPuff; color: DarkRed;">
					<strong>업체문의</strong> 
					<img alt="" src="/wedding/resources/vender_gallery/vender_icon01.png">
				</button>
				<a href="${ vfDto.homeurl }" class="btn btn-warning"
					style="background-color: PeachPuff;color: DarkRed;"> 
					<strong>업체보기</strong>
					<img alt="" src="/wedding/resources/vender_gallery/vender_icon02.png">
				</a>
				<button class="btn btn-warning" onclick="javascript:goRes()"
					style="background-color: PeachPuff; color:DarkRed;">
					<strong>등록하기</strong>
					<img alt="" src="/wedding/resources/vender_gallery/vender_icon03.png">
				</button>
				<input type="hidden" name="name" value="${vfDto.bname }">		<!-- 업체명 -->
				<input type="hidden" name="pname" value="${ vfDto.name }">		<!-- 상품명 -->
				<input type="hidden" name="address" value="${ vfDto.address }">
				<input type="hidden" name="phone" value="${ vfDto.phone }">
				<input type="hidden" name="homeurl" value="${ vfDto.homeurl }">
				<input type="hidden" name="logo" value="${ vfDto.orgname }">
				<input type="hidden" name="type" value="florists">
			</form>
	    </div>
	    
	    <div class="modal-footer" style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg'); height: 60px;">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	    </div>
	    </div>
	  </div>
	</div>
	<jsp:include page="/WEB-INF/views/menu/vender/vender_modal/vender_inquire_modal.jsp"/>

	
</body>
</html>






