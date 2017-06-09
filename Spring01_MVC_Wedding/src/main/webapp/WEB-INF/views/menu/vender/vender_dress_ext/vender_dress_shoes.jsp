<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<body style="color: black;">
	<jsp:include
		page="/WEB-INF/views/menu/vender/vender_dress_ext/vender_dress_modal.jsp" />
	<h2 style="color: black;">Wedding Shoes</h2>
	<div align="right" style="height: 25px;">
		<a href="/wedding/vender_dress_shoes">
			<abbr title="World Health Organization">처음 보기</abbr>
		</a>&nbsp;&nbsp;
		<a href="/wedding/vender_dress_shoes_selectName">
			<abbr title="World Health Organization">이름순 보기</abbr>
		</a>&nbsp;&nbsp;
		<a href="/wedding/vender_dress_shoes_selectPrice">
			<abbr title="World Health Organization">가격순 보기</abbr>
		</a>
	</div>
	<div style="background-color: white;">
		<div class="row">
			<c:forEach var="each" items="${ vender_dress_shoes }">
				<div class="col-md-4">
					<a href="" class="thumbnail" data-toggle="modal" data-target="#exampleModal" 
						onclick="javascript:govendermodal('${each.num}','${each.type}')">
						<img src="/wedding/resources/vender_gallery/vender_dress_gallery/${ each.orgname }" alt="Pulpit Rock" 
						style="width: 250px; height: 350px">
							<h4 style="color: DarkSlateGrey"><strong>${ each.name }</strong></h4>
							<h5 style="color: DimGray"><abbr title="World Health Organization">₩ ${ each.price }</abbr></h5>
							<button type="button" class="btn btn-warning01" style="position: relative; right: 50px;">
								<span class="glyphicon glyphicon-edit"></span> 업체문의
							</button>
							<a href="${ each.homeurl }" class="btn btn-warning01" style="position: relative;left: 50px; bottom: 56px;">
								<span class="glyphicon glyphicon-share"></span>	업체보기
							</a>	
					</a>
				</div>
			</c:forEach>
		</div>
	</div>

