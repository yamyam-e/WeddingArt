<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
	
	<style>
		.mydatagrid table {
			border-collapse: collapse;
			text-align: left;
			width: 100%;
		}
		
		.mydatagrid {
			font: normal 12px/150% Arial, Helvetica, sans-serif;
/*  			background: rgba(240, 120, 100, 0.1); */
			overflow: hidden;
			border: 1px solid #F4DA9C;
			-webkit-border-radius: 3px;
			-moz-border-radius: 3px;
			border-radius: 3px;
		}
		
		.mydatagrid table td, .datagrid table th {
			padding: 3px 10px;
		}
		
		.mydatagrid table tbody td {
			color: #000000;
			border-left: 1px solid #F4DA9C;
			font-size: 12px;
			font-weight: normal;
		}
		
		.mydatagrid table tbody input {
			border: 1px solid #F4DA9C;
			-webkit-border-radius: 3px;
			-moz-border-radius: 3px;
			border-radius: 3px;
		}
		
		.mydatagrid table tbody td:first-child {
			border-left: none;
		}
		
		.mydatagrid table tbody tr:last-child td {
			border-bottom: none;
		}
	</style>
	
</head>

<form action="/wedding/regInsertOneFriend" method="post">
	<div class="container">
	<!-- Modal -->
		<div class="modal fade" id="regFriendModalInsert" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header"
						style="background-image: url('/wedding/resources/regProduct_gallery/ModalFrame.jpg');">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3></h3>
					</div>
					<div class="modal-body">
						<div>
						<div class="mydatagrid">
							<table>
								<tbody>
									<tr>
										<td colspan="2" style="text-align: center;"><h4><strong>새친구 등록</strong></h4></td>
									</tr>
								</tbody>
							</table>
						</div>
						<br>
						<div class="mydatagrid">
							<table>
								<tbody>
									<tr>
										<td><strong>이 름</strong></td>
										<td>
											<input type="text" name="fName" required="required" size="30"/>
										</td>
									</tr>
									<tr>
										<td><strong>이메일</strong></td>
										<td>
											<input type="email" name="fEmail" required="required" size="30"/>
										</td>
									</tr>
									<tr>
										<td><strong>핸드폰</strong></td>
										<td>
											<input type="text" name="fPhone" id="phone" required="required" maxlength="13" size="30"/>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						</div>
					</div>
					<div class="modal-footer"
						style="background-image: url('/wedding/resources/regProduct_gallery/ModalFrame.jpg');">
						<input type="submit" value="등록" class="btn btn-warning" />
					</div>
				</div>
				
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
	
		var cellPhone = document.getElementById('phone');
		phone.onkeyup = function(event){
		    event = event || window.event;
		    var _val = this.value.trim();
		    this.value = autoHypenPhone(_val) ;
		}
	</script>
</form>