<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		.mydatagrid table {
			border-collapse: collapse;
			text-align: left;
			width: 100%;
		}
		
		.mydatagrid {
			font: normal 12px/150% Arial, Helvetica, sans-serif;
			background: #fff;
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
		
		.mydatagrid table tbody tr:last-child {
 			border-top: 1px solid #F4DA9C;
		}
</style>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<body>
<div class="modal fade" id="payPointModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header" align="center" style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg')">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h4 class="modal-title" style="color: DimGray;">
				<strong>포인트 결제</strong> 
			</h4>
        </div>
        <div class="modal-body">
          <form action="/wedding/regPayPoint" method="post">

			<div class="mydatagrid">
				<table>
					<tbody>
						<tr>
							<td>보유포인트</td>
							<td>${ totalPoint } points</td>
						</tr>
						<tr>
							<td>사용포인트</td>
							<td>
								<c:if test="${ regpDTO != null }">
									<input type="text" name="payment"
										onchange="getNumber(this);" 
										onkeyup="getNumber(this);" 
										style="text-align:right;" size="10" value="${regpDTO.total }">points
									<input type="hidden" name="name" value="${ regpDTO.name }">
									<input type="hidden" name="quantity" value="${ regpDTO.buyquantity }">
									<input type="hidden" name="category" value="gift_${ regpDTO.category }">
									<input type="hidden" name="num" value="${ regpDTO.num }">
								</c:if>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button type="submit" class="btn btn-warning" style="background-color: BurlyWood">
		   	 						<img alt="" src="/wedding/resources/gift/gift_icon07.png">
		   	 						포인트사용
		   	 					</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
        </div>
        <div class="modal-footer" style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg')">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
</div>


</body>
	<script type="text/javascript">
	var rgx1 = /\D/g;  // /[^0-9]/g 와 같은 표현
	var rgx2 = /(\d+)(\d{3})/; 

	function getNumber(obj){
	     var num01;
	     var num02;
	     num01 = obj.value;
	     num02 = num01.replace(rgx1,"");
	     num01 = setComma(num02);
	     obj.value =  num01;
	}

	function setComma(inNum){
	     var outNum;
	     outNum = inNum; 
	     while (rgx2.test(outNum)) {
	          outNum = outNum.replace(rgx2, '$1' + ',' + '$2');
	      }
	     return outNum;
	}
	</script>






