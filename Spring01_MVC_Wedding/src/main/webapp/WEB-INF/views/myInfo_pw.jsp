<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal fade" id="myInfo_pw_Pop" role="dialog"
	style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 150px; width: 250px; background-image: url('/wedding/resources/gallery/background2.jpg')">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-body"
				style="height: 150px; background: rgba(240, 120, 100, 0.1);">
				<form action="/wedding/modifyPw" method="post">
					<div class="form-group" align="left">
						<label for="pwd" style="color: black;">비밀번호를 입력해주세요:</label> <input
							type="password" class="form-control" name="pw" id="pw"
							placeholder="Enter password" style="color: black;">
					</div>
					<input type="hidden" name="email" value="${ param.email }">
					<button type="submit" class="btn btn-default">input</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</form>
			</div>
		</div>
	</div>
</div>


