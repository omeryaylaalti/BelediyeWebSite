<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="com.omeryaylaalti.project.dao.NikahRandevuDAO"%>
<%@ page import="com.omeryaylaalti.project.controller.NikahRandevuServlet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Belediye Admin Paneli</title>
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
<link rel="stylesheet" href="assets/css/buttons.css" />
<link rel="stylesheet"
	href="assets/easy-pie-chart/jquery.easy-pie-chart.css" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
<link rel="shortcut icon" href="assets/img/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="assets/jquery.datetimepicker.css" />
<style type="text/css">
.custom-date-style {
			background: red !important;
			border-color: red !important;
			color: white !important;}

.custom-style {
	background-color: orange !important;
}

.event {
	background-color: #42B373 !important;
	background-image: none !important;
	color: #ffffff !important;
}
</style>

</head>
<body>
	<div class="md-modal md-fall" id="logout-modal">
		<div class="md-content">
			<h3>
				<strong>Admin Paneli</strong> Bilgilendirme
			</h3>
			<div>
				<p class="text-center">Admin Panel Sayfasından Çıkmak İstiyor
					musunuz?</p>
				<p class="text-center">
					<button class="btn btn-danger md-close">Hayır!</button>
					<a href="login.jsp" class="btn btn-success md-close">Evet,
						İstiyorum</a>
				</p>
			</div>
		</div>
	</div>

	<!--Sol Menü Kısmı -->
	<div class="left side-menu">

		<div class="body rows scroll-y  fadeInLeftBig">
			<div class="slimScrollDiv"
				style="position: relative; overflow: hidden; width: auto; height: 529px;">
				<div class="sidebar-inner slimscroller"
					style="overflow: hidden; width: auto; height: 529px;">
					<div class="media">
						<a class="pull-left" href="#"> <img
							class="media-object img-circle" src="assets/img/admin.png"
							alt="Avatar">
						</a>
						<div class="media-body">
							Hoşgeldiniz,
							<h4 class="media-heading">
								<strong>Admin Kullanıcısı</strong>
							</h4>
							<a class="md-trigger" data-modal="logout-modal">Çıkış Yap</a>
						</div>
					</div>
					<br>
					<div id="sidebar-menu">
						<ul>
							<li><a href="AdminPaneli.jsp"><i class="fa fa-home"></i>
									Anasayfa</a></li>
							<li><a href="belediyeBirimler.jsp"><i class="fa fa-bug"></i><i
									class="fa fa-angle-double-down i-right"></i>Belediye Birimleri</a>
							</li>
							<li><a href="belediyeCalısanlar.jsp"><i
									class="fa fa-bug"></i><i
									class="fa fa-angle-double-down i-right"></i>Belediye
									Çalışanları</a></li>
							<li><a href="adminHaberEkle.jsp"><i class="fa fa-edit"></i><i
									class="fa fa-angle-double-down i-right"></i>Haberleri Görüntüle</a></li>
							<li class="active"><a href="adminKullaniciGoruntule.jsp"><i
									class="fa fa-table"></i>Kullanıcı İşlemleri</a></li>
							<li><a href="adminNikahRezervasyonGoruntule.jsp"><i
									class="fa fa-smile-o"></i><i
									class="fa fa-angle-double-down i-right"></i>Nikah İşlemleri</a></li>
							<li><a href="adminDugunRandevuGoruntule.jsp"><i
									class="fa fa-smile-o"></i><i
									class="fa fa-angle-double-down i-right"></i>Düğün İşlemleri</a></li>
							<li><a href="adminGelenMesajlar.jsp"><i
									class="fa fa-bug"></i><i
									class="fa fa-angle-double-down i-right"></i>Ziyaretci Mesajlari</a></li>
							<li><a href="adminDilekveSikayetler.jsp"><i
									class="fa fa-bug"></i><i
									class="fa fa-angle-double-down i-right"></i>Dilek ve Şikayetler</a></li>
						</ul>
						<div class="clear"></div>
					</div>
				</div>
				<div class="slimScrollBar"
					style="width: 7px; position: absolute; top: 16px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 513.47px; background: rgb(0, 0, 0);"></div>
				<div class="slimScrollRail"
					style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div>
			</div>
		</div>
	</div>

	<!--Sağ Taraf -->
	<div class="right content-page">
		<div class="header content rows-content-header">

			<!-- Button mobile view to collapse sidebar menu -->
			<button class="button-menu-mobile show-sidebar">
				<i class="fa fa-bars"></i>
			</button>

			<div class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<i class="fa fa-angle-double-down"></i>
						</button>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right top-navbar">

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><strong>Admin</strong> <i
									class="fa fa-chevron-down i-xs"></i></a>
								<ul class="dropdown-menu animated half flipInX">
									<li><a class="md-trigger" data-modal="logout-modal">Çıkış
											Yap</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>
		<!-- Sağ Taraf -->
		<!-- ============================================================== -->
		<!-- Start Content here -->
		<!-- ============================================================== -->
		<div class="body content rows scroll-y">

			<!-- Page header -->
			<div class="page-heading animated fadeInDownBig">
				<h1>Nikah Randevu Ekleme Sayfası</h1>
			</div>
			<!-- End page header -->

			<!-- Start info box -->
			<div class="row">
				<div class="box-info full animated fadeInDown">
					<h2>
						<strong>Belediye Nikah Tarihi Randevusu Alma </strong>
					</h2>
					<div class="box-info animated fadeInDown">

						<form class="form-horizontal" role="form" action="tarihSorgu">
							<p align="left">Lütfen Tarih Seçiminizi Yapınız!</p>
							<p align="left">Kırmızı renkli tarihlerin boş olan saatleri varsa rezervasyon yapabilirsiniz!</p>
							<p align="left">Yeşil renkli tarihlerden izin verilen saatlere seçim yapabilirsiniz!</p>
							
							<div class="form-group">
								<label class="col-sm-2 control-label">Tarih</label>
								<div class="col-sm-3">
									<input type="text" id="datepicker" name="date" 
										required />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-success">Sorgula</button>
									&nbsp&nbsp <a class="btn btn-primary md-trigger"
										href="adminNikahRezervasyonGoruntule.jsp"
										data-modal="form-modal">Randevuları Görüntüle</a>
								</div>
							</div>
							<div class="form-group">
								<c:if test="${not empty mesaj}">
									<p align="center"><strong>${mesaj}</strong></p>
								</c:if>							
							</div>

						</form>
						<footer> © 2015 Bu panel <a href="">Ömer Yaylaaltı</a>
						tarafından tasarlanmıştır. Samsun, Türkiye </footer>
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
				<script
					src="assets/third/magnific-popup/jquery.magnific-popup.min.js"></script>
				<script src="assets/third/pace/pace.min.js"></script>
				<script src="assets/third/input/bootstrap.file-input.js"></script>
				<script src="assets/third/datepicker/js/bootstrap-datepicker.js"></script>
				<script src="assets/third/icheck/icheck.min.js"></script>
				<script src="assets/third/wizard/jquery.snippet.min.js"></script>
				<script src="assets/third/wizard/jquery.easyWizard.js"></script>
				<script src="assets/third/wizard/scripts.js"></script>
				<script src="assets/js/lanceng.js"></script>
				<script src="assets/jquery.js"></script>
				<script src="assets/build/jquery.datetimepicker.full.js"></script>
				
				<script>
					$.datetimepicker.setLocale('tr');
 				
 				var tatil = [ [ 2016, 04, 23 ], [ 2016, 5, 19 ],
					[ 2016, 5, 1 ], [ 2016, 7, 4 ], [ 2016, 7, 5 ],
					[ 2016, 7, 6 ], [ 2016, 7, 7 ], [ 2016, 8, 30 ],
					[ 2016, 9, 12 ], [ 2016, 9, 13 ], [ 2016, 9, 14 ],
					[ 2016, 9, 15 ], [ 2016, 10, 28 ], [ 2016, 10, 29 ]]; 
 				
 				var today = new Date();
 			    var tomorrow = new Date();
 			    tomorrow.setDate(today.getDate() + 1);
 			 
					$('#datepicker').datetimepicker({
						timepicker : false,
						format : 'd/m/Y',
						minTime : '09:00',
						showOn: "none",
			            minDate: tomorrow,
			            beforeShowDay : availableFunction
					});	
					
					var availableDates = <%=NikahRandevuDAO.TarihGetir()%>;
					
					
					function availableFunction(date) {
					 availday = date.getDate() + "/" + (date.getMonth()+1) + "/" + date.getFullYear();
						
					 for (i = 0; i < tatil.length; i++) {
							if (date.getFullYear() == tatil[i][0]
								&& date.getMonth() == tatil[i][1] - 1
								&& date.getDate() == tatil[i][2]) {
							return [ false, 'custom-style' ];
							}
							}
						var day = date.getDay();
						 if ((day == 0))
							return [ false, '' ]
					 
					    if (jQuery.inArray(availday, availableDates) > -1) {
					        return [true,"custom-date-style",""];
					    } else {
					        return [true,"event",""];
					    }
					    
					}
				</script>
				
</body>
</html>