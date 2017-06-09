<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"> <title>Insert title here</title>
</head>
<body>
<div class="container">
<div align="center">
	<img alt="" src="/wedding/resources/gallery/system_back04.jpg" align="middle">
</div>
	<div style="height: 40px;position: relative;top: 35px;">
		<form action="/wedding/gift_system_Search" class="form-inline">
			<div class="form-group">
				<label for="pwd" style="color: black;">검색 : </label> 
				<input type="text" class="form-control" name="search" placeholder="상품명를 입력해주세요"> 
				<button type="submit" class="btn btn-info" style="background-color: Wheat; color: DarkSlateGray">
					<span class="glyphicon glyphicon-search"></span>검색
				</button>
			</div>
		</form>
	</div>
</div>
<br>
<br>
	<jsp:include page="/WEB-INF/views/menu/gift/gift_System_Modal.jsp"/>
	<div class="container">
	<table class="table table-hover" style="width: 90%; position: relative; left: 20px;">
		<thead style="background-color: MistyRose">
			<tr style="color: black; text-align: center;">
				<th style="text-align: center;">번호</th>
				<th style="text-align: center;">사진</th>
				<th style="text-align: center;">상품명</th>
				<th style="text-align: center;">가격</th>
				<th style="text-align: center;">수량</th>
				<th style="text-align: center;">종류</th>
				<th>　</th>
			</tr>
		</thead>
		<tbody style="color: navy;">
			<c:forEach var="each" items="${gift_system}">
				<tr style="text-align: center;color: black;">
					<td>${ each.num }</td>
					<td align="center">
						<img alt="" width="200px" height="200px"
						src="/wedding/resources/gift/${ each.type }/${ each.sysname }">
					</td>
					<td>${ each.name }</td>
					<td>${ each.price } 원</td>
					<td>${ each.quantity }</td>
					<td>${ each.type }</td>
					<td>
						<button type="button" class="btn btn-danger" onclick="javascript:giftSysMod('${each.num}')"
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
		         <td colspan="7" align="center">
		         <ul class="pagination" style="text-align: center;">
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
	</div>
	
</body>
</html>






