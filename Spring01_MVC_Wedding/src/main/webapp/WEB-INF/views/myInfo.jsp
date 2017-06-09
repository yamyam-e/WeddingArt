<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal fade" id="myInfoPop" role="dialog"
	style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 500px; width: 450px; background-image: url('/wedding/resources/gallery/background2.jpg')">

		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-header"
				style="height: 50px; background-image: url('/wedding/resources/background/background2.jpg');">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="cursive" style="color: black;">MyInfo</h4>
			</div>
			<div class="modal-body"
				style="height: 550px; background: rgba(240, 120, 100, 0.1);">
				<form action="/wedding/modify" method="post" enctype="multipart/form-data">
					<div class="form-group" align="left">
						<label style="color: black;">picture:</label> <input type="file"
							 name="upfile" id="pictureBox"
							style="color: black;">
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">name:</label> <input type="text"
							class="form-control-after" name="name" id="nameBox"
							value="${ infoSign.getName() }" style="color: black;">
					</div>
					<div id="nameCheck" align="left"></div>
					<div class="form-group" align="left">
						<label style="color: black;">partnerName:</label> <input
							type="text" class="form-control-after" name="pName" id="pNameBox"
							value="${ infoSign.getpName() }" style="color: black;">
					</div>
					<div id="pNameCheck" align="left"></div>
					<div class="form-group" align="left">
						<label style="color: black;">Address:</label> <input type="text"
							class="form-control-after" name="address" id="addressBox"
							value="${ infoSign.getAddress() }" style="color: black;">
					</div>
					<div id="addressCheck" align="left"></div>
					<div class="form-group" align="left">
						<label style="color: black;">Phone Number:</label> <input
							type="text" class="form-control-after" name="pNum" id="pNumBox"
							value="${ infoSign.getpNum() }" style="color: black;">
					</div>
					<div id="pNumCheck" align="left"></div>
					<div class="form-group" align="left">
						<label style="color: black;">Wedding Day:</label> <input
							type="date" class="form-control-after" name="weddingDay"
							id="weddingDayBox" value="${ infoSign.getWeddingDay() }" style="color: black;">
					</div>
					<div id="weddingDayCheck" align="left"></div>

					<input type="hidden" name="num" value="${ infoSign.getNum() }" />
					<input type="hidden" name="email" value="${ infoSign.getEmail() }">
					<button id="sign" type="submit" class="btn btn-default" disabled="disabled">Modify</button>
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
		
	var nameFlag = false;
	var pNameFlag = false;
	var addressFlag = false;
	var pNumFlag = false;
	var weddingDayFlag = false;
	
	$("#nameBox").keyup(
			function() {
				var value = $(this).val();
				var resultStr = document.getElementById('nameBox').value;
				
				if(value == ""){
					$(nameCheck).css("color", "red");
					resultStr = "이름을 입력해주세요.";
					document.getElementById('nameCheck').innerHTML = resultStr;
					nameFlag = false;
					signChecker();
				}else{
					resultStr = "";
					document.getElementById('nameCheck').innerHTML = resultStr;
					nameFlag = true;
					signChecker();
				}
			}		
		);
	
	$("#pNameBox").keyup(
			function() {
				var value = $(this).val();
				var resultStr = document.getElementById('pNameBox').value;
				
				if(value == ""){
					$(pNameCheck).css("color", "red");
					resultStr = "파트너 이름을 입력해주세요.";
					document.getElementById('pNameCheck').innerHTML = resultStr;
					pNameFlag = false;
					signChecker();
				}else{
					resultStr = "";
					document.getElementById('pNameCheck').innerHTML = resultStr;
					pNameFlag = true;
					signChecker();
				}
			}		
		);
	
	$("#addressBox").keyup(
			function() {
				var value = $(this).val();
				var resultStr = document.getElementById('addressBox').value;
				
				if(value == ""){
					$(addressCheck).css("color", "red");
					resultStr = "주소를 입력해주세요.";
					document.getElementById('addressCheck').innerHTML = resultStr;
					addressFlag = false;
					signChecker();
				}else{
					resultStr = "";
					document.getElementById('addressCheck').innerHTML = resultStr;
					addressFlag = true;
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
	
	var cellPhone = document.getElementById('pNumBox');
	cellPhone.onkeyup = function(event){
	        event = event || window.event;
	        var _val = this.value.trim();
	        this.value = autoHypenPhone(_val) ;
	}
	
	$("#pNumBox").keyup(
			
			function() {
				var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
				var value = $(this).val();
				var resultStr = document.getElementById('pNumBox').value;
				
				if(value == ""){
					$(pNumCheck).css("color", "red");
					resultStr = "핸드폰 번호를 입력해주세요.";
					document.getElementById('pNumCheck').innerHTML = resultStr;
					pNumFlag = false;
					signChecker();
				}else{
					if(regExp.test(value)){
						resultStr = "";
						document.getElementById('pNumCheck').innerHTML = resultStr;
						pNumFlag = true;
						signChecker();
					}
				}
			}
		);
	
	$("#weddingDayBox").click(
			function() {
				var value = $(this).val();
				var resultStr = document.getElementById('weddingDayBox').value;
				
				if(value == ""){
					$(weddingDayCheck).css("color", "red");
					resultStr = "결혼 날짜를 입력해주세요.";
					document.getElementById('weddingDayCheck').innerHTML = resultStr;
					weddingDayFlag = false;
					signChecker();
				}else{
					resultStr = "";
					document.getElementById('weddingDayCheck').innerHTML = resultStr;
					weddingDayFlag = true;
					signChecker();
				}
			}		
		);
	
	function signChecker() {
		var signCheck = document.getElementById("sign");
		if(nameFlag == true && pNameFlag == true && addressFlag == true
				&& pNumFlag == true && weddingDayFlag == true){
			signCheck.disabled = false;
		}else{
			signCheck.disabled = true;
		}
	}
</script>

