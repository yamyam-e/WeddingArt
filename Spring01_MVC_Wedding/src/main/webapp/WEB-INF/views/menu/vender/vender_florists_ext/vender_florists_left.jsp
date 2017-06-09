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
                <li class="active">
                	<h3 style="color: black;">
					<span class="glyphicons glyphicons-notes-2">
						Product
					</span>
					</h3>
				</li>
                <li   
                   	<c:if test="${vender_florists_bouquet != null or vender_florists != null }">
                  		class = "active"
               		</c:if>
            	>
                	<a href="/wedding/vender_florists_bouquet" class="list-group-item">
	            		<img alt="" src="/wedding/resources/vender_gallery/vender_florists_icon01.png"> 
	            		<strong>웨딩부케</strong>
	            		<span class="badge" style="background-color: LightSteelBlue; color: Azure;">21</span>
	        		</a>
                </li>
				<li
					<c:if test="${vender_florists_decoration != null }">
                  		class = "active"
               		</c:if>
               	>
					<a href="/wedding/vender_florists_decoration"
					class="list-group-item"> <img alt=""
						src="/wedding/resources/vender_gallery/vender_florists_icon02.png">
						<strong>웨딩 악세서리</strong> 
						<span class="badge" style="background-color: LightSteelBlue; color: Azure;">10</span>
				</a>
				</li>

			</ul>
        </div>
    </div>
</body>
</html>






