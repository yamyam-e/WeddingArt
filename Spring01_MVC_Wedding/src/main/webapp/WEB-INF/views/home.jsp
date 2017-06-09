<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>WeddingArt</title>
	<meta name="description" content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="generator" content="Codeply">
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.1/animate.min.css"/>
	<link rel="stylesheet" href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
	<link rel="stylesheet" href="/wedding/resources/landingzero_334/css/styles.css" />
</head>
<body style="background-color: white;">

	<!-- 메뉴 -->
	<jsp:include page="menu.jsp" />

	<!-- 로그인 Modal -->
	<jsp:include page="login.jsp" />
	
	<!-- email 찾기 Modal -->
	<jsp:include page="findEmail.jsp"/>
	
	<!-- password 찾기 Modal -->
	<jsp:include page="findPw.jsp"/>

	<!-- 회원 본인 정보 -->
	<jsp:include page="myInfo.jsp" />

	<!-- 회원 본인 정보 인증-->
	<jsp:include page="myInfo_pw.jsp" />

	<!-- 회원가입 인증전 -->
	<jsp:include page="signUp.jsp" />

	<!-- 회원가입 인증후 -->
	<jsp:include page="afterSignUp.jsp" />

	<c:choose>
		<c:when test="${nowLogin != null or masterLogin != null}">
			<c:choose>
				<c:when test="${checkList != null or QandASelectAll != null or
								findCouple != null or gift_Food != null or gift_cart != null or
								gift_Kitchen != null or gift_Useful != null or gift_system != null or
								
								vender_weddingHall != null or vender_dress != null or
								vender_dress_weddingDress != null or vender_dress_miniDress != null or
								vender_dress_tuxedo != null or vender_dress_shoes != null or
								vender_florists != null or vender_florists_bouquet != null or
								vender_florists_decoration != null or regLifeElectronic != null or
								
								regDinningElectronic != null or regBeautyElectronic != null or
								regSmartElectronic != null or regGameElectronic != null or
								regDinningTool != null or regDinningFurniture != null or
								regSelectListCart != null or regManagerView != null or
								regSelectAllFriends != null or QandAInsertReply_one != null or
								
								masterPage != null or goInquire != null or checkArrSender != null or
								
								vender_studio != null or vender_makeup != null or
		                     	vender_cartList != null or  vender_system != null or
		                      	vender_system_studio != null or vender_system_makeup != null or
		                      	vender_system_florists != null}">
				</c:when>
				<c:otherwise>
					<header id="headVideo">
						<!-- 커플 & 비디오 -->
						<jsp:include page="coupleAndvideo.jsp" />
					</header>
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:when test="${ findCouple != null }">

		</c:when>
		<c:otherwise>
			<header id="headVideo">
				<!-- 커플 & 비디오 -->
				<jsp:include page="coupleAndvideo.jsp" />
			</header>
		</c:otherwise>
	</c:choose>

	<c:choose>
		<c:when test="${nowLogin != null or masterLogin != null}">
			<c:choose>
				<c:when test="${ vender_system != null or vender_system_studio != null or 
                       	 vender_system_makeup != null or vender_system_florists != null}">
	               <section id="vender">
	                  <jsp:include page="menu/vender/vender_system.jsp" />
	               </section>
	            </c:when>
				<c:when test="${ vender_cartList != null }">
	               <section id="vender">
	                  <jsp:include page="menu/vender/vender_CartList.jsp"/>
	               </section>
	            </c:when>
				<c:when test="${ vender_studio != null }">
	               <section id="vender">
	                  <jsp:include page="menu/vender/vender_studio.jsp" />
	               </section>
	            </c:when>
	            <c:when test="${ vender_makeup != null }">
	               <section id="vender">
	                  <jsp:include page="menu/vender/vender_makeup.jsp" />
	               </section>
	            </c:when>
				<c:when test="${gift_system != null }">
	               <section id="gift">
	                  <jsp:include page="menu/gift/gift_system.jsp" />
	               </section>
	            </c:when>
				<c:when test="${ gift_cart != null or checkArrSender != null }">
	               <section id="gift">
	                  <jsp:include page="menu/gift/gift_Cart.jsp"/>
	               </section>
	            </c:when>
				<c:when test="${ masterPage != null }">
					<section id="vender">
						<jsp:include page="masterPage.jsp"/>
					</section>
				</c:when>
				<c:when test="${ regManagerView != null }">
	               <section id="vender">
	                  <jsp:include page="menu/registry/manager/reg_Manager.jsp"/>
	               </section>
	            </c:when>
				<c:when test="${ regSelectListCart != null}">
	               <section id="vender">
	                  <jsp:include page="menu/registry/product/reg_Cart.jsp"/>
	               </section>
	            </c:when>
				<c:when test="${ regSelectAllFriends != null }">
					<section id="vender">
						<jsp:include page="menu/registry/friend/reg_Friends.jsp"/>
					</section>
				</c:when>
				<c:when test="${ regDinningFurniture != null }">
					<section id="vender">
						<jsp:include page="menu/registry/product/reg_Dinning_Furniture.jsp"/>
					</section>
				</c:when>
				<c:when test="${ regDinningTool != null }">
					<section id="vender">
						<jsp:include page="menu/registry/product/reg_Dinning_Tool.jsp"/>
					</section>
				</c:when>
				<c:when test="${ regGameElectronic != null }">
					<section id="vender">
						<jsp:include page="menu/registry/product/reg_Game_Electronic.jsp"/>
					</section>
				</c:when>
				<c:when test="${ regSmartElectronic != null }">
					<section id="vender">
						<jsp:include page="menu/registry/product/reg_Smart_Electronic.jsp"/>
					</section>
				</c:when>
				<c:when test="${ regBeautyElectronic != null }">
					<section id="vender">
						<jsp:include page="menu/registry/product/reg_Beauty_Electronic.jsp"/>
					</section>
				</c:when>
				<c:when test="${ regDinningElectronic != null }">
					<section id="vender">
						<jsp:include page="menu/registry/product/reg_Dinning_Electronic.jsp"/>
					</section>
				</c:when>
				<c:when test="${ regLifeElectronic != null }">
					<section id="vender">
						<jsp:include page="menu/registry/product/reg_Life_Electronic.jsp"/>
					</section>
				</c:when>
				<c:when test="${ vender_weddingHall != null or goInquire != null }">
					<section id="vender">
						<jsp:include page="menu/vender/vender_weddingHall.jsp"/>
					</section>
				</c:when>
				<c:when test="${ vender_dress != null or vender_dress_weddingDress != null or
								vender_dress_miniDress != null or vender_dress_tuxedo != null or
								vender_dress_shoes != null}">
					<section id="vender">
						<jsp:include page="menu/vender/vender_dress.jsp"/>
					</section>
				</c:when>
				<c:when test="${ vender_florists != null or 
								vender_florists_bouquet != null or
								vender_florists_decoration != null}">
					<section id="vender">
						<jsp:include page="menu/vender/vender_florists.jsp"/>
					</section>
				</c:when>
				<c:when test="${ gift_Food != null }">
					<section id="gift">
						<jsp:include page="menu/gift/gift_Food.jsp" />
					</section>
				</c:when>
				<c:when test="${ gift_Kitchen != null }">
					<section id="gift">
						<jsp:include page="menu/gift/gift_Kitchen.jsp" />
					</section>
				</c:when>
				<c:when test="${ gift_Useful != null }">
					<section id="gift">
						<jsp:include page="menu/gift/gift_Useful.jsp" />
					</section>
				</c:when>
				<c:when test="${ checkList != null }">
					<section id="checkList">
						<jsp:include page="menu/checkList/checkList.jsp" />
					</section>
				</c:when>
				<c:when test="${ QandASelectAll != null or QandAInsertOne != null or
								QandAInsertReply_one != null}">
					<section id="QandA">
						<jsp:include page="menu/QandA/QandASelectAll.jsp" />
					</section>
				</c:when>
				<c:when test="${ findCouple != null }">
					<section id="findCouple">
						<jsp:include page="menu/findCouple.jsp" />
					</section>
				</c:when>
				<c:otherwise>
					<section id="weddingGallery">
						<!-- 웨딩갤러리 -->
						<jsp:include page="weddingGallery.jsp" />
					</section>
					<c:choose>
						<c:when test="${ masterLogin != null }">
							<section id="last">
								<!-- 건의사항 -->
								<jsp:include page="FAQ_Master.jsp" />
							</section>
						</c:when>
						<c:otherwise>
							<section id="last">
								<!-- 건의사항 -->
								<jsp:include page="FAQ.jsp" />
							</section>
						</c:otherwise>
					</c:choose>
					
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>
			<c:choose>
				<c:when
					test="${checkList != null or QandASelectAll != null or
							gift_Food != null or gift_cart != null or gift_system != null or
							gift_Kitchen != null or gift_Useful != null or
							vender_weddingHall != null or vender_dress != null or
							vender_florists != null or regLifeElectronic != null or
							
							regDinningElectronic != null or regBeautyElectronic != null or
							regSmartElectronic != null or regGameElectronic != null or
							regDinningTool != null or regDinningFurniture != null or
							regSelectAllFriends != null or QandAInsertReply_one != null or
							regSelectListCart != null or regManagerView != null or
							
							masterPage != null or goInquire != null or checkArrSender != null or
							
							vender_studio != null or vender_makeup != null or
	                        vender_cartList != null or  vender_system != null or
	                        vender_system_studio != null or vender_system_makeup != null or
	                        vender_system_florists != null}">
		                        
					<script type="text/javascript">
						alert("로그인이 필요한 서비스 입니다.");
					</script>
					<section id="weddingGallery">
						<jsp:include page="weddingGallery.jsp" />
					</section>
					<section id="last">
						<!-- 건의사항 -->
						<jsp:include page="FAQ.jsp" />
					</section>
				</c:when>
				<c:when test="${ findCouple != null }">
					<section id="findCouple">
						<jsp:include page="menu/findCouple.jsp" />
					</section>
				</c:when>
				<c:otherwise>
					<section id="weddingGallery">
						<jsp:include page="weddingGallery.jsp" />
					</section>
					<section id="last">
						<!-- 건의사항 -->
						<jsp:include page="FAQ.jsp" />
					</section>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>

	<footer id="footer">

		<!-- 풋터 -->
		<jsp:include page="footer.jsp" />

	</footer>

	<!-- 기타 알람 -->
	<jsp:include page="exAlarm.jsp" />

	<!--scripts loaded here from cdn for performance -->

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
	<script src="/wedding/resources/landingzero_334/css/styles.css"></script>

	<c:choose>
		<c:when test="${ msg != null }">
			<script>
				alert("${msg}");
			</script>
		</c:when>
	</c:choose>
	<c:if test="${ QandAInsertOne != null }">
		<script type="text/javascript">
			location.href = "/wedding/QandASelectAll";
		</script>
	</c:if>
	<c:if test="${ QandAInsertReply_one != null }">
		<script type="text/javascript">
			$('#QandAInsertReplyPop').modal();
		</script>
	</c:if>
	<script type="text/javascript">
		function logout() {
			if (!confirm("정말 로그아웃 하시겠습니까?")) {
				return;
			}
			location.href = "/wedding/logout";
			alert("안녕히 가십시오~")
		}
	</script>
	<script type="text/javascript">
		$.urlParam = function(name) {
			var results = new RegExp('[\?&amp;]' + name + '=([^&amp;#]*)')
					.exec(window.location.href);
			return results[1] || 0;
		}

		if ($.urlParam('sign') == "ok") {
			$('#signAfterPop').modal();
		}
	</script>
	<c:choose>
		<c:when test="${ infoSign != null }">
			<script type="text/javascript">
				$('#myInfoPop').modal();
			</script>
		</c:when>
	</c:choose>

	<script type="text/javascript">
		function gomodal(num, type) {
			location.href = "/wedding/gift_Modal?num=" + num + "&type=" + type;
		}
	</script>
	<c:choose>
		<c:when test="${gDto != null }">
			<script type="text/javascript">
				$('#giftMyModal').modal();
			</script>
		</c:when>
	</c:choose>
	<script type="text/javascript">
		function govendermodal(num, type){
			location.href = "/wedding/vender_modal?num="+ num + "&type=" + type;
		}
	</script>
	<c:choose>
		<c:when test="${vdDto != null}">
			<script type="text/javascript">
				$('#exampleModal').modal();
			</script>
		</c:when>
	</c:choose>
	<script type="text/javascript">
		function govenderFmodal(num, type){
			location.href = "/wedding/vender_modal01?num="+ num + "&type=" + type;
		}
	</script>
	<c:choose>
		<c:when test="${vfDto != null}">
			<script type="text/javascript">
				$('#floristsModal').modal();
			</script>
		</c:when>
	</c:choose>
	
	<script type="text/javascript">
      function govenderSmodal(num){
         location.href = "/wedding/vender_studio_modal?num="+ num;
      }
   </script>
   <c:choose>
      <c:when test="${vsDto != null}">
         <script type="text/javascript">
            $('#studioModal').modal();
         </script>
      </c:when>
   </c:choose>
   <script type="text/javascript">
      function govenderMmodal(num){
         location.href = "/wedding/vender_makeup_modal?num="+ num;
      }
   </script>
   <c:choose>
      <c:when test="${vmDto != null}">
         <script type="text/javascript">
            $('#makeupModal').modal();
         </script>
      </c:when>
   </c:choose>
   
   <script type="text/javascript">
      function gift_cartDel(num) {
         if(!confirm("삭제하시겠습니까?")){
            return;
         }
         location.href = "/wedding/gift_cartDelete?num=" + num;
      }
   </script>
   
   <script type="text/javascript">
      function vender_cartDel(num) {
         if(!confirm("삭제하시겠습니까?")){
            return;
         }
         location.href = "/wedding/vender_cartDelete?num=" + num;
      }
   </script>
   <script type="text/javascript">
      function gift_payModal(num){
         location.href = "/wedding/gift_payCardModal?num=" + num;
      }
   </script>
   <c:choose>
      <c:when test="${gcDto02 != null or checkArrSender != null }">
         <script type="text/javascript">
             $('#payCardModal').modal(); 
          </script> -->
      </c:when>
   </c:choose>
   <script type="text/javascript">
      function giftSysMod(num){
         location.href = "/wedding/gift_SystemModModal?num="+num;
      }
   </script>
   <c:choose>
      <c:when test="${gDtoModal != null }">
         <script type="text/javascript">
            $('#giftSysModal').modal();
         </script>
      </c:when>
   </c:choose>
   <script type="text/javascript">
      function venderSysDMod(num){
         location.href = "/wedding/vender_SystemModDModal?num=" + num;
      }
   </script>
   <c:choose>
      <c:when test="${ vdDtoModal != null }">
         <script type="text/javascript">
            $('#venderSysDModal').modal();
         </script>
      </c:when>
   </c:choose>
   <script type="text/javascript">
      function venderSysFMod(num){
         location.href = "/wedding/vender_SystemModFModal?num=" + num;
      }
   </script>
   <c:choose>
      <c:when test="${ vfDtoModal != null }">
         <script type="text/javascript">
            $('#venderSysFModal').modal();
         </script>
      </c:when>
   </c:choose>
   <script type="text/javascript">
      function venderSysSMod(num){
         location.href = "/wedding/vender_SystemModSModal?num=" + num;
      }
   </script>
   <c:choose>
      <c:when test="${ vsDtoModal != null }">
         <script type="text/javascript">
            $('#venderSysSModal').modal();
         </script>
      </c:when>
   </c:choose>
   <script type="text/javascript">
      function venderSysMMod(num){
         location.href = "/wedding/vender_SystemModMModal?num="+num;
      }
   </script>
   <c:choose>
      <c:when test="${ vmDtoModal != null }">
         <script type="text/javascript">
            $('#venderSysMModal').modal();
         </script>
      </c:when>
   </c:choose>
   
   
   <script type="text/javascript">
      function gohomeurl(homeurl){
         location.href = homeurl;
      }
   </script>
	
	
	<c:choose>
		<c:when test="${FAQSend != null}">
			<script type="text/javascript">
				$('#alertModal').modal();
			</script>
		</c:when>
	</c:choose>
	
	<c:choose>
		<c:when test="${ goInquire != null }">
			<script type="text/javascript">
		        $('#inquireModal').modal();
		   </script>
		</c:when>
	</c:choose>
	
	<script type="text/javascript">
      function goInquire(){
         $('#inquireModal').modal();
      }
   </script>
   
	<script type="text/javascript">
      function gift_cartDel(num) {
         if(!confirm("삭제하시겠습니까?")){
            return;
         }
         location.href = "/wedding/gift_cartDelete?num=" + num;
      }
   </script>
   
   <script type="text/javascript">
      function gift_payModal(num){
         location.href = "/wedding/gift_payCardModal?num=" + num;
      }
   </script>
   <c:choose>
      <c:when test="${gcDto02 != null or checkArrSender != null }">
         <script type="text/javascript">
             $('#payCardModal').modal(); 
          </script>
      </c:when>
   </c:choose>
   
   <script type="text/javascript">
      function giftSysMod(num){
         location.href = "/wedding/gift_SystemModModal?num="+num;
      }
   </script>
   <c:choose>
      <c:when test="${gDtoModal != null }">
         <script type="text/javascript">
            $('#giftSysModal').modal();
         </script>
      </c:when>
   </c:choose>
   
   <script type="text/javascript">
		function regProductModal(num, category) {
			location.href = "/wedding/regProductModal?num=" + num + "&category=" + category;
		}
	</script>
	<c:choose>
		<c:when test="${regDTO != null }">
			<script type="text/javascript">
				$('#regProductModal').modal();
			</script>
		</c:when>
	</c:choose>
	
	<script type="text/javascript">
      	function regDeleteCart(num) {
         	if(!confirm("삭제하시겠습니까?")){
            	return;
        	 }
         	location.href = "/wedding/regDeleteCart?num=" + num;
     	 }
   	</script>
   	
   	<script type="text/javascript">
     	 function regPayCardModalOne(num){
        	 location.href = "/wedding/regPayCardModal?num=" + num;
     	 }
   	</script>
   	<c:choose>
	    <c:when test="${regcDTO != null}">
	    	<script type="text/javascript">
	             $('#payCardModal').modal(); 
	        </script>
	    </c:when>
   	</c:choose>
   	
   	<script type="text/javascript">
     	 function regPayCardModalOneForFriend(num, numOfMember){
        	 location.href = "/wedding/regPayCardModalForFriend?num=" + num + "&numOfMember=" + numOfMember;
     	 }
   	</script>
   	<c:choose>
	    <c:when test="${ regcDTOForFriend != null}">
	    	<script type="text/javascript">
	             $('#payCardModalForFriend').modal(); 
	        </script>
	    </c:when>
   	</c:choose>
   	
   	<script type="text/javascript">
     	 function regPayCardModalSome(){
        	 location.href = "/wedding/regPayCardModalSome";
     	 }
   	</script>
   	<c:choose>
	    <c:when test="${ regcDTOSome != null }">
	    	<script type="text/javascript">
	             $('#payCardModal').modal();  
	        </script>
	    </c:when>
	</c:choose>
   	
   	<script type="text/javascript">
   		function regPayCardModalSomeForFriend(num, numOfMember){
   			location.href = "/wedding/regPayCardModalForFriend?num="+ num + "&numOfMember=" + numOfMember;
	 	}
   	</script>
  	<c:choose>
	    <c:when test="${ numOfMember != null }">
	    	<script type="text/javascript">
	             $('#payCardModalForFriend').modal();  
	        </script>
	    </c:when>
   	</c:choose>
   	
   	<script type="text/javascript">
   		function regPayPointModalOne(num){
   			location.href= "/wedding/regPayPointModalOne?num="+num;
   		}
   	</script>
   	<c:choose>
	    <c:when test="${ regpDTO != null }">
	    	<script type="text/javascript">
	             $('#payPointModal').modal();  
	        </script>
	    </c:when>
   	</c:choose>
   	
   	<c:choose>
	    <c:when test="${ newFriend != null }">
	    	<script type="text/javascript">
	             $('#regFriendModalInsert').modal();  
	        </script>
	    </c:when>
   	</c:choose>
   	
   	<script type="text/javascript">
	   	function ModifyOneFriend(num){
			if(!confirm("수정 하시겠습니까?")){
				return;
			}
			location.href= "/wedding/regFriendModalMod?num="+num;
		}
   	</script>
   	<c:choose>
   		<c:when test="${ modFriend != null }">
   			<script type="text/javascript">
   				$('#regFriendModalMod').modal();
   			</script>
   		</c:when>
   	</c:choose>
   	
<!--    	<script type="text/javascript"> -->
//    		function regSysInsert(){
//    			location.href = "/wedding/regManagerModalInsert";
//    		}
<!--    	</script> -->
   	<c:choose>
		<c:when test="${regDTOModalInsert != null }">
			<script type="text/javascript">
				$('#regSysModalInsert').modal();
			</script>
		</c:when>
	</c:choose>
	
   	<script type="text/javascript">
   		function regSysMod(num){
   			location.href = "/wedding/regManagerModalMod?num=" + num;
   		}
   	</script>
   	<c:choose>
		<c:when test="${regDTOModalMod != null }">
			<script type="text/javascript">
				$('#regSysModalMod').modal();
			</script>
		</c:when>
	</c:choose>
   	
   	<script type="text/javascript">
   		function regSysDelete(num){
   			location.href = "/wedding/regManagerModalDelete?num=" + num;
   		}
   	</script>
   	<c:choose>
		<c:when test="${ regDTOModalDelete != null }">
			<script type="text/javascript">
				$('#regSysModalDelete').modal();
			</script>
		</c:when>
	</c:choose>
</body>
</html>