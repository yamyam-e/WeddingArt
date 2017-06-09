<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	<spring:url var="httpRequest_js" value="/resources/files_js/httpRequest.js"/>	
	<spring:url var="min_js" value="/resources/files_js/jquery-3.1.1.min.js"/>	
	<script src="${ httpRequest_js }"></script>
	<script src="${ min_js }"></script>
	
<div class="modal fade" id="signPop" role="dialog" style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 300px; width: 450px; background-image: url('/wedding/resources/gallery/background2.jpg')">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header"
				style="height: 50px; background-image: url('/wedding/resources/background/background2.jpg');">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="cursive" style="color: black;">Sign up</h4>
			</div>
			<div class="modal-body" style="height: 250px; background: rgba(240, 120, 100, 0.1);">
				<form action="/wedding/signUp" method="post">
					<div class="form-group" align="left">
						<label for="email" style="color: black;">Email:</label> <input
							type="email" class="form-control" name="email" id="eBox"
							placeholder="Enter email" style="color: black;">
					</div>
					<div id="eCheck" align="left"></div>
					<div class="form-group" align="left">
						<label for="pwd" style="color: black;">Password:</label> <input
							type="password" class="form-control" name="pw" id="pBox"
							placeholder="Enter password" style="color: black;">
					</div>
					<div id="pCheck" align="left"></div>
					<button id="join" type="submit" class="btn btn-default" disabled="disabled">Sign Up</button>
				</form>
			</div>
			<div class="modal-footer"
				style="height: 50px; background-image: url('/wedding/resources/background/background2.jpg');">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

	<script type="text/javascript">
	
		var idFlag = false;
		var pwFlag = false;
		
		$("#eBox").keyup(
			function() {
				var value = $(this).val();
				sendRequest("/wedding/ajax", "value="+ value, callback, null);
			}	
		);
		
		$("#pBox").keyup(
			function pwCheck() {
				var value = $(this).val();
				var resultStr = document.getElementById('pCheck').value;
				
				if(value.length >= 3){
					$(pCheck).css("color", "green");
					resultStr = "비밀번호가 유효합니다.";
					document.getElementById('pCheck').innerHTML = resultStr;
					pwFlag = true;
					joinChecker();
				}else{
					$(pCheck).css("color", "red");
					resultStr = "비밀번호가 유효하지 않습니다.";
					document.getElementById('pCheck').innerHTML = resultStr;
					pwFlag = false;
					joinChecker();
				}
			}		
		);
		
		function callback() {
			if(httpRequest.readyState == 4) {
				if(httpRequest.status == 200) {
					
					var targetNode = document.getElementById("eCheck");
					targetNode.innerHTML = httpRequest.responseText;
					var temp = targetNode.innerHTML;
					var pw = document.getElementById("pBox").value;
					
					if(temp == "등록 가능한 아이디입니다."){
						$(eCheck).css("color", "green");
						idFlag = true;
						joinChecker();
						
					}else{
						$(eCheck).css("color", "red");
						idFlag = false;
						joinChecker();
					}
					
				}else{
					alter("#### 실패 : " + httpRequest.status);
				}
			}
		}
		
		function joinChecker() {
			var joinCheck = document.getElementById("join");
			if(idFlag == true && pwFlag == true){
				joinCheck.disabled = false;
			}else{
				joinCheck.disabled = true;
			}
		}
	</script>

