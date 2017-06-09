<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>WeddingArt</title>
    <meta name="description" content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.1/animate.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
<!--     <link rel="stylesheet" href="webjars/bootstrap/3.3.4/dist/css/bootstrap.css" /> -->
    <link rel="stylesheet" href="/wedding/resources/landingzero_334/css/styles.css"/>
    
  </head>
  <body style="background-color: white;" >
    <nav id="topNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="/wedding/" style="color: black;"> WeddingArt</a>
            </div>
            <div class="navbar-collapse collapse" id="bs-navbar">
                <ul class="nav navbar-nav">
                	<li>
                        <a class="cursive" href="#" data-toggle="dropdown" style="color: black;">Gift<span class="caret"></span></a>
                        <ul class="dropdown-menu">
          					<li><a href="#">식품</a></li>
         					<li><a href="#">주방용품</a></li>
          					<li><a href="#">실용품</a></li>
        				</ul>
                    </li>
                    <li>
                        <a class="cursive" href="#three" style="color: black;">Resistry</a>
                    </li>
                    <li>
                        <a class="cursive" href="checkList" style="color: black;">CheckList</a>
                    </li>
                	<li class="dropdown2">
                		<a class="cursive" data-toggle="dropdown" href="#" style="color: black;">Vender<span class="caret"></span></a>
      				  	<ul class="dropdown-menu">
          					<li><a href="#">예식장</a></li>
          					<li role="separator" class="divider"></li>
         					<li><a href="#">스튜디오</a></li>
          					<li><a href="#">드레스</a></li>
          					<li><a href="#">메이크업</a></li>
          					<li role="separator" class="divider"></li>
          					<li><a href="#">플로리스트</a></li>
        				</ul>
      				</li>
                    <li>
                        <a class="cursive" href="#three" style="color: black;">Q&A</a>
                    </li>
                  </ul>
                <ul class="nav navbar-nav navbar-right">
                
                <c:choose>
                	<c:when test="${ nowLogin != null }">
                		<li>
                			<a href="javascript:logout();" class="cursive"  data-toggle="modal" data-target="" style="color: black;"><span class="glyphicon glyphicon-log-out"></span>  Logout</a>
                		</li>
                	</c:when>
                	<c:otherwise>
                		<li>
                			<a href="" class="cursive"  data-toggle="modal" data-target="#loginPop" style="color: black;"><span class="glyphicon glyphicon-log-in"></span>  Login</a>
                		</li>
                	</c:otherwise>
                </c:choose>
                	
                	<li>	
                		<a href="" class="cursive" data-toggle="modal" data-target="#signPop" style="color: black;"><span class="glyphicon glyphicon-user"></span>  Sign up</a>
					</li>
					                
                </ul>
            </div>
        </div>        
    </nav>
    <div style="height: 50px; background-color: black;">
    </div>
    <header id="first">
        <div class="header-content">
            <div class="inner">
                <h1 class="cursive">The moment that I want to memorize</h1>
                <h4 class="cursive">둘리♥공실 커플 D-100</h4>
                <hr>
                <a href="#video-background" id="toggleVideo" data-toggle="collapse" class="btn btn-primary btn-xl">Toggle Video</a> &nbsp;
                <a href="#myModal" class="btn btn-primary btn-xl" >Find Couple</a>&nbsp;
            </div>
        </div>
        <video autoplay="autoplay" loop="loop" class="fillWidth fadeIn wow collapse in" data-wow-delay="0.5s" poster="https://s3-us-west-2.amazonaws.com/coverr/poster/Traffic-blurred2.jpg" id="video-background">
			<!--	<source src="https://s3-us-west-2.amazonaws.com/coverr/mp4/Traffic-blurred2.mp4" type="video/mp4"> -->
			<source src="/wedding/resources/video/video.mp4" type="video/mp4">
        </video>
       		<!-- 로그인 Modal -->
  					<div class="modal fade" id="loginPop" role="dialog">
    					<div class="modal-dialog" style="background-color: white; height: 500px; width: 450px; background-image: url('/wedding/resources/gallery/background2.jpg')" >
    
      					<!-- Modal content-->
      						<div class="modal-content" >
      							<div style="height: 75px; background-image: url('/wedding/resources/gallery/background2.jpg')" ></div>
        						<div class="modal-header" style="height: 50px; background : rgba(240, 120, 100, 0.1);" >
          							<button type="button" class="close" data-dismiss="modal">&times;</button>
          							<h4 class="cursive" style="color: black;">Login</h4>
        						</div>
        						<div class="modal-body" style="background : rgba(240, 120, 100, 0.1);">
          							<form action="/wedding/logIn">
								    <div class="form-group" align="left">
								      <label for="email" style="color: black;" >Email:</label>
								      <input type="email" class="form-control" name="email" id="email" placeholder="Enter email" style="color: black;">
								    </div>
								    <div class="form-group" align="left" >
								      <label for="pwd" style="color: black;">Password:</label>
								      <input type="password" class="form-control" name="pw" id="pw" placeholder="Enter password" style="color: black;">
								    </div>
								    <div class="checkbox" align="left">
								      <label style="color: black;"><input type="checkbox"> Remember me</label>
								    </div>
								    <button type="submit" class="btn btn-default">Login</button>
								  </form>
						        </div>
						        <div class="modal-footer" style="background : rgba(240, 120, 100, 0.1);">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
    					</div>
  					</div>
  					
  					<!-- 회원가입 인증전 -->
  					<div class="modal fade" id="signPop" role="dialog">
    					<div class="modal-dialog" style="background-color: white; height: 500px; width: 450px; background-image: url('/wedding/resources/gallery/background2.jpg')" >
    
      					<!-- Modal content-->
      						<div class="modal-content" >
        						<div style="height: 75px; background-image: url('/wedding/resources/gallery/background2.jpg')" ></div>
        						<div class="modal-header" style="height: 50px; background : rgba(240, 120, 100, 0.1);" >
          							<button type="button" class="close" data-dismiss="modal">&times;</button>
          							<h4 class="cursive" style="color: black;">Sign up</h4>
        						</div>
        						<div class="modal-body" style="background : rgba(240, 120, 100, 0.1);">
          							<form action="/wedding/signUp">
								    <div class="form-group" align="left">
								      <label for="email" style="color: black;" >Email:</label>
								      <input type="email" class="form-control" name= "email" id="email" placeholder="Enter email" style="color: black;">
								    </div>
								    <div class="form-group" align="left">
								      <label for="pwd" style="color: black;">Password:</label>
								      <input type="password" class="form-control" name= "pw" id="pw" placeholder="Enter password" style="color: black;">
								    </div>
								    <button type="submit" class="btn btn-default">Sign Up</button>
								  </form>
						        </div>
						        <div class="modal-footer" style="background : rgba(240, 120, 100, 0.1);">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
    					</div>
  					</div>
  					
  					
				<!-- 회원가입 인증후 -->
	  					<div class="modal fade" id="signAfterPop" role="dialog">
	    					<div class="modal-dialog" style="background-color: white; height: 500px; width: 450px; background-image: url('/wedding/resources/gallery/background2.jpg')">
	    
					<!-- Modal content -->
	      						<div class="modal-content" >
	        						<div style="height: 75px; background-image: url('/wedding/resources/gallery/background2.jpg')" ></div>
	        						<div class="modal-header" style="height: 50px; background : rgba(240, 120, 100, 0.1);" >
	          							<button type="button" class="close" data-dismiss="modal">&times;</button>
	          							<h4 class="cursive" style="color: black;">Sign up</h4>
	        						</div>
	        						<div class="modal-body" style="background : rgba(240, 120, 100, 0.1);">
	          							<form action="/wedding/afterSignUp">
									    <div class="form-group" align="left">
									      <label for="email" style="color: black;" >name:</label>
									      <input type="text" class="form-control" name= "name" id="name" style="color: black;">
									    </div>
									    <div class="form-group" align="left">
									      <label for="pwd" style="color: black;">Couple Name:</label>
									      <input type="text" class="form-control" name= "cName" id="cName" style="color: black;">
									    </div>
									    <div class="form-group" align="left">
									      <label for="email" style="color: black;" >Address:</label>
									      <input type="text" class="form-control" name= "address" id="address" style="color: black;">
									    </div>
									    <div class="form-group" align="left">
									      <label for="pwd" style="color: black;">Phone Number:</label>
									      <input type="text" class="form-control" name= "pNum" id="pNum" style="color: black;">
									    </div>
									    <div class="form-group" align="left">
									      <label for="pwd" style="color: black;">Wedding Day:</label>
									      <input type="date" class="form-control" name= "weddingDay" id="weddingDay" style="color: black;">
									    </div>
									    <input type="hidden" name="num" value="${ num }"/>
									    <button type="submit" class="btn btn-default">Sign Up</button>
									  </form>
							        </div>
							        <div class="modal-footer" style="background : rgba(240, 120, 100, 0.1);">
							          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							        </div>
							      </div>
	    					</div>
	  					</div>
  					
    </header>
   
    <section id="weddingGallery" class="no-padding">
    
    	<div class="container">
    		<div style="height: 30px;"></div>
			  <h2 style="color: black;">Wedding Gallery</h2>
			  <div class="row">
			    <div class="col-md-4">
			      <a href="/wedding/resources/gallery/03.jpg" class="thumbnail" >
			        <p align="center">둘리♥공순이 커플</p>
			        <img src="/wedding/resources/gallery/03.jpg	" alt="Pulpit Rock" style="width:200px;height:200px">
			      </a>
			    </div>
			    <div class="col-md-4">
			      <a href="/wedding/resources/gallery/04.jpg" class="thumbnail">
			      	<p align="center">또치♥마이콜 깐타피아 커플</p>
			        <img src="/wedding/resources/gallery/04.jpg" alt="Moustiers Sainte Marie" style="width:200px;height:200px">
			      </a>
			    </div>
			    <div class="col-md-4">
			      <a href="/wedding/resources/gallery/07.jpg" class="thumbnail">
			        <p align="center">원빈♥이나영 정선커플</p>
			        <img src="/wedding/resources/gallery/07.jpg" alt="Cinque Terre" style="width:200px;height:200px">
			      </a>
			    </div>
			    <div class="col-md-4">
			      <a href="/wedding/resources/gallery/08.jpg" class="thumbnail">
			        <p align="center">장동건♥고소영 세기의 커플</p>
			        <img src="/wedding/resources/gallery/08.jpg" alt="Cinque Terre" style="width:200px;height:200px">
			      </a>
			    </div>
			    <div class="col-md-4">
			      <a href="/wedding/resources/gallery/09.jpg" class="thumbnail">
			        <p align="center">이병헌♥이민정 결혼.로맨틱.성공적.</p>
			        <img src="/wedding/resources/gallery/09.jpg" alt="Cinque Terre" style="width:200px;height:200px">
			      </a>
			    </div>
			    <div class="col-md-4">
			      <a href="/wedding/resources/gallery/06.jpg" class="thumbnail">
			        <p align="center">로미오♥줄리엣 커플</p>
			        <img src="/wedding/resources/gallery/06.jpg" alt="Cinque Terre" style="width:200px;height:200px">
			      </a>
			    </div>
			  </div>
			</div>
    
    </section>
    
    
    <section id="last">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="margin-top-0 wow fadeIn" style="color: black;">건의사항</h2>
                    <hr class="primary">
                    <p>We love feedback. Fill out the form below and we'll get back to you as soon as possible.</p>
                </div>
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <form class="contact-form row">
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control00" placeholder="Name" style="background : rgba(240, 120, 100, 0.1);">
                        </div>
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control00" placeholder="Email" style="background : rgba(240, 120, 100, 0.1);">
                        </div>
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control00" placeholder="Phone" style="background : rgba(240, 120, 100, 0.1);">
                        </div>
                        <div class="col-md-12">
                            <label></label>
                            <textarea rows="9"  class="form-control00" placeholder="Your message here.." style="background : rgba(240, 120, 100, 0.1);"></textarea>
                        </div>
                        <div class="col-md-4 col-md-offset-4">
                            <label></label>
                            <button type="button" data-toggle="modal" data-target="#alertModal" class="btn btn-primary btn-block btn-lg" style="color: black;">Send <i class="ion-android-arrow-forward"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <footer id="footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-6 col-sm-3 column">
                    <h4>Information</h4>
                    <ul class="list-unstyled">
                        <li><a href="">Products</a></li>
                        <li><a href="">Services</a></li>
                        <li><a href="">Benefits</a></li>
                        <li><a href="">Developers</a></li>
                    </ul>
                </div>
                <div class="col-xs-6 col-sm-3 column">
                    <h4>About</h4>
                    <ul class="list-unstyled">
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Delivery Information</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms &amp; Conditions</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-3 column">
                    <h4>Stay Posted</h4>
                    <form>
                        <div class="form-group">
                          <input type="text" class="form-control" title="No spam, we promise!" placeholder="Tell us your email">
                        </div>
                        <div class="form-group">
                          <button class="btn btn-primary" data-toggle="modal" data-target="#alertModal" type="button">Subscribe for updates</button>
                        </div>
                    </form>
                </div>
                <div class="col-xs-12 col-sm-3 text-right">
                    <h4>Follow</h4>
                    <ul class="list-inline">
                      <li><a rel="nofollow" href="" title="Twitter"><i class="icon-lg ion-social-twitter-outline"></i></a>&nbsp;</li>
                      <li><a rel="nofollow" href="" title="Facebook"><i class="icon-lg ion-social-facebook-outline"></i></a>&nbsp;</li>
                      <li><a rel="nofollow" href="" title="Dribble"><i class="icon-lg ion-social-dribbble-outline"></i></a></li>
                    </ul>
                </div>
            </div>
            <br/>
            <span class="pull-right text-muted small"><a href="http://www.bootstrapzero.com">Landing Zero by BootstrapZero</a> ©2015 Company</span>
        </div>
    </footer>
    <div id="galleryModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
        <div class="modal-content">
        	<div class="modal-body">
        		<img src="//placehold.it/1200x700/222?text=..." id="galleryImage" class="img-responsive" />
        		<p>
        		    <br/>
        		    <button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">Close <i class="ion-android-close"></i></button>
        		</p>
        	</div>
        </div>
        </div>
    </div>
    <div id="aboutModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        	<div class="modal-body">
        		<h2 class="text-center">Landing Zero Theme</h2>
        		<h5 class="text-center">
        		    A free, responsive landing page theme built by BootstrapZero.
        		</h5>
        		<p class="text-justify">
        		    This is a single-page Bootstrap template with a sleek dark/grey color scheme, accent color and smooth scrolling.
        		    There are vertical content sections with subtle animations that are activated when scrolled into view using the jQuery WOW plugin. There is also a gallery with modals
        		    that work nicely to showcase your work portfolio. Other features include a contact form, email subscribe form, multi-column footer. Uses Questrial Google Font and Ionicons.
        		</p>
        		<p class="text-center"><a href="http://www.bootstrapzero.com">Download at BootstrapZero</a></p>
        		<br/>
        		<button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true"> OK </button>
        	</div>
        </div>
        </div>
    </div>
    <div id="alertModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm">
        <div class="modal-content">
        	<div class="modal-body">
        		<h2 class="text-center">Nice Job!</h2>
        		<p class="text-center">You clicked the button, but it doesn't actually go anywhere because this is only a demo.</p>
        		<p class="text-center"><a href="http://www.bootstrapzero.com">Learn more at BootstrapZero</a></p>
        		<br/>
        		<button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">OK <i class="ion-android-close"></i></button>
        	</div>
        </div>
        </div>
    </div>
    <!--scripts loaded here from cdn for performance -->
    <c:choose>
    	<c:when test="${ msg != null }">
    		<script>
    			alert("${msg}");
		    </script>
    	</c:when>
    </c:choose>
    <script type="text/javascript">
    	function logout() {
			if(!confirm("정말 로그아웃 하시겠습니까?")){
				return;
			}
			
			location.href = "/wedding/logout";
			
			alert("안녕히 가십시오~")
		}
    </script>
  	
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
<!--     <script src="webjars/bootstrap/3.3.4/dist/js/bootstrap.js"></script> -->
    <script src="/wedding/resources/landingzero_334/css/styles.css"></script>
  
	<script type="text/javascript">
		
		$.urlParam = function(name){
		    var results = new RegExp('[\?&amp;]' + name + '=([^&amp;#]*)').exec(window.location.href);
		    return results[1] || 0;
		}
	
		if($.urlParam('sign') == "ok"){
			$('#signAfterPop').modal();
		}
	</script>
  	
  </body>
</html>