<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.omeryaylaalti.project.controller.RegisterServlet"%>
<%@ page
	import="com.omeryaylaalti.project.controller.KayıtEmailDogrulaServlet"%>
<%
	HttpSession se = request.getSession();
%>

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
<link rel="shortcut icon" href="assets/img/favicon.ico">
<style>
div {
	color: red;
}

div.dogru {
	color: blue;
}
</style>
</head>

<body class="tooltips full-content">

	<!-- Begin page -->
	<div class="container">
		<div class="full-content-center animated fadeInDownBig">
			<a href=""><img src="assets/img/ad.jpeg"
				class="logo-login img-circle" alt="Logo"></a>
			<div class="login-wrap">
				<div class="box-info">
					<h2 class="text-center">
						<strong>Yeni Üye</strong> Kayıt Formu
					</h2>

					<form role="form" name="myForm" action="RegisterServlet"
						method="get">
						<div class="form-group login-input">
							<input type="text" name="kod" class="form-control text-input"
								value="<%=se.getAttribute("random")%>" />
						</div>
						<div class="form-group login-input">
							<i class="fa fa-user overlay"></i> <input type="text"
								name="email" class="form-control text-input"
								value="<%=se.getAttribute("email")%>"
								placeholder="E-mail Adresiniz..." required>
						</div>
						<div class="form-group login-input">
							<i class="fa fa-user overlay"></i> <input type="text" name="name"
								id="name" class="form-control text-input"
								placeholder="Adınızı ve Soyadınızı Giriniz.." required>
						</div>
						<div class="form-group login-input">
							<i class="fa fa-envelope overlay"></i> <input type="text"
								name="dogrulakod" class="form-control text-input"
								placeholder="E-mail Gelen Doğrulama Kodunu Giriniz..." required>
						</div>
						<div class="form-group login-input">
							<i class="fa fa-sign-in overlay"></i> <input type="text" id="user"
								name="username" class="form-control text-input"
								placeholder="Kullanıcı Adınız.." required>
						</div>
						<div class="form-group login-input">
							<i class="fa fa-key overlay"></i> <input type="password"
								id="pass" name="pass" class="form-control text-input" placeholder="Şifre"
								required>
						</div>
						<div class="form-group login-input">
							<i class="fa fa-eye overlay"></i> <input type="text"
								id="tckimlikno" placeholder="Tc Kimlik Numaranız"
								class="form-control text-input" name="tckimlikno"
								onblur="tckimlikkontorolu(this); " maxlength="11" required />
							<div id="sonuc" align="center"></div>
						</div>
						<button type="submit" class="btn btn-success btn-block">
							<i class="fa fa-rocket"></i>Kayıt Ol
						</button>
					</form>
				</div>
				<p class="text-center">
					<a href="login.jsp"><i class="fa fa-sign-in"></i>Giriş
						Sayfasına Geri Dön</a>
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
	<script src="assets/js/onlineErisim.js"></script>
	
	<script>
		function ge(a) {
			return document.getElementById(a);
		}

		function tckimlikkontorolu(tcno) {
			var tckontrol, toplam;
			tckontrol = tcno;
			tcno = tcno.value;
			toplam = Number(tcno.substring(0, 1))
					+ Number(tcno.substring(1, 2))
					+ Number(tcno.substring(2, 3))
					+ Number(tcno.substring(3, 4))
					+ Number(tcno.substring(4, 5))
					+ Number(tcno.substring(5, 6))
					+ Number(tcno.substring(6, 7))
					+ Number(tcno.substring(7, 8))
					+ Number(tcno.substring(8, 9))
					+ Number(tcno.substring(9, 10));

			strtoplam = String(toplam);

			onunbirlerbas = strtoplam.substring(strtoplam.length,
					strtoplam.length - 1);
			var sonuc = ge("sonuc");

			if (onunbirlerbas == tcno.substring(10, 11)) {
				sonuc.className = "dogru";
				sonuc.innerHTML = "Tc No Geçerlidir.";
			} else {
				sonuc.className = " ";
				sonuc.innerHTML = "Yanlış Tc";
			}
		}
	</script>


</body>
</html>