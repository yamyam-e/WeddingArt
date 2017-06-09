<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 모달 -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg" style="color: black;">
	    <div class="modal-content">
	    
	      <div class="modal-header" style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg')">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h4 class="modal-title" style="color: Dimgray;">
				<img alt="" src="/wedding/resources/vender_gallery/vender_dress_icon05.png">
				<strong>Wedding Dress</strong>
				<img alt="" src="/wedding/resources/vender_gallery/vender_dress_icon05.png">
			</h4>
	      </div>
	      
	     <div class="modal-body" style="color: black;">
	     	<table>
	     		<tr>
	     			<td style="width: 300px; height: 350px;" align="center">
	     				<img alt="" src="/wedding/resources/vender_gallery/vender_dress_gallery/${vdDto.orgname}"
						class="img-thumbnail" style="width: 280px; height: 430px;">
	     			</td>
	     			<td style="width: 400px; height: 380px;">
	     				<div style="color: black; width: 410px; height:430px; background : rgba(240, 120, 100, 0.1);" align="left">
	     				<br>
	     				<form class="form-horizontal" role="form">
	     					<div class="form-group" style="color: black;">
								<label class="control-label col-xs-3" for="inputEmail">업체명 : </label>
								<div class="col-xs-7">
									<input type="text" class="form-control" id="name" value="${ vdDto.bname }" 
										style="color: black; background-color: white;" readonly="readonly"/>
								</div>
							</div>
							<div class="form-group" style="color: black;">
								<label class="control-label col-xs-3" for="inputEmail">상품명 : </label>
								<div class="col-xs-7">
									<input type="text" class="form-control" id="name" value="${ vdDto.name }" 
										style="color: black; background-color: white;" readonly="readonly"/>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="inputEmail">가격 : </label>
								<div class="col-xs-5">
									<input type="text" class="form-control" id="price" value="${ vdDto.price }" 
										style="color: black; background-color: white;" readonly="readonly"/>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="inputEmail">사이즈 : </label>
								<div class="col-xs-3">
									<select class="form-control" style="color: black;">
										<option>size</option>
										<option>S</option>
										<option>M</option>
										<option>L</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="inputEmail">상세설명 : </label>
								<div class="col-xs-8">
	                				<textarea rows="4" class="form-control" id="explain" 
	                					style="color: black;background-color: white;" readonly="readonly">${vdDto.content}
	                				</textarea>
	            				</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="inputEmail">주소 : </label>
								<div class="col-xs-8">
									<input type="text" class="form-control" id="price" value="${ vdDto.address }" 
										style="color: black; background-color: white;" readonly="readonly"/>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="inputEmail">번호 : </label>
								<div class="col-xs-5">
									<input type="text" class="form-control" id="price" value="${ vdDto.phone }" 
										style="color: black; background-color: white;" readonly="readonly"/>
								</div>
							</div>
						
						</form>
				     	</div>
	     			</td>
	     		</tr>
	     	</table>
	     	<br>
	     	<form action="/wedding/vender_cart" method="post">
		     	<button class="btn btn-warning" onclick="javascript:goInquire()" type="button"
		     		style="background-color: PeachPuff; color: DarkRed;">
	            	<strong>업체문의</strong>
	            	<img alt="" src="/wedding/resources/vender_gallery/vender_icon01.png">
	            </button>
	            <a href="${ vdDto.homeurl }" class="btn btn-warning"
	            	style="background-color: PeachPuff;color: DarkRed;">
					<strong>업체보기</strong>
					<img alt="" src="/wedding/resources/vender_gallery/vender_icon02.png">
				</a>
	            <button class="btn btn-warning" type="submit"
	            	style="background-color: PeachPuff; color:DarkRed;">
	            	<strong>등록하기</strong>
	            	<img alt="" src="/wedding/resources/vender_gallery/vender_icon03.png">
	            </button>
	            <input type="hidden" name="name" value="${vdDto.bname }">		<!-- 업체명 -->
				<input type="hidden" name="pname" value="${ vdDto.name }">		<!-- 상품명 -->
				<input type="hidden" name="address" value="${ vdDto.address }">
				<input type="hidden" name="phone" value="${ vdDto.phone }">
				<input type="hidden" name="homeurl" value="${ vdDto.homeurl }">
				<input type="hidden" name="logo" value="${ vdDto.orgname }">
				<input type="hidden" name="type" value="dress">
	     	</form>
	    </div>
	    <div class="modal-footer" style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg'); height: 60px;" >
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	    </div>
	    </div>
	  </div>
	</div>
	<jsp:include page="/WEB-INF/views/menu/vender/vender_modal/vender_inquire_modal.jsp"/>
