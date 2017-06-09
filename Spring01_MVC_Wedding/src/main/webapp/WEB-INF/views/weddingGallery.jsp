<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container" style="text-align: center;">
	<h2 style="color: black;">Wedding Gallery</h2>
	<div class="row" style="padding-top: 50px;">
		<c:forEach var="each" items="${ listc }">
			<div class="col-md-4">
			<a class="thumbnail">
				<p align="center">${ each.cName }</p>
				<!-- Trigger the Modal -->
				<img id="myImg${ each.num }" src="/wedding/resources/gallery/${ each.sysName }"
					alt="${ each.cName }" style="width: 300px; height: 200px">
			</a>
			
			<!-- The Modal -->
			<div id="myModal" class="modal-gallery">

				<!-- The Close Button -->
				<span class="close-gallery"
					onclick="document.getElementById('myModal').style.display='none'">&times;</span>

				<!-- Modal Content (The Image) -->
				<img class="modal-content-gallery" id="img">

				<!-- Modal Caption (Image Text) -->
				<div id="caption-gallery"></div>
			</div>

			<!-- The Modal -->
			<div id="myModal" class="modal-gallery">

				The Close Button <span class="close-gallery"
					onclick="document.getElementById('myModal').style.display='none'">&times;</span>

				Modal Content (The Image) <img class="modal-content-gallery" id="img">

				Modal Caption (Image Text)
				<div id="caption-gallery"></div>
			</div>
		</div>

		<script type="text/javascript">
		
		var num = "<c:out value="${each.num}" />";
		
		// Get the modal
		var modal = document.getElementById('myModal');
	
		// Get the image and insert it inside the modal - use its "alt" text as a caption
		var img = document.getElementById('myImg'+num);
		
		var modalImg = document.getElementById("img");
		
		var captionText = document.getElementById("caption-gallery");
		img.onclick = function(){
		    modal.style.display = "block";
		    modalImg.src = this.src;
		    captionText.innerHTML = this.alt;
		}
	
		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close-gallery")[0];
	
		// When the user clicks on <span> (x), close the modal
		span.onclick = function() { 
		  modal.style.display = "none";
		}
		</script>
		</c:forEach>
		<table style="width: 100%; text-align: center;">
			<tr>
				<td>
				<ul class="pagination">
					<c:if test="${ galleryPageDto.showPageNumberBegin != 1 }">
						<li><a href="?nowPage=1">◀◀</a></li> &nbsp; 
						<li><a href="?nowPage=${ galleryPageDto.nowPage - 1 }">◀</a></li>
					</c:if>
					<c:forEach var="k" begin="${ galleryPageDto.showPageNumberBegin }" 
							end = "${ galleryPageDto.showPageNumberEnd }"
							step="1"> 
		 					<c:choose> 
		 						<c:when test="${ galleryPageDto.nowPage == k }"> 
		 							 <li><a class="active">${ k }</a></li> 
		 						</c:when> 
		 						<c:otherwise> 
		 							<li><a href="?nowPage=${ k }">${ k }</a></li>
		 						</c:otherwise> 
		 					</c:choose>	 
						</c:forEach> 
					
						<c:if test="${ galleryPageDto.showPageNumberEnd != galleryPageDto.endPage }"> 
							<li><a href="?nowPage=${ galleryPageDto.nowPage + 1 }">▶</a></li>
							<li><a href="?nowPage=${ galleryPageDto.endPage }">▶▶</a></li>
						</c:if> 
				</ul>
				</td>
			</tr>
		</table>
	</div>
</div>
