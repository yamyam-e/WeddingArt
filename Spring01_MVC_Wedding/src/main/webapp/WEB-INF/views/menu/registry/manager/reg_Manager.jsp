<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"> <title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/menu/registry/manager/reg_Manager_Modal_Insert.jsp"/>
	<jsp:include page="/WEB-INF/views/menu/registry/manager/reg_Manager_Modal_Mod.jsp"/>
	<jsp:include page="/WEB-INF/views/menu/registry/manager/reg_Manager_Modal_Delete.jsp"/>

	<div class="container">
		<div align="center">
			<img alt="" src="/wedding/resources/gallery/system_back04.jpg" align="middle">
		</div>
		<div style="height: 40px;position: relative;top: 35px;">
			<form action="/wedding/regProductSearchManager" class="form-inline">
				<div class="form-group">
					<label for="pwd" style="color: black;">검색 : </label> 
					<input type="text" class="form-control" name="search" placeholder="상품명를 입력해주세요" style="color: black;" required="required"> 
					<button type="submit" class="btn btn-info" style="background-color: Wheat; color: DarkSlateGray">
						<span class="glyphicon glyphicon-search"></span>검색
					</button>
					<a href="/wedding/regManagerModalInsert" class="btn btn-info" style="background-color: Wheat; color: DarkSlateGray">
						<span class="glyphicon glyphicon-plus"></span>새상품추가
					</a>
				</div>
			</form>
		</div>
	<br>
	<br>
		<table class="table table-hover" style="width: 90%; position: relative; left: 20px;">
			<thead style="background-color: MistyRose">
				<tr style="color: black; text-align: center;">
					<th style="text-align: center;">번호</th>
					<th style="text-align: center;">사진</th>
					<th style="text-align: center;">상품명</th>
					<th style="text-align: center;">카타고리</th>
					<th style="text-align: center;">스펙</th>
					<th style="text-align: center;">가격</th>
					<th style="text-align: center;">수량</th>
					<th style="text-align: center;">종류</th>
					<th>수정/삭제</th>
				</tr>
			</thead>
			<tbody style="color: navy;">
				<c:forEach var="each" items="${ regManagerView }">
					<tr style="text-align: center;color: black;">
						<td>${ each.num }</td>
						<td align="center">
							<img alt="" width="200px" height="200px"
							src="/wedding/resources/regProduct_gallery/${ each.sysname }">
						</td>
						<td>${ each.name }</td>
						<td>${ each.category }</td>
						<td>${ each.content }</td>
						<td>${ each.price } 원</td>
						<td>${ each.quantity }</td>
						<td>${ each.category }</td>
						<td>
							<button type="button" class="btn btn-danger" onclick="javascript:regSysMod('${ each.num }')"
								style="color: #28285c; background-color: BlanchedAlmond">
								<span class="glyphicon glyphicon-wrench"></span> 수정
							</button>
							<button type="button" class="btn btn-danger" onclick="javascript:regSysDelete('${ each.num }')"
								style="color: #28285c; background-color: BlanchedAlmond">
								<span class="glyphicon glyphicon-remove"></span> 삭제
							</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<c:choose>
				<c:when test="${ pageDTO != null }">
					<tfoot>
					<tr>
			         <td colspan="9" align="center">
			         <ul class="pagination" style="text-align: center;">
			            <c:if test="${ pageDTO.showPageNumberBegin != 1 }">
			               <li><a href="?nowPage=1">◀◀</a></li> &nbsp; 
			               <li><a href="?nowPage=${ pageDTO.nowPage - 1 }">◀</a></li>
			            </c:if>
			            <c:forEach var="k" begin="${ pageDTO.showPageNumberBegin }" 
			                  end = "${ pageDTO.showPageNumberEnd }"
			                  step="1"> 
			                   <c:choose> 
			                      <c:when test="${ pageDTO.nowPage == k }"> 
			                          <li><a class="active">${ k }</a></li> 
			                      </c:when> 
			                      <c:otherwise> 
			                         <li><a href="?nowPage=${ k }">${ k }</a></li>
			                      </c:otherwise> 
			                   </c:choose>    
			               </c:forEach> 
			            
			               <c:if test="${ pageDTO.showPageNumberEnd != pageDTO.endPage }"> 
			                  <li><a href="?nowPage=${ pageDTO.nowPage + 1 }">▶</a></li>
			                  <li><a href="?nowPage=${ pageDTO.endPage }">▶▶</a></li>
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