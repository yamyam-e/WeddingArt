<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="modal fade" id="signAfterPop" role="dialog"
	style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 500px; width: 450px; background-image: url('/wedding/resources/gallery/background2.jpg')">

		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-header"
				style="height: 50px; background-image: url('/wedding/resources/background/background2.jpg');">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="cursive" style="color: black;">Sign up</h4>
			</div>
			<div class="modal-body"
				style="height: 550px; background: rgba(240, 120, 100, 0.1);">
				<form action="/wedding/afterSignUp" method="post" enctype="multipart/form-data">
					<div class="form-group" align="left">
						<label style="color: black;">picture:</label> <input type="file"
							 name="upfile" id="pictureBox"
							style="color: black;">
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">name:</label> <input type="text"
							class="form-control-after" name="name" id="aNameBox"
							style="color: black;">
					</div>
					<div id="aNameCheck" align="left"></div>
					<div class="form-group" align="left">
						<label style="color: black;">partnerName:</label> <input
							type="text" class="form-control-after" name="pName" id="apNameBox"
							style="color: black;">
					</div>
					<div id="apNameCheck" align="left"></div>
					<div class="form-group" align="left">
						<label style="color: black;">Address:</label> <input type="text"
							class="form-control-after" name="address" id="aAddressBox"
							style="color: black;">
					</div>
					<div id="aAddressCheck" align="left"></div>
					<div class="form-group" align="left">
						<label style="color: black;">Phone Number:</label> <input
							type="text" class="form-control-after" name="pNum" id="apNumBox"
							style="color: black;">
					</div>
					<div id="apNumCheck" align="left"></div>
					<div class="form-group" align="left">
						<label style="color: black;">Wedding Day:</label> <input
							type="date" class="form-control-after" name="weddingDay"
							id="aWeddingDayBox" style="color: black;">
					</div>
					<div id="aWeddingDayCheck" align="left"></div>
					
					<input type="hidden" name="num" value="${param.num}" />
					<button id="aSign" type="submit" class="btn btn-default" disabled="disabled">Sign Up</button>
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
		
	var aNameFlag = false;
	var apNameFlag = false;
	var aAddressFlag = false;
	var apNumFlag = false;
	var aWeddingDayFlag = false;
	
	$("#aNameBox").keyup(
			function() {
				var value = $(this).val();
				var resultStr = document.getElementById('aNameBox').value;
				
				if(value == ""){
					$(aNameCheck).css("color", "red");
					resultStr = "이름을 입력해주세요.";
					document.getElementById('aNameCheck').innerHTML = resultStr;
					aNameFlag = false;
					signChecker();
				}else{
					resultStr = "";
					document.getElementById('aNameCheck').innerHTML = resultStr;
					aNameFlag = true;
					signChecker();
				}
			}		
		);
	
	$("#apNameBox").keyup(
			function() {
				var value = $(this).val();
				var resultStr = document.getElementById('apNameBox').value;
				if(value == ""){
					$(apNameCheck).css("color", "red");
					resultStr = "파트너 이름을 입력해주세요.";
					document.getElementById('apNameCheck').innerHTML = resultStr;
					apNameFlag = false;
					signChecker();
				}else{
					resultStr = "";
					document.getElementById('apNameCheck').innerHTML = resultStr;
					apNameFlag = true;
					signChecker();
				}
			}		
		);
	
	$("#aAddressBox").keyup(
			function() {
				var value = $(this).val();
				var resultStr = document.getElementById('aAddressBox').value;
				
				if(value == ""){
					$(aAddressCheck).css("color", "red");
					resultStr = "주소를 입력해주세요.";
					document.getElementById('aAddressCheck').innerHTML = resultStr;
					aAddressFlag = false;
					signChecker();
				}else{
					resultStr = "";
					document.getElementById('aAddressCheck').innerHTML = resultStr;
					aAddressFlag = true;
					signChecker();
				}
			}		
		);
	
	function autoHypenPhone(str){
		str = str.replace(/[^0-9]/g, '');
		var tmp = '';
		if( str.length < 4){
			return str;
		}else if(str.length < 7){
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3);
			return tmp;
		}else if(str.length < 11){
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3, 3);
			tmp += '-';
			tmp += str.substr(6);
			return tmp;
		}else{				
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3, 4);
			tmp += '-';
			tmp += str.substr(7);
			return tmp;
		}
		return str;
	}
	
	var cellPhone = document.getElementById('apNumBox');
	cellPhone.onkeyup = function(event){
	        event = event || window.event;
	        var _val = this.value.trim();
	        this.value = autoHypenPhone(_val) ;
	}
	
	$("#apNumBox").keyup(
			
			function() {
				var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
				var value = $(this).val();
				var resultStr = document.getElementById('apNumBox').value;
				
				if(value == ""){
					$(apNumCheck).css("color", "red");
					resultStr = "핸드폰 번호를 입력해주세요.";
					document.getElementById('apNumCheck').innerHTML = resultStr;
					apNumFlag = false;
					signChecker();
				}else{
					if(regExp.test(value)){
						resultStr = "";
						document.getElementById('apNumCheck').innerHTML = resultStr;
						apNumFlag = true;
						signChecker();
					}
				}
			}
		);
	
	$("#aWeddingDayBox").click(
			function() {
				var value = $(this).val();
				var resultStr = document.getElementById('aWeddingDayBox').value;
				
				if(value == ""){
					$(aWeddingDayCheck).css("color", "red");
					resultStr = "결혼 날짜를 입력해주세요.";
					document.getElementById('aWeddingDayCheck').innerHTML = resultStr;
					aWeddingDayFlag = false;
					signChecker();
				}else{
					resultStr = "";
					document.getElementById('aWeddingDayCheck').innerHTML = resultStr;
					aWeddingDayFlag = true;
					signChecker();
				}
			}		
		);
	
	function signChecker() {
		var aSignCheck = document.getElementById("aSign");
		if(aNameFlag == true && apNameFlag == true && aAddressFlag == true
				&& apNumFlag == true && aWeddingDayFlag == true){
			aSignCheck.disabled = false;
		}else{
			aSignCheck.disabled = true;
		}
	}
</script>

