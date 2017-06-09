<%@page import="spring.mvc.wedding.dto.RegistryFriendsDTO"%>
<%@page import="spring.mvc.wedding.dto.RegistryProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<jsp:include page="/WEB-INF/views/menu/registry/friend/reg_Friend_Modal_Insert.jsp"/>
	<jsp:include page="/WEB-INF/views/menu/registry/friend/reg_Friend_Modal_Mod.jsp"/>
	<div class="container">
		<div style="text-align: center">
			<img alt="image"
				src="/wedding/resources/regProduct_gallery/regFriends.png"
				style="size: width:1800px; height: 100px">
		</div>
		<div class="col-sm-16" style="background-color: FloralWhite; height: 3px;"></div>
		<h3>
			<a href="/wedding/regFriendModalInsert"  type="button" class="btn btn-info">
				<span class="glyphicon glyphicon-plus"></span> 새친구 추가
			</a>
			<a href="/wedding/regSendMailtoAllFriends" type="button" class="btn btn-info">
				<span class="glyphicon glyphicon-send"></span> 전체 이메일 발송
			</a>
		</h3>

		<div class="datagrid">

			<table class="table table-hover">
				<thead style="background-color: AliceBlue">
					<tr style="color: black;">
						<th>이름</th>
						<th>이메일</th>
						<th>전화번호</th>
						<th>수정/삭제</th>
					</tr>
				</thead>
				<tfoot style="color: DimGray;">
					<tr><td colspan="4"></td></tr>
				</tfoot>
				<tbody style="color: navy;">
					<c:choose>
						<c:when test="${ !empty regSelectAllFriends }">
							<c:forEach var="each" items="${ regSelectAllFriends }">
								<tr>
									<td>${ each.fName }</td>
									<td>${ each.fEmail }</td>
									<td>${ each.fPhone }</td>
									<td>
										<a href="javascript:ModifyOneFriend(${ each.num });" class="btn btn-xs btn-info">
										<span class="glyphicon glyphicon-wrench"></span> 수정
										</a>
										<a href="javascript:deleteOneFriend(${ each.num });" class="btn btn-xs btn-info">
										<span class="glyphicon glyphicon-trash"></span> 삭제
										</a>
									</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4">저장된 정보가 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>

		</div>
	</div>

<script type="text/javascript">
	
	function deleteOneFriend(num){
		if(!confirm("삭제 하시겠습니까?")){
			return;
		}
		location.href = "/wedding/regDeleteOneFriend?num="+num;
	}
	
    function autoHypenPhone(str){
        str = str.replace(/[^0-9]/g, '');
        var tmp = '';
        if( str.length < 4){
            return str;
        }else if(str.length < 7){
            tmp += str.substr(0, 3);
            tmp += '-';
            tmp += str.substr(3);
            return tmp;
        }else if(str.length < 11){
            tmp += str.substr(0, 3);
            tmp += '-';
            tmp += str.substr(3, 3);
            tmp += '-';
            tmp += str.substr(6);
            return tmp;
        }else{              
            tmp += str.substr(0, 3);
            tmp += '-';
            tmp += str.substr(3, 4);
            tmp += '-';
            tmp += str.substr(7);
            return tmp;
        }
        return str;
    }

	var cellPhone = document.getElementById('newfPhone');
	newfPhone.onkeyup = function(event){
	    event = event || window.event;
	    var _val = this.value.trim();
	    this.value = autoHypenPhone(_val) ;
	}
</script>
