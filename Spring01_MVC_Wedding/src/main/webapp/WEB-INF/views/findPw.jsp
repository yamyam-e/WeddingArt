<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal fade" id="Find_Pw_Pop" role="dialog"
	style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 220px; width: 250px; background-image: url('/wedding/resources/gallery/background2.jpg')">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-body"
				style="height: 220px; background: rgba(240, 120, 100, 0.1);">
				<form action="/wedding/findPw" method="post">
					<div class="form-group" align="left">
						<label style="color: black;">이 름 :</label> <input
							type="text" class="form-control" name="name" id="name"
							placeholder="이름을 입력해주세요." style="color: black;">
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">이메일 :</label> <input
							type="text" class="form-control" name="email" id="email"
							placeholder="이메일을 입력해주세요." style="color: black;">
					</div>
					<button type="submit" class="btn btn-default">input</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</form>
			</div>
		</div>
	</div>
</div>


