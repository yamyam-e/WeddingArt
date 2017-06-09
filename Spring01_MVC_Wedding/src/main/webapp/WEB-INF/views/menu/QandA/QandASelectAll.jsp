<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="QandAInsertOne.jsp" />
<jsp:include page="QandAInsertReply.jsp" />

<h2 style="text-align: center; color: #000040;">자유게시판</h2>

<div class="container">
<table class="QandADesign" style="text-align: center; width: 100%; ">
	<thead>
		<tr>
			<td colspan="9" style="text-align: right; padding-right: 30px;">
				<button data-toggle="modal" data-target="#QandAInsertPop"
					class="QandABtn">글쓰기</button>
			</td>
		</tr>
		<tr>
			<th scope="col">새번호</th>
			<th scope="col">번호(P.K)</th>
			<th scope="col">제 목</th>
			<th scope="col">그룹번호</th>
			<th scope="col">답변Seq</th>
			<th scope="col">답변Level</th>
			<th scope="col">작성자</th>
			<th scope="col">내 용</th>
			<th scope="col">&nbsp;</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach var="each" items="${ QandASelectAll }" varStatus="i">
		<c:choose>
			<c:when test="${ i.count%2==0 }">
				<tr>
					<th scope="row" class="even">${ i.count }</th>
					<td class="even">${ each.num }</td>
					
					<c:choose>
					<c:when test="${ each.replySeq == 0 }">
						<td class="even" style="text-align: left;">${ each.title }</td>
					</c:when>
						<c:otherwise>
							<td class="even" align="left">&nbsp;&nbsp;┗RE: &nbsp;&nbsp;${ each.title }</td>
						</c:otherwise>
					</c:choose>
					
					<td class="even">${ each.groupNum }</td>
					<td class="even">${ each.replySeq }</td>
					<td class="even">${ each.replyLevel }</td>
					<td class="even">${ each.writer }</td>
					<td class="even">${ each.contents }</td>
					<c:choose>
						<c:when test="${ each.replySeq == 0 }">
							
							<td class="even">
								<a href="/wedding/QandAInsertReply_one?num=${ each.num }">
									답변작성
								</a>
							</td>
						</c:when>
						<c:otherwise>
							<td class="even"></td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:when>
			<c:otherwise>
				<tr>
					<th scope="row">${ i.count }</th>
					<td>${ each.num }</td>
					
					<c:choose>
					<c:when test="${ each.replySeq == 0 }">
						<td style="text-align: left;">${ each.title }</td>
					</c:when>
						<c:otherwise>
							<td align="left">&nbsp;&nbsp;┗RE: &nbsp;&nbsp; ${ each.title }</td>
						</c:otherwise>
					</c:choose>
					
					<td>${ each.groupNum }</td>
					<td>${ each.replySeq }</td>
					<td>${ each.replyLevel }</td>
					<td>${ each.writer }</td>
					<td>${ each.contents }</td>
					<c:choose>
						<c:when test="${ each.replySeq == 0 }">
							
							<td>
								<a href="/wedding/QandAInsertReply_one?num=${ each.num }">
									답변작성
								</a>
							</td>
						</c:when>
						<c:otherwise>
							<td></td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:otherwise>
		</c:choose>
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


