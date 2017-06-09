<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal fade" id="regSysModalInsert" role="dialog"
	style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 500px; width: 450px; background-image: url('/wedding/resources/gallery/background2.jpg')">

		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-header"
				style="height: 50px; background-image: url('/wedding/resources/background/background2.jpg');">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="cursive" style="color: black;">Registry Product Insert</h4>
			</div>
			<div class="modal-body"
				style="height: 550px; background: rgba(240, 120, 100, 0.1);">
				<form action="/wedding/regInsertOneProduct" method="post" enctype="multipart/form-data">
					<div class="form-group" align="left">
						<label style="color: black;">사진:</label> 
						<input type="file" name="upfile" id="pictureBox" style="color: black;">
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">상품명:</label> 
						<input type="text" class="form-control-after" name="name" style="color: black; required="required"/>
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">내용:</label>
						<textarea class="form-control-after" rows="3" cols="3" style="color: black;" name="content" required="required">
						</textarea> 
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">가격:</label> 
						<input type="text" class="form-control-after" name="price" style="color: black;" required="required">
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">수량:</label> 
						<input type="text" class="form-control-after" name="quantity" style="color: black;" required="required">
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">종류:</label>
						<select class="form-control-after" style="color: black;" name="category">
							<option>=====카타고리=====</option>
							<option>생활가전</option>
							<option>주방가전</option>
							<option>뷰티가전</option>
							<option>스마트가전</option>
							<option>게임가전</option>
							<option>주방기구</option>
							<option>주방가구</option>
						</select>
					</div>
					<button type="submit" class="btn btn-default">추가</button>
				</form>
			</div>
			<div class="modal-footer"
			style="height: 50px; background-image: url('/wedding/resources/background/background2.jpg');">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
		</div>
	</div>
</div>







