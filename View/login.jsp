<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.omeryaylaalti.project.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Saçak Belediyesi</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="description" content="">
<meta name="keywords"
	content="admin, bootstrap,admin template, bootstrap admin, simple, awesome">
<meta name="author" content="">

<!-- Bootstrap -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/third/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/style-responsive.css" rel="stylesheet">
<link href="assets/css/animate.css" rel="stylesheet">
<link href="assets/third/morris/morris.css" rel="stylesheet">
<link rel="stylesheet" href="assets/third/nifty-modal/css/component.css">
<link rel="stylesheet"
	href="assets/third/sortable/sortable-theme-bootstrap.css">
<link rel="stylesheet" href="assets/third/icheck/skins/minimal/grey.css">
<link rel="stylesheet"
	href="assets/third/select/bootstrap-select.min.css">
<link rel="stylesheet" href="assets/third/summernote/summernote.css" />
<link rel="stylesheet"
	href="assets/third/magnific-popup/magnific-popup.css">
<link rel="stylesheet" href="assets/third/pace/pace-theme-minimal.css">
<link rel="stylesheet" href="assets/third/datepicker/css/datepicker.css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
<link rel="shortcut icon" href="assets/img/favicon.ico">
</head>
<body class="tooltips full-content">
	<div class="container">
		<div class="full-content-center animated fadeInDownBig">
			<a href=""><img src="assets/img/beldemiz.jpg"
				class="logo-login img-circle" alt="Logo"></a>
			<div class="login-wrap">
				<div class="box-info">
					<h2 class="text-center">
						<strong>Giriş Paneli</strong> <br>
						<h4 align="center">Hoşgeldiniz</h4>
					</h2>

					<form role="form" action="LoginServlet" method="post">
						<div class="form-group login-input">
							<i class="fa fa-sign-in overlay"></i> <input type="text"
								class="form-control text-input" name="username"
								placeholder="Kullanıcı Adı" required>
						</div>
						<div class="form-group login-input">
							<i class="fa fa-key overlay"></i> <input type="password"
								class="form-control text-input" name="pass" placeholder="Parola"
								>
						</div>

						<div class="row">
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success btn-block">
									<i class="fa fa-unlock"></i> Giriş Yap
								</button>
							</div>
							<div class="col-sm-6">
								<a href="registeremail.jsp" class="btn btn-default btn-block"><i
									class="fa fa-rocket"></i>Kayıt Ol</a>
							</div>
						</div>
					</form>


				</div>
				<p class="text-center">
					<a href="AnasayfaEkrani.jsp"><i class="fa fa-sign-in"></i>Anasayfaya
						dönün..</a>
				</p>
			</div>

		</div>
	</div>
	<!-- End of page -->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="assets/js/jquery.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/third/knob/jquery.knob.js"></script>
	<script src="assets/third/slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="assets/third/morris/morris.js"></script>
	<script src="assets/third/nifty-modal/js/classie.js"></script>
	<script src="assets/third/nifty-modal/js/modalEffects.js"></script>
	<script src="assets/third/sortable/sortable.min.js"></script>
	<script src="assets/third/select/bootstrap-select.min.js"></script>
	<script src="assets/third/summernote/summernote.js"></script>
	<script src="assets/third/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="assets/third/pace/pace.min.js"></script>
	<script src="assets/third/input/bootstrap.file-input.js"></script>
	<script src="assets/third/datepicker/js/bootstrap-datepicker.js"></script>
	<script src="assets/third/icheck/icheck.min.js"></script>
	<script src="assets/third/wizard/jquery.snippet.min.js"></script>
	<script src="assets/third/wizard/jquery.easyWizard.js"></script>
	<script src="assets/third/wizard/scripts.js"></script>
	<script src="assets/js/lanceng.js"></script>

</body>
</html>