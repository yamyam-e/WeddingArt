<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"> <title>Insert title here</title>
</head>
<body>

	<table class="table table-hover" >
		<thead style="background-color: MistyRose">
			<tr style="color: black; text-align: center;">
				<th>번호</th>
				<th style="text-align: center;">사진</th>
				<th>업체명</th>
				<th>상품명</th>
				<th>가격</th>
				<th>홈페이지</th>
				<th>종류</th>
				<th>　</th>
			</tr>
		</thead>
		<tbody style="color: navy;">
			<c:forEach items="${ vender_system_florists }" var="each">
				<tr>
					<td>${ each.num }</td>
					<td align="center">
						<img alt="" src="/wedding/resources/vender_gallery/vender_florists_gallery/${ each.orgname }"
							width="200px" height="200px">
					</td>
					<td>${ each.bname }</td>
					<td>${ each.name }</td>
					<td>${ each.price } 원</td>
					<td>
						<a href="${ each.homeurl }">${ each.homeurl }</a>
					</td>
					<td>${ each.type }</td>
					<td>
						<button type="button" class="btn btn-danger" onclick="javascript:venderSysFMod('${each.num}')"
							style="color: #28285c; background-color: BlanchedAlmond">
							<span class="glyphicon glyphicon-pencil"></span> 수정
						</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
		<c:choose>
			<c:when test="${ pageDto != null }">
				<tfoot>
					<tr>
						<td colspan="8" align="center">
				         <ul class="pagination">
				            <c:if test="${ pageDto.showPageNumberBegin != 1 }">
				               <li><a href="?nowPage=1">◀◀</a></li> &nbsp; 
				               <li><a href="?nowPage=${ pageDto.nowPage - 1 }">◀</a></li>
				            </c:if>
				            <c:forEach var="k" begin="${ pageDto.showPageNumberBegin }" 
				                  end = "${ pageDto.showPageNumberEnd }"
				                  step="1"> 
				                   <c:choose> 
				                      <c:when test="${ pageDto.nowPage == k }"> 
				                          <li><a class="active">${ k }</a></li> 
				                      </c:when> 
				                      <c:otherwise> 
				                         <li><a href="?nowPage=${ k }">${ k }</a></li>
				                      </c:otherwise> 
				                   </c:choose>    
				               </c:forEach> 
				            
				               <c:if test="${ pageDto.showPageNumberEnd != pageDto.endPage }"> 
				                  <li><a href="?nowPage=${ pageDto.nowPage + 1 }">▶</a></li>
				                  <li><a href="?nowPage=${ pageDto.endPage }">▶▶</a></li>
				               </c:if> 
				         </ul>
			         </td>
					</tr>
		 		</tfoot>
			</c:when>
		</c:choose>
	</table>
	
</body>
</html>






