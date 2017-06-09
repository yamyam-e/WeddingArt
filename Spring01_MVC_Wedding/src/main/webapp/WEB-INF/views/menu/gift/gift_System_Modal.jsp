<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal fade" id="giftSysModal" role="dialog"
	style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 500px; width: 450px; background-image: url('/wedding/resources/gallery/background2.jpg')">

		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-header"
				style="height: 50px; background-image: url('/wedding/resources/background/background2.jpg');">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="cursive" style="color: black;">Gift Modify</h4>
			</div>
			<div class="modal-body"
				style="height: 550px; background: rgba(240, 120, 100, 0.1);">
				<form action="/wedding/gift_systemModify" method="post" enctype="multipart/form-data">
					<div class="form-group" align="left">
						<label style="color: black;">picture:</label> <input type="file"
							 name="upfile" id="pictureBox"
							style="color: black;">
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">상품명:</label> <input type="text"
							class="form-control-after" name="name" id="name"
							value="${ gDtoModal.name }" style="color: black;">
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">내용:</label>
						<textarea class="form-control-after" rows="3" cols="3" style="color: black;" name="content">${ gDtoModal.content }
						</textarea> 
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">가격:</label> <input
							type="text" class="form-control-after" name="price" id="price"
							value="${ gDtoModal.price }" style="color: black;">
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">수량:</label> <input
							type="text" class="form-control-after" name="quantity" id="quantity"
							value="${ gDtoModal.quantity }" style="color: black;">
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">종류:</label>
						<select class="form-control-after" style="color: black;" name="type">
							<option value="Food">Food</option>
							<option value="Useful">Useful</option>
							<option value="Kitchen">Kitchen</option>
						</select>
					</div>
					<input type="hidden" name="num" value="${ gDtoModal.num }">
					<button type="submit" class="btn btn-default">Modify</button>
				</form>
			</div>
			<div class="modal-footer"
			style="height: 50px; background-image: url('/wedding/resources/background/background2.jpg');">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
		</div>
	</div>
</div>







