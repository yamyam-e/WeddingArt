<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="modal fade" id="inquireModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="color: black;">
			<div class="modal-content">

				<div class="modal-header" style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg'); height: 60px;">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" style="color: black;" align="center">
						업체 문의
					</h4>
				</div>

				<div class="modal-body" style="color: black;">
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2 text-center">
							<h2 class="margin-top-0 wow fadeIn" style="color: black;">Questions</h2>
							<hr class="primary">
							
						</div>
						<div class="col-lg-10 col-lg-offset-1 text-center">
							<form class="contact-form row">
								<div class="col-md-4">
									<label></label> <input type="text" class="form-control00"
										placeholder="Name" style="background: rgba(240, 120, 100, 0.1);">
								</div>
								<div class="col-md-4">
									<label></label> <input type="text" class="form-control00"
										placeholder="Email" style="background: rgba(240, 120, 100, 0.1);">
								</div>
								<div class="col-md-4">
									<label></label> <input type="text" class="form-control00"
										placeholder="Phone" style="background: rgba(240, 120, 100, 0.1);">
								</div>
								<div class="col-md-12">
									<label></label>
									<textarea rows="9" class="form-control00"
										placeholder="Your message here.."
										style="background: rgba(240, 120, 100, 0.1);"></textarea>
								</div>
								<div class="col-md-4 col-md-offset-4">
									<label></label>
									<button type="button" data-toggle="modal" data-target="#alertModal"
										class="btn btn-primary btn-block btn-lg" style="color: black;">
										Send <i class="ion-android-arrow-forward"></i>
									</button>
								</div>
							</form>
						</div>
					</div>
					
					
				</div>
				<div class="modal-footer"
					style="background-image: url('/wedding/resources/vender_gallery/vender_dress_modal_back01.jpg'); height: 60px;">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	

