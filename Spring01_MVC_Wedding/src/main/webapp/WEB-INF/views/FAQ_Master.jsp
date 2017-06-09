<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	
	<h2 class="margin-top-0 wow fadeIn" style="color: black; text-align: center;">FAQ</h2>
	
	<table class="QandADesign">
		<tr>
			<td>번 호</td>
			<td>이 름</td>
			<td>이메일</td>
			<td>전화번호</td>
			<td>내 용</td>
		</tr>
		<c:forEach var="each" items="${ masterFAQ }">
			<tr>
				<td>${ each.num }</td>
				<td>${ each.name }</td>
				<td>${ each.email }</td>
				<td>${ each.pNum }</td>
				<td>${ each.message }</td>
			</tr>
		</c:forEach>
	</table>
</div>


