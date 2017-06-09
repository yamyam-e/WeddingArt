<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2 style="text-align: center; color: #000040;">회원리스트</h2>

<div class="container">
<table class="QandADesign" style="text-align: center; width: 100%; ">
	<thead>
		<tr style="background-color: mistyrose;">
			<td>번 호</td>
			<td>이 름</td>
			<td>커플이름</td>
			<td>이메일</td>
			<td>주 소</td>
			<td>전화번호</td>
			<td>결혼날짜</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="each" items="${ masterLogListc }">
			<tr>
				<td>${ each.num }</td>
				<td>${ each.name }</td>
				<td>${ each.cName }</td>
				<td>${ each.email }</td>
				<td>${ each.address }</td>
				<td>${ each.pNum }</td>
				<td>${ each.weddingDay }</td>
			</tr>
		</c:forEach>
	</tbody>
	<tr>
		<td colspan="9">
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
</table>
</div>
