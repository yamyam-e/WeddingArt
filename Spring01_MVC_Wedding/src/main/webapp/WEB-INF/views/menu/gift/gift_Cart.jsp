<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div align="center">
	<img alt="" src="/wedding/resources/gift/gift_back02.jpg" align="middle">
</div>
<div class="col-sm-16" style="background-color: FloralWhite; height: 3px;"></div>
<jsp:include page="/WEB-INF/views/menu/gift/gift_payCard_Modal.jsp"/>
<div class="container">
	<h3 style="font-style: inherit; color: olive;">
		<span class="glyphicon glyphicon-shopping-cart"></span> ${ name } 님의 장바구니
	</h3>
	<form name="frm">
	<table class="table table-hover">
		<thead style="background-color: AliceBlue">
      		<tr style="color: black;">
        		<th>
        			<input type="checkbox" id="checkall" />
        		</th>
        		<th style="text-align: center;">이름</th>
        		<th>수량</th>
        		<th>가격</th>
        		<th>총 가격</th>
        		<th>종류</th>
        		<th>　</th>
      		</tr>
   	 	</thead>
   	 	<tbody style="color: navy;">
	   	 	<c:choose>
	   	 		<c:when test="${ gift_cart != null }">
	   	 			<c:forEach var="each" items="${ gift_cart }">
	   	 				<tr>
	   	 					<td>
	   	 						<c:if test="${ each.paycheck=='ok' }">
<%-- 		        					<input type="checkbox" id="chkBox" name="chkBox" value="${ each.num }" disabled="disabled" /> --%>
		        				</c:if>
		        				<c:if test="${ each.paycheck== null }">
        							<input type="checkbox" id="chkBox" name="chkBox" value="${ each.num }" />
        						</c:if>
	   	 					</td>
			   	 			<td>
			   	 				<strong>
			   	 				${ each.name }
			   	 				</strong>
			   	 			</td>
			   	 			<td>${ each.buyquantity }</td>
			   	 			<td>${ each.price } 원</td>
			   	 			<td>${ each.total } 원</td>
			   	 			<td>${ each.type }</td>
			   	 			<td>
			   	 				<c:if test="${ each.paycheck=='ok' }">
			   	 					　　출고예정 중&nbsp;
			   	 					<img alt="" src="/wedding/resources/gift/gift_icon04.png">
			   	 				</c:if>
			   	 				<c:if test="${ each.paycheck== null }">
				   	 				　<button type="button" class="btn btn-warning" onclick="javascript:gift_cartDel('${each.num}')"
				   	 					style="background-color: PowderBlue;color: DarkSlateGrey;">
				   	 					<span class="glyphicon glyphicon-floppy-remove"></span>
				   	 					삭제
				   	 				</button>　
				   	 				<button type="button" class="btn btn-warning" onclick="javascript:gift_payModal('${each.num}')" 
				   	 					style="background-color: PowderBlue;color: DarkSlateGrey;" >
	   	 								<img alt="" src="/wedding/resources/gift/gift_icon03.png">
	   	 								단품결제
	   	 							</button>
			   	 				</c:if>
			   	 				
			   	 			</td>
			   	 		</tr>
	   	 			</c:forEach>
	   	 		</c:when>
	   	 		<c:otherwise>
	   	 			<tr>
	   	 				<td colspan="7">
	   	 					장바구니가 비었습니다.
	   	 				</td>
	   	 			</tr>
	   	 		</c:otherwise>
	   	 	</c:choose>	
   	 	</tbody>
   	 	<tfoot style="color: DimGray;">
   	 		<c:forEach var="each" items="${ gift_cart }">
   	 		<c:if test="${ each.paycheck== null }">
   	 			<c:set var="sum_quantity" value="${sum_quantity +each.buyquantity}"/>
   	 			<c:set var="sum_price" value="${sum_price + each.price}"/>
   	 			<c:set var="sum_total" value="${sum_total + each.total}" />
   	 		</c:if>
   	 		</c:forEach>
   	 			<tr>
   	 				<td colspan="2"></td>
	   	 			<td>
	   	 				총 수량 : 
	   	 				<c:out value="${sum_quantity}"/>
	   	 			</td>
	   	 			<td>
	   	 				총 가격 : 
	   	 				<c:out value="${sum_price }"/> 원	
	   	 			</td>
	   	 			<td> 
	   	 				total : 
	   	 				<c:out value="${sum_total }"/> 원
	   	 			</td>
	   	 			<td></td>
	   	 			<td>
	   	 				　　　<button type="submit" class="btn btn-danger" onclick="javascript:test()"
	   	 					style="background-color: LightBlue; color: DarkSlateGrey;">
	   	 					<img alt="" src="/wedding/resources/gift/gift_icon06.png">
	   	 					선택결제
	   	 				</button>
	   	 			</td>
   	 			</tr>
   	 		
   	 	</tfoot>
	</table>
	</form>
</div>

<jsp:include page="gift_Modal.jsp" />

<script type="text/javascript">
function test(){
    
    var checkArr = [];
    
    if ($('#chkBox:checked').length== 0){
       alert("구매할 물품을 선택해주세요.");
       return;
    }else{
       //each로 loop를 돌면서 checkbox의 check된 값을 가져와 담아준다.
       $("input:checkbox[name=chkBox]:checked").each(function(){
          checkArr.push($(this).val());
       });
       var chk = checkArr.toString();
       
       var bbb = document.frm;
       bbb.action = "/wedding/checkArrSender?chk=" + chk;
       bbb.submit();
    }
 }
	
	$(document).ready(function(){
		
	    //최상단 체크박스 클릭
	    $("#checkall").click(function(){
	        //클릭되었으면
	        if($("#checkall").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $("input[name=chkBox]").prop("checked",true);
	            //클릭이 안되있으면
	        }else{
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $("input[name=chkBox]").prop("checked",false);
	        }
	        
	    })
	})
</script>




