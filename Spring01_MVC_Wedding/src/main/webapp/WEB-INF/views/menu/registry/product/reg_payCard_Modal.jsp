<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		.mydatagrid table {
			border-collapse: collapse;
			text-align: left;
			width: 100%;
		}
		
		.mydatagrid {
			font: normal 12px/150% Arial, Helvetica, sans-serif;
			background: #fff;
			overflow: hidden;
			border: 1px solid #F4DA9C;
			-webkit-border-radius: 3px;
			-moz-border-radius: 3px;
			border-radius: 3px;
		}
		
		.mydatagrid table td, .datagrid table th {
			padding: 3px 10px;
		}
		
		.mydatagrid table tbody td {
			color: #000000;
			border-left: 1px solid #F4DA9C;
			font-size: 12px;
			font-weight: normal;
		}
		
		.mydatagrid table tbody input {
			border: 1px solid #F4DA9C;
			-webkit-border-radius: 3px;
			-moz-border-radius: 3px;
			border-radius: 3px;
		}
		
		.mydatagrid table tbody td:first-child {
			border-left: none;
		}
		
		.mydatagrid table tbody tr:last-child {
 			border-top: 1px solid #F4DA9C;
		}
		
</style>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<body>
<div class="modal fade" id="payCardModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header" align="center" style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg')">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			<h4 class="modal-title" style="color: DimGray;">
				<strong>결제</strong> 
			</h4>
        </div>
        <div class="modal-body">
          <form action="/wedding/regPayCard" method="post">
			
			<div class="mydatagrid">
				<table>
					<tbody>
						<tr>
							<td>결재금액</td>
							<td>
								<c:choose>
									<c:when test="${ regcDTO != null }">
										<input type="hidden" name="payStyle" value="one"/>
										<input type="text" name="payment"
											onchange="getNumber(this);" 
											onkeyup="getNumber(this);" 
											style="text-align:right;" size="10" value="${regcDTO.total }">원
										<input type="hidden" name="name" value="${ regcDTO.name }">
										<input type="hidden" name="quantity" value="${ regcDTO.buyquantity }">
										<input type="hidden" name="category" value="gift_${ regcDTO.category }">
										<input type="hidden" name="num" value="${ regcDTO.num }">
									</c:when>
									<c:otherwise>
										<input type="hidden" name="payStyle" value="some"/>
										<input type="text" name="payment"
											onchange="getNumber(this);" 
											onkeyup="getNumber(this);" 
											style="text-align:right;" size="10">원
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
						<tr>
							<td>카드번호</td>
							<td>
								<input type="text" name="cardNum1" pattern="[1-9]{1} *[0-9]{3}" required="required" maxlength="4" size="4"/>
								<input type="text" name="cardNum2" pattern="[0-9]{4}" required="required" maxlength="4" size="4"/>
								<input type="password" name="cardNum3" pattern="[0-9]{4}" required="required" maxlength="4" size="4"/>
								<input type="password" name="cardNum4" pattern="[0-9]{4}" required="required" maxlength="4" size="4"/>
							</td>
						</tr>
						<tr>
							<td>유효기간</td>
							<td>
								<select id="month" name="month" required="required">
									<option selected="selected">월</option>
									<c:forEach var="i" begin="1" end="12" step="1">
										<option value="${i}">${i}</option>
									</c:forEach>
								</select>
								/
								<select id="year" name="year" required="required">
									<option selected="selected">년도</option>
									<c:forEach var="i" begin="2016" end="2030" step="1">
										<option value="${i}">${i}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td>비빌번호</td>
							<td>
								<input type="password" name="pw" pattern="[0-9]{2}" required="required" maxlength="2" size="2"/>**
							</td>
						</tr>
						<tr>
							<td>CVS코드</td>
							<td>
								<input type="password" name="cvs" pattern="[0-9]{3}" required="required" maxlength="3" size="3"/>
								카드뒷면에 있는 마지막 3자리 숫자를 입력하세요.
							</td>
						</tr>
						<tr>
							
							<td>카드소유자</td>
							<td>
								<input type="text" name="cardHolder" pattern="[a-zA-Z]+" required="required" size="20"/>
							</td>
						</tr>
						<tr>
							<td>핸드폰</td>
							<td>
								<input type="text" name="phone" id="phone" required="required" maxlength="13" size="20"/>
							</td>
						</tr>
						<tr>
							<td>우편번호</td>
							<td>
								<input type="text" name="postNum" id="postcode" pattern="[0-9]{5}" required="required" maxlength="5" size="4"/>
								<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" style="background-color: #F4DA9C">
							</td>
						</tr>
						<tr>
							<td>도로명주소1</td>
							<td>
								<input type="text" name="address1" id="roadAddress" required="required" size="60"/>
							</td>
						</tr>
						<tr>
							<td>지번주소2</td>
							<td>
								<input type="text" name="address2" id="jibunAddres" required="required" size="60"/>
							</td>
						</tr>
						<tr>
							<td>건물번호/아파트동호수</td>
							<td>
								<input type="text" name="dongho" required="required"/>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							
								<button type="submit" class="btn btn-warning" style="background-color: BurlyWood">
		   	 						<img alt="" src="/wedding/resources/gift/gift_icon07.png">
		   	 						결제
		   	 					</button>
				
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
        </div>
        <div class="modal-footer" style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg')">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
</div>


</body>
	<script type="text/javascript">
	  //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('roadAddress').value = fullRoadAddr;
                document.getElementById('jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
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

	var cellPhone = document.getElementById('phone');
	phone.onkeyup = function(event){
	    event = event || window.event;
	    var _val = this.value.trim();
	    this.value = autoHypenPhone(_val) ;
	}
	
	var rgx1 = /\D/g;  // /[^0-9]/g 와 같은 표현
	var rgx2 = /(\d+)(\d{3})/; 

	function getNumber(obj){
	     var num01;
	     var num02;
	     num01 = obj.value;
	     num02 = num01.replace(rgx1,"");
	     num01 = setComma(num02);
	     obj.value =  num01;
	}

	function setComma(inNum){
	     var outNum;
	     outNum = inNum; 
	     while (rgx2.test(outNum)) {
	          outNum = outNum.replace(rgx2, '$1' + ',' + '$2');
	      }
	     return outNum;
	}
	</script>






