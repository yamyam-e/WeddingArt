<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<div align="center">
		<img alt="" src="/wedding/resources/regProduct_gallery/weddingRegistry.png" align="middle"
		style="size: width:1800px; height: 100px">
	</div>
	<div class="col-sm-16" style="background-color: FloralWhite; height: 3px;"></div>
		<jsp:include page="/WEB-INF/views/menu/registry/product/reg_payCard_Modal_Friend.jsp"/>
	<div class="container">
	<h3 style="font-style: inherit; color: olive;">
	</h3>
	<h4 style="color: black;">
		<c:forEach var="each" items="${ findRegSelectAllCart }">
   	 		<c:if test="${ each.paycheck== null }">
   	 			<c:set var="sum_quantity" value="${sum_quantity + each.buyquantity}"/>
   	 			<c:set var="sum_price" value="${sum_price + each.price}"/>
   	 			<c:set var="sum_total" value="${sum_total + each.total}" />
   	 		</c:if>
   	 	</c:forEach>
		총 합계 : 
		<c:out value="${ sum_total }"/> 원&nbsp;
		<button type="submit" class="btn btn-danger" onclick="javascript:regPayCardModalSomeForFriend( '0' , '${ friendNum }')"
			style="background-color: LightBlue; color: DarkSlateGrey;">
			<span class="glyphicon glyphicon-credit-card"></span>
			부분결제
		</button>
	</h4>
	
	<div class="datagrid">
	
	<form name="frm">
	<table class="table table-hover">
		<thead style="background-color: AliceBlue;" >
      		<tr style="color: black;">
        		<th>이름</th>
        		<th>수량</th>
        		<th>가격</th>
        		<th>총 가격</th>
        		<th>종류</th>
        		<th>수정 / 결제</th>
      		</tr>
   	 	</thead>
   	 	<tfoot style="color: DimGray;">
   	 		<tr><td colspan="6"></td></tr>
   	 	</tfoot>
   	 	<tbody style="color: navy;">
	   	 	<c:choose>
	   	 		<c:when test="${ findRegSelectAllCart != null }">
	   	 			<c:forEach var="each" items="${ findRegSelectAllCart }">
	   	 				<tr>
			   	 			<td>
			   	 				<strong>
			   	 				${ each.name }
			   	 				</strong>
			   	 			</td>
			   	 			<td>${ each.buyquantity }</td>
			   	 			<td>${ each.price } 원</td>
			   	 			<td>${ each.total } 원</td>
			   	 			<td>${ each.category }</td>
			   	 			<td>
			   	 				<c:if test="${ each.paycheck=='ok' }">
			   	 					　　Paid&nbsp;
			   	 					<span class="glyphicon glyphicon-gift"></span>
			   	 				</c:if>
			   	 				<c:if test="${ each.paycheck== null }">　
				   	 				<button type="button" class="btn btn-warning" onclick="javascript:regPayCardModalOneForFriend('${each.num}', '${ friendNum }')" 
				   	 					style="background-color: PowderBlue;color: DarkSlateGrey;">
				   	 					<span class="glyphicon glyphicon-credit-card"></span>
	   	 								결제
	   	 							</button>
			   	 				</c:if>
			   	 				
			   	 			</td>
			   	 		</tr>
	   	 			</c:forEach>
	   	 		</c:when>
	   	 		<c:otherwise>
	   	 			<tr>
	   	 				<td colspan="6">
	   	 					레지스트리가 비었습니다.
	   	 				</td>
	   	 			</tr>
	   	 		</c:otherwise>
	   	 	</c:choose>	
   	 	</tbody>
	</table>
	</form>
	</div>
</div>

<jsp:include page="reg_payCard_Modal.jsp" />