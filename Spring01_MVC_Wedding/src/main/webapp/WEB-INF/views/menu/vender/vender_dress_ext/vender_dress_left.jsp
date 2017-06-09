<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8"> <title>Insert title here</title>
   <style type="text/css">
    /* Custom Styles */
    ul.nav-tabs{
        width: 190px;
        margin-top: 40px;
        border-radius: 4px;
        border: 1px solid #ddd;
        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
    }
    ul.nav-tabs li{
        margin: 0;
        border-top: 1px solid #ddd;
    }
    ul.nav-tabs li:first-child{
        border-top: none;
    }
    ul.nav-tabs li a{
        margin: 0;
        padding: 8px 16px;
        border-radius: 0;
    }
    ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover{
        color: #fff;
        background: #0088cc;
        border: 1px solid #0088cc;
    }
    ul.nav-tabs li:first-child a{
        border-radius: 4px 4px 0 0;
    }
    ul.nav-tabs li:last-child a{
        border-radius: 0 0 4px 4px;
    }
    ul.nav-tabs.affix{
        top: 70px; /* Set the top position of pinned element */
    }
   </style>
</head>
<body data-spy="scroll" data-target="#myScrollspy">
   <div style="background-color:white; height: 100%">
   
      <div class="col-xs-15" id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="195">
                <li>
                   <h3 style="color: black;">
               <span class="glyphicons glyphicons-notes-2">
                  Product
               </span>
               </h3>
            </li>
            
            <li   
                   <c:if test="${vender_dress != null or vender_dress_weddingDress != null }">
                  class = "active"
               </c:if>
            >
                   <a href="/wedding/vender_dress_weddingDress" class="list-group-item" 
                      id="weddingDressleft" onclick="javascript:active()">
                     <img alt="" src="/wedding/resources/vender_gallery/vender_dress_icon01.png"> 
                     <strong>Wedding Dress</strong> 
                     <span class="badge" style="background-color: LightSteelBlue; color: Azure;">12</span>
                 </a>
                </li>
            <li   
                   <c:if test="${vender_dress_miniDress != null }">
                  class = "active"
               </c:if>
            >
               <a href="/wedding/vender_dress_miniDress" class="list-group-item" 
                  id="miniDressleft" onclick="javascript:active()">
                  <img alt="" src="/wedding/resources/vender_gallery/vender_dress_icon01.png">
                  <strong>Mini Dress</strong>
                  <span class="badge" style="background-color: LightSteelBlue; color: Azure;">12</span> 
               </a>
            </li>
            <li   
                   <c:if test="${vender_dress_tuxedo != null }">
                  class = "active"
               </c:if>
            >
               <a href="/wedding/vender_dress_tuxedo" class="list-group-item" 
                  id="tuxedoleft" onclick="javascript:active()">
                  <img alt="" src="/wedding/resources/vender_gallery/vender_dress_icon02.png">
                  <strong>Tuxedo</strong>
                  <span class="badge" style="background-color: LightSteelBlue; color: Azure;">6</span> 
               </a>
            </li>
            <li   
                   <c:if test="${vender_dress_shoes != null }">
                  class = "active"
               </c:if>
            >
               <a href="/wedding/vender_dress_shoes" class="list-group-item" 
                  id="shoesleft" onclick="javascript:active()"> 
                  <img alt="" src="/wedding/resources/vender_gallery/vender_dress_icon03.png">
                  <strong>Wedding shoes<strong>
                  <span class="badge" style="background-color: LightSteelBlue; color: Azure;">8</span> 
               </a>
            </li>
         </ul>
        </div>
   
    </div>
</body>
</html>
