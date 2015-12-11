<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Saçak Belediyesi</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style>
body {
	background-image:
		url("http://d2wss9bif9q3el.cloudfront.net/254/491/images/paper.gif");
	background-repeat: repeat;
	background-attachment: scroll;
	background-color: white;
	background-position: top-left;
}
</style>
</head>
<body>
	<h2 align="center">Üye Kayıt Formu</h2>
	<form role="form" id="registerForm" action="UyeOlServlet"
		novalidate="novalidate" class="bootstrap-validator-form">
		<div class="form-group">
			<label>Username</label> <input type="text" class="form-control"
				name="username"> <small class="help-block"
				style="display: none;"></small>
		</div>
		<div class="form-group">
			<label>Email address</label> <input type="text" class="form-control"
				name="email"> <small class="help-block"
				style="display: none;"></small>
		</div>
		<div class="form-group">
			<div class="row">
				<div class="col-sm-6">
					<label>Password</label> <input id="password" type="password"
						class="form-control" name="password">
				</div>
				<div class="col-sm-6">
					<label>Re-Password</label> <input type="password"
						class="form-control" name="confirmPassword">
				</div>
			</div>
			<small class="help-block" style="display: none;"></small>
		</div>
		<div class="form-group">
			<label>Phone</label> <input type="text" class="form-control"
				name="phoneNumber"> <small class="help-block"
				style="display: none;"></small>
		</div>
		<div class="form-group">
			<label class="control-label" id="captchaOperation">14 + 17 =</label>
			<div class="row">
				<div class="col-sm-4">
					<input type="text" class="form-control" name="captcha">
				</div>
			</div>
			<small class="help-block" style="display: none;"></small>
		</div>
		<div class="form-group">
			<div class="checkbox">
				<label class="">
					<div class="icheckbox_minimal-grey" aria-checked="false"
						aria-disabled="false" style="position: relative;">
						<input name="acceptTerms" type="checkbox"
							style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);">
						<ins class="iCheck-helper"
							style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins>
					</div> I agree to the <a href="#">Terms of Service</a>
				</label>
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Kayıt Ol</button>
	</form>
</body>
</html>