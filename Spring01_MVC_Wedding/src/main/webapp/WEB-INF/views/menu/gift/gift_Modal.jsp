<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
	<div class="modal fade" id="giftMyModal" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				
				<div class="modal-header" align="center" style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg'); height: 60px;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" style="color: DimGrey;"><strong>${gDto.name}</strong></h4>
				</div>

				<div class="modal-body">
					<table style="position: relative; left: 35px;">
						<tr style="vertical-align: top">
							<td
								style="width: 370px; border-right: 2px solid gray; padding-right: 12px; text-align: inherit;">
								<img src="/wedding/resources/gift/${gDto.type}/${gDto.orgname}"
								alt="img" style="width: 350px; height: 350px"
								class="img-thumbnail">
							</td>
							<td style="padding-left: 10px; font-size: 15px; font-style: italic;">
								<div style="color: black; width: 410px; height:350px; background : rgba(240, 120, 100, 0.1);" align="left">
	     						<br>
	     						<form class="form-horizontal" role="form">
	     							<div class="form-group" style="color: black;">
										<label class="control-label col-xs-3" for="inputEmail" style="font-style: normal;">상품명 : </label>
										<div class="col-xs-7">
											<input type="text" class="form-control" id="name" value="${ gDto.name }" 
											style="color: black; background-color: white;" readonly="readonly"/>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-3" for="inputEmail" style="font-style: normal;">가격 : </label>
										<div class="col-xs-5">
											<input type="text" class="form-control" id="price" value="${ gDto.price }원" 
												style="color: black; background-color: white;" readonly="readonly"/>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-3" for="inputEmail" style="font-style: normal;">상세설명 : </label>
										<div class="col-xs-8">
			                				<textarea rows="4" class="form-control" id="explain" 
			                					style="color: black;background-color: white;" readonly="readonly">${gDto.content}
			                				</textarea>
			            				</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-3" for="inputEmail" style="font-style: normal;">남은 수량 : </label>
										<div class="col-xs-5">
											<input type="text" class="form-control" id="price" value="${ gDto.quantity }개" 
												style="color: black; background-color: white;" readonly="readonly"/>
										</div>
									</div>
									<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#payModal"
										style="position: relative;left: 160px; top:10px; font-style: normal; background-color: DarkSalmon;color: white;">
										<span class="glyphicon glyphicon-edit"></span> 구매하기
									</button>
								</form>
				     		</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer" style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg'); height: 60px;">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="payModal" role="dialog" style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 150px; width: 250px; background-image: url('/wedding/resources/gallery/background2.jpg')">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-body"
				style="height: 150px; background: rgba(240, 120, 100, 0.1);">
				<form action="/wedding/gift_Buy" method="post">
					<div class="form-group" align="left">
						<label for="pwd" style="color: black;">구매할 수량을 입력해주세요:</label> 
						<input type="text" class="form-control" name="buyquantity" style="color: black;" required="required">
					</div>
					<button type="submit" class="btn btn-default">구매</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<input type="hidden" name="name" value="${ gDto.name }">
					<input type="hidden" name="price" value="${ gDto.price }">
					<input type="hidden" name="type" value="${ gDto.type }">
					<input type="hidden" name="quantity" value="${ gDto.quantity }">
					<input type="hidden" name="num" value="${ gDto.num }">
				</form>
			</div>
		</div>
	</div>
</div>
