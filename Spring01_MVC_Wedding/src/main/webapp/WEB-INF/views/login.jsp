<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="modal fade" id="loginPop" role="dialog"
	style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 300px; width: 450px; background-image: url('/wedding/resources/gallery/background2.jpg')">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header"
				style="height: 50px; background-image: url('/wedding/resources/background/background2.jpg');">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="cursive" style="color: black;">Login</h4>
			</div>
			<div class="modal-body"
				style="height: 250px; background: rgba(240, 120, 100, 0.1);">
				<form action="/wedding/logIn" method="post">
					<div class="form-group" align="left">
						<label for="email" style="color: black;">Email:</label> <input
							type="email" class="form-control" name="email" id="email"
							placeholder="Enter email" style="color: black;">
					</div>
					<div class="form-group" align="left">
						<label for="pwd" style="color: black;">Password:</label> <input
							type="password" class="form-control" name="pw" id="pw"
							placeholder="Enter password" style="color: black;">
					</div>
					<div class="checkbox" align="left">
						<label style="color: black;"><input type="checkbox">
							Remember me</label>
					</div>
					<button type="submit" class="btn btn-default">Login</button>
				</form>
			</div>
			<div class="modal-footer"
				style="height: 50px; background-image: url('/wedding/resources/background/background2.jpg')">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

