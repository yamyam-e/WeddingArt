<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body style="color: black;">
	<jsp:include page="/WEB-INF/views/menu/vender/vender_florists_ext/vender_florists_modal.jsp"/>
	<h2 style="color: black;">웨딩 부케</h2>
	<div align="right" style="height: 25px;">
		<a href="/wedding/vender_florists">
			<abbr title="World Health Organization">처음 보기</abbr>
		</a>&nbsp;&nbsp;
		<a href="/wedding/vender_florists_selectName">
			<abbr title="World Health Organization">이름순 보기</abbr>
		</a>&nbsp;&nbsp;
		<a href="/wedding/vender_florists_selectPrice">
			<abbr title="World Health Organization">가격순 보기</abbr>
		</a>
	</div>
	<div style="background-color: white;">
		<div class="row">
			<c:choose>
				<c:when test="${ vender_florists != null }">
					<c:forEach var="each" items="${ vender_florists }">
						<div class="col-md-4">
							<a href="" class="thumbnail" data-toggle="modal" data-target="#exampleModal" 
								onclick="javascript:govenderFmodal('${each.num}','${each.type}')">
								<img src="/wedding/resources/vender_gallery/vender_florists_gallery/${ each.orgname }" alt="Pulpit Rock" 
								style="width: 200px; height: 200px">
									<h4 style="color: DarkSlateGrey"><strong>${ each.name }</strong></h4>
									<h5 style="color: DimGray"><abbr title="World Health Organization">₩ ${ each.price }</abbr></h5>
									<button type="button" class="btn btn-warning01" style="position: relative; right: 50px;">
										<span class="glyphicon glyphicon-edit"></span> 업체문의
									</button>
									<a href="${ each.homeurl }" class="btn btn-warning01" style="position: relative;left: 50px; bottom: 56px;">
										<span class="glyphicon glyphicon-share"></span>	
										업체보기
									</a>
							</a>
						</div>
					</c:forEach>
				</c:when>
				<c:when test="${ vender_florists_bouquet != null }">
					<c:forEach var="each" items="${ vender_florists_bouquet }">
						<div class="col-md-4">
							<a href="" class="thumbnail" data-toggle="modal" data-target="#exampleModal" 
								onclick="javascript:govenderFmodal('${each.num}','${each.type}')">
								<img src="/wedding/resources/vender_gallery/vender_florists_gallery/${ each.orgname }" alt="Pulpit Rock" 
								style="width: 200px; height: 200px">
									<h4 style="color: DarkSlateGrey"><strong>${ each.name }</strong></h4>
									<h5 style="color: DimGray"><abbr title="World Health Organization">₩ ${ each.price }</abbr></h5>
									<button type="button" class="btn btn-warning01" style="position: relative; right: 50px;">
										<span class="glyphicon glyphicon-edit"></span> 업체문의
									</button>
									<a href="${ each.homeurl }" class="btn btn-warning01" style="position: relative;left: 50px; bottom: 56px;">
										<span class="glyphicon glyphicon-share"></span>	
										업체보기
									</a>
							</a>
						</div>
					</c:forEach>
				</c:when>
			</c:choose>
		</div>
	</div>
	
