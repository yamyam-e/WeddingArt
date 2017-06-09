<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"> <title>Insert title here</title>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> -->
<script type="text/javascript">
$(document).ready(function(){
	// Initializes the carousel
    $(".start-slide").click(function(){
    	$("#myCarousel").carousel('cycle');
    });
	// Stops the carousel
    $(".pause-slide").click(function(){
    	$("#myCarousel").carousel('pause');
    });
	// Cycles to the previous item
    $(".prev-slide").click(function(){
    	$("#myCarousel").carousel('prev');
    });
	// Cycles to the next item
    $(".next-slide").click(function(){
    	$("#myCarousel").carousel('next');
    });
	// Cycles the carousel to a particular frame 
    $(".slide-one").click(function(){
    	$("#myCarousel").carousel(0);
    });
    $(".slide-two").click(function(){
    	$("#myCarousel").carousel(1);
    });
    $(".slide-three").click(function(){
    	$("#myCarousel").carousel(2);
    });
});
</script>
<style type="text/css">
.carousel{
    background: #FFFFFF;
    margin: 10px 0;
}
.carousel .item img{
    margin: 0 auto; /* Align slide image horizontally center */
}
.control-buttons{
	text-align: center;
}
.bs-example{
	margin: 10px;
}
</style>
</head>
<body style="color: black;">
<!-- 모달 -->
	<div class="modal fade" id="studioModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" style="color: black;">
			<div class="modal-content">
				<div class="modal-header" style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg'); height: 60px;">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" style="color: DimGray;" align="center">
						<img alt="" src="/wedding/resources/vender_gallery/vender_dress_icon05.png">
							<strong>Wedding Studio</strong> 
						<img alt=""src="/wedding/resources/vender_gallery/vender_dress_icon05.png">
					</h4>
				</div>
				<div class="modal-body" style="color: black;">
					<div class="bs-example">
						<div id="myCarousel" class="carousel slide" data-interval="5000" data-ride="carousel">
							<!-- Wrapper for carousel items -->
							<div class="carousel-inner">
								<div class="active item">
									<img src="/wedding/resources/vender_gallery/vender_studio_gallery/${vsDto.image01}"
										alt="First Slide" style="width: 680px; height: 450px;">
									<div class="carousel-caption">
										<input type="button" class="btn btn-default prev-slide" value="◁"
											style="position: absolute; bottom: 180px; right: 600px;">
										<input type="button" class="btn btn-default next-slide" value="▷"
											style="position: absolute; bottom: 180px; left: 600px;">
									</div>
								</div>
								<div class="item">
									<img src="/wedding/resources/vender_gallery/vender_studio_gallery/${vsDto.image02}"
										alt="Second Slide" style="width: 680px; height: 450px;">
									<div class="carousel-caption">
										<input type="button" class="btn btn-default prev-slide" value="◁"
											style="position: absolute; bottom: 180px; right: 600px;">
										<input type="button" class="btn btn-default next-slide" value="▷"
											style="position: absolute; bottom: 180px; left: 600px;">
									</div>
								</div>
								<div class="item">
									<img src="/wedding/resources/vender_gallery/vender_studio_gallery/${vsDto.image03}"
										alt="Third Slide" style="width: 680px; height: 450px;">
									<div class="carousel-caption">
										<input type="button" class="btn btn-default prev-slide" value="◁"
											style="position: absolute; bottom: 180px; right: 600px;">
										<input type="button" class="btn btn-default next-slide" value="▷"
											style="position: absolute; bottom: 180px; left: 600px;">
									</div>
								</div>
								<div class="item">
									<img src="/wedding/resources/vender_gallery/vender_studio_gallery/${vsDto.image04}"
										alt="Third Slide" style="width: 680px; height: 450px;">
									<div class="carousel-caption">
										<input type="button" class="btn btn-default prev-slide" value="◁"
											style="position: absolute; bottom: 180px; right: 600px;">
										<input type="button" class="btn btn-default next-slide" value="▷"
											style="position: absolute; bottom: 180px; left: 600px;">
									</div>
								</div>
							</div>
						</div>
					</div>
					<table style="position: relative; left: 95px;">
						<tr>
<!-- 							<td style="padding-left: 10px; font-size: 20px; font-style: italic;"> -->
							<td width="680px;">
								<p><strong><mark>${vsDto.name}</mark></strong></p>
								<strong>별점 : </strong>
								<c:forEach begin="1" end="${ vsDto.judge }">
									<img alt="" src="/wedding/resources/vender_gallery/vender_icon04.png">
								</c:forEach><br>
								${vsDto.content }<br>
								<strong>주소 : </strong>${vsDto.address }<br>
								<strong>전화번호 : </strong>${ vsDto.phone }<br>
								<strong>홈페이지 : </strong><a href="${ vsDto.homeurl }">${ vsDto.homeurl }</a>
							</td>
						</tr>
					</table>
					<br>
					<form action="/wedding/vender_cart" method="post">
						<button type="button" class="btn btn-warning" onclick="javascript:goInquire('${vsDto.num}')"
							style="position: relative;left: 95px;background-color: MistyRose; color: IndianRed;">
							<span class="glyphicon glyphicon-edit"></span><strong>업체문의</strong>
						</button>
						<button type="submit" class="btn btn-warning" 
							style="position: relative;left: 95px; background-color: MistyRose; color: IndianRed;">
							<span class="glyphicon glyphicon-share"></span><strong>등록하기</strong>
						</button>
						<input type="hidden" name="name" value="${vsDto.name }">
						<input type="hidden" name="judge" value="${ vsDto.judge }">
						<input type="hidden" name="address" value="${ vsDto.address }">
						<input type="hidden" name="phone" value="${ vsDto.phone }">
						<input type="hidden" name="homeurl" value="${ vsDto.homeurl }">
						<input type="hidden" name="logo" value="${ vsDto.logo }">
						<input type="hidden" name="type" value="studio">
					</form>
				</div>
				<div class="modal-footer"
					style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg'); height: 60px;">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="vender_inquire_modal.jsp" />


</body>
</html>






