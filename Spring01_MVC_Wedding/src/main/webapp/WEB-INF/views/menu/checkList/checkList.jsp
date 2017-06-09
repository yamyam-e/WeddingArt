<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
   <div align="center">
      <img alt="" src="/wedding/resources/checkList_gallery/checkBack.jpg"
         align="middle">
   </div>
   <h2 style="color: black;">Wedding CheckList</h2>
   <blockquote>
      <p>
         <img alt=""
            src="/wedding/resources/checkList_gallery/checkList_icon02.png">
         현재까지의 결혼진행과정을 체크해주세요!
      </p>
   </blockquote>
   <form name="frm">
      <table>
         <div class="list-group">
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox">
                     <input type="checkbox" value="val1" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val1' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >1.상견례
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val2" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val2' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >2.예식장 예약
               </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val3" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val3' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >3.신혼여행 예약
                  </label>
               </a>
            </div>

            <div class="list-group-item">
               <div class="panel-heading">
                  <h4 class="panel-title">
                     <a data-toggle="collapse" href="#collapse1" style="color: black;">
                        &nbsp;&nbsp;4. 스튜디오
                        <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
                     </a>
                  </h4>
               </div>

               <div id="collapse1" class="panel-collapse collapse">
                  <ul class="list-group">
                     <li class="list-group-item">
                        <a href="#" class="checkbox">
                           <label style="color: black;" class="checkbox"> 
                              <input type="checkbox" value="val4" name="cklist" id="cklist"
                                 <c:forEach items="${data}" var="each">
                                    <c:if test="${ each == 'val4' }">
                                       checked="checked"
                                    </c:if>
                                 </c:forEach>
                              > 4-1. 스튜디오 예약
                           </label>
                        </a>
                     </li>
                     <li class="list-group-item">
                        <a href="#" class="checkbox">
                           <label style="color: black;" class="checkbox"> 
                              <input type="checkbox" value="val5" name="cklist" id="cklist"
                                 <c:forEach items="${data}" var="each">
                                    <c:if test="${ each == 'val5' }">
                                       checked="checked"
                                    </c:if>
                                 </c:forEach> 
                              > 4-2. 스튜디오 촬영
                           </label>
                        </a>
                     </li>
                     <li class="list-group-item">
                        <a href="#" class="checkbox">
                           <label style="color: black;" class="checkbox"> 
                              <input type="checkbox" value="val6" name="cklist" id="cklist"
                                 <c:forEach items="${data}" var="each">
                                    <c:if test="${ each == 'val6' }">
                                       checked="checked"
                                    </c:if>
                                 </c:forEach>
                              > 4-3. 사진셀렉
                           </label>
                        </a>
                     </li>
                  </ul>
               </div>
            </div>

            <div class="list-group-item">
               <div class="panel-heading">
                  <h4 class="panel-title">
                     <a data-toggle="collapse" href="#collapse2" style="color: black;">
                        &nbsp;&nbsp;5. 드레스
                        <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
                     </a>
                  </h4>
               </div>

               <div id="collapse2" class="panel-collapse collapse">
                  <ul class="list-group">
                     <li class="list-group-item">
                        <a href="#" class="checkbox">
                           <label style="color: black;" class="checkbox"> 
                              <input type="checkbox" value="val7" name="cklist" id="cklist"
                                 <c:forEach items="${data}" var="each">
                                    <c:if test="${ each == 'val7' }">
                                       checked="checked"
                                    </c:if>
                                 </c:forEach>
                              > 5-1. 웨딩드레스 및 턱시도 예약
                           </label>
                        </a>
                     </li>
                     <li class="list-group-item">
                        <a href="#" class="checkbox">
                           <label style="color: black;" class="checkbox"> 
                              <input type="checkbox" value="val8" name="cklist" id="cklist"
                                 <c:forEach items="${data}" var="each">
                                    <c:if test="${ each == 'val8' }">
                                       checked="checked"
                                    </c:if>
                                 </c:forEach>
                              > 5-2. 드레스 투어
                           </label>
                        </a>
                     </li>
                     <li class="list-group-item">
                        <a href="#" class="checkbox">
                           <label style="color: black;" class="checkbox"> 
                              <input type="checkbox" value="val9" name="cklist" id="cklist"
                                 <c:forEach items="${data}" var="each">
                                    <c:if test="${ each == 'val9' }">
                                       checked="checked"
                                    </c:if>
                                 </c:forEach>
                              > 5-3. 웨딩드레스&턱시도 가봉
                           </label>
                        </a>
                     </li>
                  </ul>
               </div>
            </div>

            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val10" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val10' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >6.헤어, 메이크업 예약
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val11" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val11' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >7.예단 리스트 작성
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val12" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val12' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >8.한복맞춤
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val13" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val13' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >9.예물맞춤
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val14" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val14' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >10.혼수가전, 가구, 주방, 침구, 인테리어 준비
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val15" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val15' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >11.주례 섭외, 축가 섭외
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;"class="checkbox"> 
                     <input type="checkbox" value="val16" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val16' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >12.사회사, 예식당일 도우미 선정
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val17" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val17' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >13.청첩장 주문 빛 발송 손님 체크
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val18" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val18' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >14.하객수 점검
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val19" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val19' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >15.하객 답례품 준비
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val20" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val20' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >16.폐백, 이바지 음식준비
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;"class="checkbox"> 
                     <input type="checkbox" value="val21" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val21' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >17.피로연 준비
                  </label>
               </a>
            </div>
            <div class="list-group-item">
               <a href="#" class="checkbox"> 
                  <label style="color: black;" class="checkbox"> 
                     <input type="checkbox" value="val22" name="cklist" id="cklist"
                        <c:forEach items="${data}" var="each">
                           <c:if test="${ each == 'val22' }">
                              checked="checked"
                           </c:if>
                        </c:forEach>
                     >18.신혼집 계약
                  </label>
               </a>
            </div>
            <hr>
            <div align="center">
               <button class="btn btn-info" type="submit" onclick="javascript:goCheckList()" style="background-color: Wheat;color: Teal">
                  <img alt=""
                     src="/wedding/resources/checkList_gallery/checkList_icon04.png">
                  저장하기
               </button>
               &nbsp;&nbsp;
               <button class="btn btn-info" onclick="javascript:goCheckList()" style="background-color: Wheat;color: Teal">
                  <img alt=""
                     src="/wedding/resources/checkList_gallery/checkList_icon03.png">
                  추가
               </button>
            </div>
         </div>
      </table>
   </form>
   
   <h3 style="color: black;" class="text-warning">현재 ${name} 님의 진행 현황</h3>
   <p class="text-warning" style="font-size: 50">
      <img alt=""
         src="/wedding/resources/checkList_gallery/checkList_icon05.png">
      현재 ${name} 님의 진행 현황
   </p>
   <div class="progress" style="height: 30px;">
      <div class="progress progress-striped active" style="height: 30px;">
         <div class="progress-bar" style="width: ${ checkTemp }%; height: 30px;font-size: 30px;">
            <span class="sr-only">60% Complete</span>
               ${ checkTemp }%
         </div>
      </div>
   </div>
   <hr>
</div>

<script type="text/javascript">
   function goCheckList(){
      
      var checkArr = [];
      
         $("input:checkbox[name=cklist]:checked").each(function(){
            checkArr.push($(this).val());
         });
         var chk = checkArr.toString();
         var bbb = document.frm;
         bbb.action = "/wedding/CheckList_Update?checkArr="+chk;
         bbb.submit();
   }
</script>
