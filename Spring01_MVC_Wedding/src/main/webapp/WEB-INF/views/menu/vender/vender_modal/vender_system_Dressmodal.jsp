<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal fade" id="venderSysDModal" role="dialog"
	style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 500px; width: 480px; background-image: url('/wedding/resources/gallery/background2.jpg')">

		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-header"
				style="height: 50px; background-image: url('/wedding/resources/background/background2.jpg');">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="cursive" style="color: black;">Dress Modify</h4>
			</div>
			<div class="modal-body"
				style="height: 600px; background: rgba(240, 120, 100, 0.1);">
				<form class="form-horizontal" action="/wedding/vender_systemDModify" method="post" enctype="multipart/form-data" >
					<div class="form-group" align="left">
						<label style="color: black;" class="sr-only">picture:</label> 
						<div class="col-sm-10">
						　<input type="file" name="upfile" id="pictureBox" style="color: black;">
						</div>
					</div>
				    <div class="form-group" align="left">
				      <label class="control-label col-sm-2" style="color: black;">업체명 : </label>
				      <div class="col-sm-9">
				        <input type="text" class="form-control-after" name="bname" id="bname"
							value="${ vdDtoModal.bname }" style="color: black;">
				      </div>
				    </div>
				    <div class="form-group" align="left">
				      <label class="control-label col-sm-2" style="color: black;">상품명 : </label>
				      <div class="col-sm-9">
				        <input type="text" class="form-control-after" name="name" id="name"
							value="${ vdDtoModal.name }" style="color: black;">
				      </div>
				    </div>
				    <div class="form-group" align="left">
				      <label class="control-label col-sm-2" style="color: black;">가격 : </label>
				      <div class="col-sm-9">
				        <input type="text" class="form-control-after" name="price" id="price"
							value="${ vdDtoModal.price }" style="color: black;">
				      </div>
				    </div>
				    <div class="form-group" align="left">
				      <label class="control-label col-sm-2" style="color: black;">내용 : </label>
				      <div class="col-sm-9">
				        <textarea class="form-control-after" rows="3" cols="3" style="color: black;" name="content">${ vdDtoModal.content }
						</textarea>
				      </div>
				    </div>
				    <div class="form-group">
				      <label class="control-label col-sm-2" style="color: black;">홈페이지 : </label>
				      <div class="col-sm-9">
				        <input type="text" class="form-control-after" name="homeurl" id="homeurl"
							value="${ vdDtoModal.homeurl }" style="color: black;">
				      </div>
				    </div>
				    <div class="form-group">
				      <label class="control-label col-sm-2" style="color: black;">종류 : </label>
				      <div class="col-sm-9">
				        <select class="form-control-after" style="color: black;" name="type">
							<option value="weddingdress">weddingdress</option>
							<option value="minidress">minidress</option>
							<option value="shoes">shoes</option>
							<option value="shoes">tuxedo</option>
						</select>
				      </div>
				    </div>
				    <div class="form-group">
				      <label class="control-label col-sm-2" style="color: black;">주소 : </label>
				      <div class="col-sm-9">
				        <input type="text" class="form-control-after" name="address" id="address"
							value="${ vdDtoModal.address }" style="color: black;">
				      </div>
				    </div>
				    <div class="form-group">
				      <label class="control-label col-sm-2" style="color: black;">전화번호 : </label>
				      <div class="col-sm-9">
				        <input type="text" class="form-control-after" name="phone" id="phone"
							value="${ vdDtoModal.phone }" style="color: black;">
				      </div>
				    </div>
				    <input type="hidden" name="num" value="${ vdDtoModal.num }">
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







