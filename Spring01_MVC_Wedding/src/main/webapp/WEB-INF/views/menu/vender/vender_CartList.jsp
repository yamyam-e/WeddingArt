<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div align="center">
	<img alt="" src="/wedding/resources/gift/gift_back02.jpg" align="middle">
</div>
<div class="col-sm-16" style="background-color: lavenderblush; height: 3px;"></div>

<div class="container">
	<h3 style="font-style: inherit; color: olive;" class="cursive">
		<span class="glyphicon glyphicon-shopping-cart"></span> ${ name } 님의 등록리스트
	</h3>
	<form name="frm">
	<table class="table table-hover">
		<thead style="background-color: Linen;">
      		<tr style="color: black;">
        		<th>　</th>
        		<th style="text-align: center;">사진</th>
        		<th style="text-align: center;">종류</th>
        		<th style="text-align: center;">업체명</th>
        		<th style="text-align: center;">상품명</th>
        		<th style="text-align: center;">주소</th>
        		<th style="text-align: center;">전화번호</th>
        		<th style="text-align: center;">홈페이지</th>
        		<th>　</th>
      		</tr>
   	 	</thead>
   	 	<tbody style="color: DarkSlateGray;">
	   	 	<c:choose>
	   	 		<c:when test="${ vender_cartList != null }">
	   	 			<c:forEach var="each" items="${ vender_cartList }">
	   	 				<tr>
	   	 					<td>${ each.num }</td>
			   	 			<td>
			   	 				<img alt="" 
			   	 					src="/wedding/resources/vender_gallery/vender_${each.type}_gallery/${each.logo}" 
			   	 					height="200px;" width="200px;">
			   	 			</td>
			   	 			<td>${ each.type }</td>
			   	 			<td><strong>${ each.name }</strong></td>
			   	 			<td>${ each.pname }</td>
			   	 			<td>${ each.address }</td>
			   	 			<td>${ each.phone }</td>
			   	 			<td>
			   	 				<a href="${ each.homeurl }">
			   	 					${ each.homeurl }
			   	 				</a>
			   	 			</td>
			   	 			<td>
			   	 				　　<button type="button" class="btn btn-warning01" onclick="javascript:vender_cartDel('${each.num}')">
			   	 					<span class="glyphicon glyphicon-floppy-remove"></span>
			   	 					삭제
			   	 				</button>
			   	 			</td>
			   	 		</tr>
	   	 			</c:forEach>
	   	 		</c:when>
	   	 		<c:otherwise>
	   	 			<tr>
	   	 				<td colspan="7">
	   	 					등록리스트가 비었습니다.
	   	 				</td>
	   	 			</tr>
	   	 		</c:otherwise>
	   	 	</c:choose>	
   	 	</tbody>
   	 	
	</table>
	</form>
</div>





