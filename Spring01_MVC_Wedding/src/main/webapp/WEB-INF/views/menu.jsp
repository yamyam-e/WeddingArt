<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav id="topNav" class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand page-scroll" href="/wedding/"
				style="color: black;"> WeddingArt</a>
		</div>
		<div class="navbar-collapse collapse" id="bs-navbar">
			<ul class="nav navbar-nav">
				<li><a class="cursive" href="" data-toggle="dropdown"
					style="color: black;">Gift<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/wedding/gift_Food">식품</a></li>
						<li><a href="/wedding/gift_Kitchen">주방용품</a></li>
						<li><a href="/wedding/gift_Useful">실용품</a></li>
						<li role="separator" class="divider"></li>
	                    <li><a href="/wedding/gift_Cart">장바구니</a></li>
	                    <c:if test="${ masterLogin != null }">
	                    	<li role="separator" class="divider"></li>
	                    	<li><a href="/wedding/gift_System">gift 관리</a></li>
	                    </c:if>
					</ul></li>
					
				<li><a class="cursive" href="" data-toggle="dropdown"
					style="color: black;">Registry<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/wedding/regLifeElectronic">생활가전</a></li>
						<li><a href="/wedding/regDinningElectronic">주방가전</a></li>
						<li><a href="/wedding/regBeautyElectronic">뷰티가전</a></li>
						<li><a href="/wedding/regSmartElectronic">스마트가전</a></li>
						<li><a href="/wedding/regGameElectronic">게임가전</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="/wedding/regDinningTool">주방기구</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="/wedding/regDinningFurniture">주방가구</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="/wedding/regSelectListCart">레지스트리 품목 보기</a></li>
						<li><a href="/wedding/regSelectAllFriends">레지스트리 친구 보기</a></li>
						<c:if test="${ masterLogin != null }">
							<li><a href="/wedding/regManagerView">레지스트리 관리</a></li>
						</c:if>
					</ul></li>
				
				<li><a class="cursive" href="/wedding/checkList" style="color: black;">CheckList</a>
				</li>
				<li class="dropdown2"><a href="" class="cursive" data-toggle="dropdown"
					style="color: black;">Vender<span class="caret"></span></a>
					<ul class="dropdown-menu">
	                  <li><a href="/wedding/vender_weddingHall">예식장</a></li>
	                  <li role="separator" class="divider"></li>
	                  <li><a href="/wedding/vender_studio">스튜디오</a></li>
	                  <li><a href="/wedding/vender_dress">드레스</a></li>
	                  <li><a href="/wedding/vender_makeup">메이크업</a></li>
	                  <li role="separator" class="divider"></li>
	                  <li><a href="/wedding/vender_florists">플로리스트</a></li>
	                  <li role="separator" class="divider"></li>
	                  <li><a href="/wedding/vender_CartList">등록리스트</a></li>
	                  <c:if test="${ masterLogin != null }">
	                  	<li role="separator" class="divider"></li>
	                  	<li><a href="/wedding/vender_System">vender 관리</a></li>
	                  </c:if>
	               </ul></li>
				<li><a class="cursive" href="/wedding/QandASelectAll" style="color: black;">Q&A</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="" style="color: black; font-size: 10px;"
					data-toggle="modal" data-target="#Find_Email_Pop">Find Email</a></li>
				<li><a href="" style="color: black; font-size: 10px;"
					data-toggle="modal" data-target="#Find_Pw_Pop">Find Password</a></li>
				<c:choose>
					<c:when test="${ nowLogin != null or masterLogin != null}">
					<c:if test="${ masterLogin != null }">
						<li>
							<a class="cursive" href="/wedding/masterPage" style="color: black;">
							<span class="glyphicon glyphicon-user"></span>MemberList</a>
						</li>
					</c:if>
						<li><a href="javascript:logout();" class="cursive"
							data-toggle="modal" data-target="" style="color: black;"><span
								class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					<c:if test="${ masterLogin == null }">
						<li><a href="" class="cursive" data-toggle="modal"
							data-target="#myInfo_pw_Pop" style="color: black;"><span
								class="glyphicon glyphicon-info-sign"></span> MyInfo</a></li>
					</c:if>
					</c:when>
					<c:otherwise>
						
						<li><a href="" class="cursive" data-toggle="modal"
							data-target="#loginPop" style="color: black;"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
						<li><a href="" class="cursive" data-toggle="modal"
							data-target="#signPop" style="color: black;"><span
								class="glyphicon glyphicon-user"></span> SignUp</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>
<div style="height: 50px; background-color: white;"></div>

