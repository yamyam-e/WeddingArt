<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
	<div class="row">
		<div class="col-lg-8 col-lg-offset-2 text-center">
			<h2 class="margin-top-0 wow fadeIn" style="color: black;">FAQ</h2>
			<hr class="primary">
			<p>We love feedback. Fill out the form below and we'll get back
				to you as soon as possible.</p>
		</div>
		<div class="col-lg-10 col-lg-offset-1 text-center">
			<form class="contact-form row" action="/wedding/FAQSend">
				<div class="col-md-4">
					<label></label> <input type="text" class="form-control00"
						placeholder="Name" name="name" id="name" required="required" 
						style="background: rgba(240, 120, 100, 0.1);">
				</div>
				<div class="col-md-4">
					<label></label> <input type="text" class="form-control00"
						placeholder="Email" name="email" id="email" required="required"
						style="background: rgba(240, 120, 100, 0.1);">
				</div>
				<div class="col-md-4">
					<label></label> <input type="text" class="form-control00"
						placeholder="Phone" name="pNum" id="pNum" required="required"
						style="background: rgba(240, 120, 100, 0.1);">
				</div>
				<div class="col-md-12">
					<label></label>
					<textarea rows="9" class="form-control00"
						placeholder="Your message here.."
						name="message" id="message" required="required"
						style="background: rgba(240, 120, 100, 0.1);"></textarea>
				</div>
				<div class="col-md-4 col-md-offset-4">
					<label></label>
					<button type="submit" data-toggle="modal" data-target="#alertModal"
						class="btn btn-primary btn-block btn-lg" style="color: black;">
						Send <i class="ion-android-arrow-forward"></i>
					</button>
				</div>
			</form>
		</div>
	</div>
</div>


