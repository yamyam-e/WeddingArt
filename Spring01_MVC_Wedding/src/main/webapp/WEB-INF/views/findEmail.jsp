<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal fade" id="Find_Email_Pop" role="dialog"
	style="text-align: center;">
	<div class="modal-dialog"
		style="background-color: white; height: 220px; width: 250px; background-image: url('/wedding/resources/gallery/background2.jpg')">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-body"
				style="height: 220px; background: rgba(240, 120, 100, 0.1);">
				<form action="/wedding/findEmail" method="post">
					<div class="form-group" align="left">
						<label style="color: black;">이 름 :</label> <input
							type="text" class="form-control" name="name" id="name"
							placeholder="이름을 입력해주세요." style="color: black;">
					</div>
					<div class="form-group" align="left">
						<label style="color: black;">전화번호 :</label> <input
							type="text" class="form-control" name="pNum" id="fPNumBox"
							placeholder="전화번호를 입력해주세요." style="color: black;">
					</div>
					<button type="submit" class="btn btn-default">input</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
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
		
		var cellPhone = document.getElementById('fPNumBox');
		cellPhone.onkeyup = function(event){
		        event = event || window.event;
		        var _val = this.value.trim();
		        this.value = autoHypenPhone(_val) ;
		}
	</script>
</div>

