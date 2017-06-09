<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div align="center">
	<img alt="" src="/wedding/resources/gift/gift_back01.jpg" align="middle">
	<h2 style="color: DimGrey;" align="center" class="cursive">
		마음을 전하세요
		<img alt="" src="/wedding/resources/gift/gift_icon05.png">
	</h2>
</div>
<div class="col-sm-16"
	style="background-color: PeachPuff; height: 3px;"></div>

<div class="container">
	<div style="height: 40px;position: relative;top: 35px;">
		<form action="/wedding/giftSearch" class="form-inline">
			<div class="form-group">
				<label for="pwd" style="color: black;"><strong>검색 : </strong></label> 
				<input type="text" class="form-control" name="search" placeholder="검색어를 입력해주세요"> 
				<button type="submit" class="btn btn-info" style="background-color: PeachPuff; color: IndianRed;">
					<span class="glyphicon glyphicon-search"></span>검색
				</button>
				<input type="hidden" name="type" value="Food">
			</div>
		</form>
		<div class="dropdown" style="position: relative; bottom: 33px; left: 1040px;">
			<button class="btn btn-default dropdown-toggle" type="button"
				data-toggle="dropdown" style="color: black;">
				정렬순보기 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li class="dropdown-header">가격순 보기</li>
				<li><a href="/wedding/gift_selectListP01?type=Food">가격 오름차순</a></li>
				<li><a href="/wedding/gift_selectListP02?type=Food">가격 내림차순</a></li>
				<li class="divider"></li>
				<li class="dropdown-header">이름순 보기</li>
				<li><a href="/wedding/gift_selectListN01?type=Food">이름 오름차순</a></li>
				<li><a href="/wedding/gift_selectListN02?type=Food">이름 내림차순</a></li>
			</ul>
		</div>
	</div>
</div>

<br>
<br>

<div class="container">
	<div class="row">
		<c:forEach var="each" items="${ gift_Food }">
			<div class="col-md-4">
				<a href="" class="thumbnail" data-toggle="modal"
					data-target="#giftMyModal"
					onclick="javascript:gomodal('${each.num}','${each.type}')"> <img
					src="/wedding/resources/gift/Food/${ each.sysname }" alt="img"
					style="width: 200px; height: 200px;">
					<h4 style="color: DarkSlateGrey"align="center"><strong>${ each.name }</strong></h4>
					<h4 style="color: DimGray" align="center"><abbr title="World Health Organization">
						₩ ${ each.price }</abbr>
					</h4>
				</a>
			</div>
		</c:forEach>
	</div>
</div>

<jsp:include page="gift_Modal.jsp" />


