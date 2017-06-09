<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
	<div class="modal fade" id="regProductModal" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				
				<div class="modal-header" align="center" style="background-image: url('/wedding/resources/regProduct_gallery/ModalFrame.jpg'); height: 60px;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" style="color: DimGrey;"><strong>${regDTO.name}</strong></h4>
				</div>

				<div class="modal-body">
					<table style="position: relative; left: 35px;">
						<tr style="vertical-align: top">
							<td
								style="width: 370px; border-right: 2px solid gray; padding-right: 12px; text-align: inherit;">
								<img src="/wedding/resources/regProduct_gallery/${regDTO.orgname}"
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
											<input type="text" class="form-control" id="name" value="${ regDTO.name }" 
											style="color: black; background-color: white;" readonly="readonly"/>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-3" for="inputEmail" style="font-style: normal;">가격 : </label>
										<div class="col-xs-5">
											<input type="text" class="form-control" id="price" value="${ regDTO.price }원" 
												style="color: black; background-color: white;" readonly="readonly"/>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-3" for="inputEmail" style="font-style: normal;">상세설명 : </label>
										<div class="col-xs-8">
			                				<textarea rows="4" class="form-control" id="explain" 
			                					style="color: black;background-color: white;" readonly="readonly">${regDTO.content}
			                				</textarea>
			            				</div>
									</div>
									<div class="form-group">
										<label class="control-label col-xs-3" for="inputEmail" style="font-style: normal;">남은 수량 : </label>
										<div class="col-xs-5">
											<input type="text" class="form-control" id="price" value="${ regDTO.quantity }개" 
												style="color: black; background-color: white;" readonly="readonly"/>
										</div>
									</div>
									<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#registryModal"
										style="position: relative;left: 160px; top:10px; font-style: normal; background-color: DarkSalmon;color: white;">
										<span class="glyphicon glyphicon-edit"></span> 레지스트리 등록하기
									</button>
								</form>
				     		</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer" style="background-image: url('/wedding/resources/regProduct_gallery/ModalFrame.jpg'); height: 60px;">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="registryModal" role="dialog" style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 150px; width: 250px; background-image: url('/wedding/resources/regProduct_gallery/ModalFrame.jpg')">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-body"
				style="height: 150px; background: rgba(240, 120, 100, 0.1);">
				<form action="/wedding/regInsertOneCart" method="post">
					<div class="form-group" align="left">
						<label for="pwd" style="color: black;">등록하시려면 등록버튼을 눌러주세요.</label> 
						<input type="text" class="form-control" name="buyquantity" style="color: black;" required="required" value="1"/>
					</div>
					<button type="submit" class="btn btn-default">등록</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<input type="hidden" name="name" value="${ regDTO.name }">
					<input type="hidden" name="price" value="${ regDTO.price }">
					<input type="hidden" name="category" value="${ regDTO.category }">
					<input type="hidden" name="quantity" value="${ regDTO.quantity }">
					<input type="hidden" name="num" value="${ regDTO.num }">
				</form>
			</div>
		</div>
	</div>
</div>
