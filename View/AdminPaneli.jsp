<%@page import="com.omeryaylaalti.project.model.NikahRandevu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.omeryaylaalti.project.dao.*"%>
<%@ page import="com.omeryaylaalti.project.model.*"%>
<%
	NikahRandevuDAO nikahdao = new NikahRandevuDAO();
	Integer nikahSayi = nikahdao.nikahSayi();
	request.setAttribute("nikah", nikahSayi);
%>
<%
	UsersDAO userdao = new UsersDAO();
	Integer userSayi = userdao.kullaniciSayi();
	request.setAttribute("users", userSayi);
%>
<%
	ZiyaretciMesajDAO mesajdao = new ZiyaretciMesajDAO();
	Integer mesajSayi = mesajdao.mesajSayi();
	request.setAttribute("mesaj", mesajSayi);
%>
<%
	BelediyeBirimDAO birimdao = new BelediyeBirimDAO();
	Integer birimSayi = birimdao.birimSayi();
	request.setAttribute("birim", birimSayi);
%>
<%
	BelediyeCalisanlarDAO calisandao = new BelediyeCalisanlarDAO();
	Integer calisanSayi = calisandao.calisanSayi();
	request.setAttribute("calisan", calisanSayi);
%>
<%
	DugunSalonuSecimDAO dugundao = new DugunSalonuSecimDAO();
	Integer dugunsayi = dugundao.dugunSayi();
	request.setAttribute("dugun", dugunsayi);
%>
<%
	DilekveSikayetlerDAO dilekdao = new DilekveSikayetlerDAO();
	Integer sikayetsayi = dilekdao.sikayetSayi();
	request.setAttribute("sikayet", sikayetsayi);
%>
<%
	HaberEkleDAO haberdao = new HaberEkleDAO();
	Integer habersayi = haberdao.haberSayi();
	request.setAttribute("haber", habersayi);
%>
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
<link rel="stylesheet" href="assets/third/datepicker/css/datepicker.css" />
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
</head>
<body>
	<!--Çıkış Yapma Modeli -->

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

		<!-- ============================================================== -->
		<!-- Start Content here -->
		<!-- ============================================================== -->
		<div class="body content rows scroll-y">

			<!-- Page header -->
			<div class="page-heading animated fadeInDownBig">
				<h1>Anasayfa</h1>
			</div>
			<!-- End page header -->

			<!-- Start info box -->
			<div class="row">

				<!--servet-->
				<div class="col-sm-3 col-xs-6">
					<div class="box-info animated bounceIn">
						<div class="icon-box">
							<span class="fa-stack"> <i
								class="fa fa-circle fa-stack-2x success"></i> <i
								class="fa fa-flag fa-stack-1x fa-inverse"></i>
							</span>
						</div>
						<div class="text-box">
							<h3>${users}</h3>
							<p>Kullanıcılar</p>
						</div>
						<div class="clear"></div>
						<div class="knob-wrapper knob-chart with-button">
							<a class="knob-inner"> <span class="percentage easyPieChart"
								data-percent="80"
								style="width: 120px; height: 120px; line-height: 120px;">
									<span>80%</span> <canvas width="120" height="120"></canvas>
							</span>
							</a> <a class="btn btn-large btn-danger"
								href="adminKullaniciGoruntule.jsp">${users}</a>
						</div>
						<p class="text-center">Kullanıcı Eklenebilir.</p>
					</div>
				</div>

				<div class="col-sm-3 col-xs-6">
					<div class="box-info animated bounceIn">
						<div class="icon-box">
							<span class="fa-stack"> <i
								class="fa fa-circle fa-stack-2x danger"></i> <i
								class="fa fa-bell fa-stack-1x fa-inverse"></i>
							</span>
						</div>
						<div class="text-box">
							<h3>${mesaj}</h3>
							<p>Mesajlar</p>
						</div>
						<div class="clear"></div>
						<!--<div class="progress progress-xs">
							  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 65%">
								<span class="sr-only">65&#37; Complete</span>
							  </div>
							</div>-->
						<div class="knob-wrapper knob-chart with-button">
							<a class="knob-inner"> <span class="percentage easyPieChart"
								data-percent="65"
								style="width: 120px; height: 120px; line-height: 120px;">
									<span>65%</span> <canvas width="120" height="120"></canvas>
							</span>
							</a> <a class="btn btn-large btn-danger"
								href="adminGelenMesajlar.jsp">${mesaj}</a>
						</div>
						<p class="text-center">Mesajlarınıza bakınız.</p>
					</div>
				</div>
				<div class="col-sm-3 col-xs-6">
					<div class="box-info animated bounceIn">
						<div class="icon-box">
							<span class="fa-stack"> <i
								class="fa fa-circle fa-stack-2x success"></i> <i
								class="fa fa-flag fa-stack-1x fa-inverse"></i>
							</span>
						</div>
						<div class="text-box">
							<h3>${haber}</h3>
							<p>Haberler</p>
						</div>
						<div class="clear"></div>
						<div class="knob-wrapper knob-chart with-button">
							<a class="knob-inner"> <span class="percentage easyPieChart"
								data-percent="80"
								style="width: 120px; height: 120px; line-height: 120px;">
									<span>30%</span> <canvas width="120" height="120"></canvas>
							</span>
							</a> <a class="btn btn-large btn-danger"
								href="adminHaberleriGoruntule.jsp">${haber}</a>
						</div>
						<p class="text-center">Haber Eklenebilir.</p>
					</div>

				</div>

				<div class="col-sm-3 col-xs-6">
					<div class="box-info animated bounceIn">
						<div class="icon-box">
							<span class="fa-stack"> <i
								class="fa fa-circle fa-stack-2x info"></i> <i
								class="fa fa-cloud-download fa-stack-1x fa-inverse"></i>
							</span>
						</div>
						<div class="text-box">
							<h3>${birim}</h3>
							<p>Belediye Birimleri</p>
						</div>
						<div class="clear"></div>
						<!--<div class="progress progress-xs">
							  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
								<span class="sr-only">95&#37; Complete</span>
							  </div>
							</div>-->
						<div class="knob-wrapper knob-chart with-button">
							<a class="knob-inner"> <span class="percentage easyPieChart"
								data-percent="95"
								style="width: 120px; height: 120px; line-height: 120px;">
									<span>95%</span> <canvas width="120" height="120"></canvas>
							</span>
							</a> <a class="btn btn-large btn-danger" href="belediyeBirimler.jsp">${birim}</a>
						</div>
						<p class="text-center">Birim tablosuna bakınız..</p>
					</div>
				</div>
				<div class="col-sm-3 col-xs-6">
					<div class="box-info animated bounceIn">
						<div class="icon-box">
							<span class="fa-stack"> <i
								class="fa fa-circle fa-stack-2x success"></i> <i
								class="fa fa-flag fa-stack-1x fa-inverse"></i>
							</span>
						</div>
						<div class="text-box">
							<h3>${sikayet}</h3>
							<p>Dilek ve Şikayetler</p>
						</div>
						<div class="clear"></div>
						<div class="knob-wrapper knob-chart with-button">
							<a class="knob-inner"> <span class="percentage easyPieChart"
								data-percent="80"
								style="width: 120px; height: 120px; line-height: 120px;">
									<span>40%</span> <canvas width="120" height="120"></canvas>
							</span>
							</a> <a class="btn btn-large btn-danger"
								href="adminDilekveSikayetler.jsp">${sikayet}</a>
						</div>
						<p class="text-center">Dilek ve Şikayet Eklenebilir.</p>
					</div>

				</div>
				<div class="col-sm-3 col-xs-6">
					<div class="box-info animated bounceIn">
						<div class="icon-box">
							<span class="fa-stack"> <i
								class="fa fa-circle fa-stack-2x success"></i> <i
								class="fa fa-flag fa-stack-1x fa-inverse"></i>
							</span>
						</div>
						<div class="text-box">
							<h3>${dugun}</h3>
							<p>Düğün Hizmeti</p>
						</div>
						<div class="clear"></div>
						<div class="knob-wrapper knob-chart with-button">
							<a class="knob-inner"> <span class="percentage easyPieChart"
								data-percent="80"
								style="width: 120px; height: 120px; line-height: 120px;">
									<span>60%</span> <canvas width="120" height="120"></canvas>
							</span>
							</a> <a class="btn btn-large btn-danger"
								href="adminDugunRandevuGoruntule.jsp">${dugun}</a>
						</div>
						<p class="text-center">Rezervasyon Eklenebilir.</p>
					</div>

				</div>

				<div class="col-sm-3 col-xs-6">


					<div class="box-info animated bounceIn">
						<div class="icon-box">
							<span class="fa-stack"> <i
								class="fa fa-circle fa-stack-2x warning"></i> <i
								class="fa fa-truck fa-stack-1x fa-inverse"></i>
							</span>
						</div>
						<div class="text-box">
							<h3>${nikah}</h3>
							<p>Nikah Randevuları</p>
						</div>
						<div class="clear"></div>
						<!--<div class="progress progress-xs">
							  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 55%">
								<span class="sr-only">55&#37; Complete</span>
							  </div>
							</div>-->
						<div class="knob-wrapper knob-chart with-button">
							<a class="knob-inner"> <span class="percentage easyPieChart"
								data-percent="55"
								style="width: 120px; height: 120px; line-height: 120px;">
									<span>55%</span> <canvas width="120" height="120"></canvas>
							</span>
							</a> <a class="btn btn-large btn-danger"
								href="adminNikahRezervasyonGoruntule.jsp">${nikah}</a>
						</div>
						<p class="text-center">Randevulara bakınız.</p>
					</div>
				</div>
				<div class="col-sm-3 col-xs-6">
					<div class="box-info animated bounceIn">
						<div class="icon-box">
							<span class="fa-stack"> <i
								class="fa fa-circle fa-stack-2x success"></i> <i
								class="fa fa-flag fa-stack-1x fa-inverse"></i>
							</span>
						</div>
						<div class="text-box">
							<h3>${calisan}</h3>
							<p>Belediye Çalışanları</p>
						</div>
						<div class="clear"></div>
						<div class="knob-wrapper knob-chart with-button">
							<a class="knob-inner"> <span class="percentage easyPieChart"
								data-percent="80"
								style="width: 120px; height: 120px; line-height: 120px;">
									<span>60%</span> <canvas width="120" height="120"></canvas>
							</span>
							</a> <a class="btn btn-large btn-danger"
								href="calisanlariGoruntule.jsp">${calisan}</a>
						</div>
						<p class="text-center">Belediye Çalışanları Eklenebilir.</p>
					</div>

				</div>
			</div>

			<div class="box-info animated fadeInDown">
				<h2>
					<strong>Tıklanılma</strong> Sayısı
				</h2>
				<div id="morris-line-chart"
					style="height: 250px; position: relative;">
					<svg height="250" version="1.1" width="985"
						xmlns="http://www.w3.org/2000/svg"
						style="overflow: hidden; position: relative;"> <desc
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created
					with Raphaël 2.1.0</desc> <defs
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs> <text
						x="32.515625" y="211" text-anchor="end"
						font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
						font-size="12px" font-family="sans-serif" font-weight="normal">
					<tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text> <path
						fill="none" stroke="#aaaaaa" d="M45.015625,211H960"
						stroke-width="0.5"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path> <text
						x="32.515625" y="164.5" text-anchor="end"
						font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
						font-size="12px" font-family="sans-serif" font-weight="normal">
					<tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">25</tspan></text>
					<path fill="none" stroke="#aaaaaa" d="M45.015625,164.5H960"
						stroke-width="0.5"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path> <text
						x="32.515625" y="118" text-anchor="end"
						font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
						font-size="12px" font-family="sans-serif" font-weight="normal">
					<tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">50</tspan></text>
					<path fill="none" stroke="#aaaaaa" d="M45.015625,118H960"
						stroke-width="0.5"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path> <text
						x="32.515625" y="71.5" text-anchor="end"
						font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
						font-size="12px" font-family="sans-serif" font-weight="normal">
					<tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">75</tspan></text>
					<path fill="none" stroke="#aaaaaa" d="M45.015625,71.5H960"
						stroke-width="0.5"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path> <text
						x="32.515625" y="25" text-anchor="end"
						font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
						font-size="12px" font-family="sans-serif" font-weight="normal">
					<tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">100</tspan></text>
					<path fill="none" stroke="#aaaaaa" d="M45.015625,25H960"
						stroke-width="0.5"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path> <text
						x="959.9999999999999" y="223.5" text-anchor="middle"
						font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
						font-size="12px" font-family="sans-serif" font-weight="normal"
						transform="matrix(1,0,0,1,0,7)"> <tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2012</tspan></text>
					<text x="807.5722058991328" y="223.5" text-anchor="middle"
						font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
						font-size="12px" font-family="sans-serif" font-weight="normal"
						transform="matrix(1,0,0,1,0,7)"> <tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2011</tspan></text>
					<text x="655.1444117982655" y="223.5" text-anchor="middle"
						font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
						font-size="12px" font-family="sans-serif" font-weight="normal"
						transform="matrix(1,0,0,1,0,7)"> <tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2010</tspan></text>
					<text x="502.7166176973984" y="223.5" text-anchor="middle"
						font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
						font-size="12px" font-family="sans-serif" font-weight="normal"
						transform="matrix(1,0,0,1,0,7)"> <tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2009</tspan></text>
					<text x="349.87121320173435" y="223.5" text-anchor="middle"
						font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
						font-size="12px" font-family="sans-serif" font-weight="normal"
						transform="matrix(1,0,0,1,0,7)"> <tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2008</tspan></text>
					<text x="197.44341910086717" y="223.5" text-anchor="middle"
						font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
						font-size="12px" font-family="sans-serif" font-weight="normal"
						transform="matrix(1,0,0,1,0,7)"> <tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2007</tspan></text>
					<text x="45.015625" y="223.5" text-anchor="middle"
						font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
						font-size="12px" font-family="sans-serif" font-weight="normal"
						transform="matrix(1,0,0,1,0,7)"> <tspan dy="4"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2006</tspan></text>
					<path fill="none" stroke="#d10d0d"
						d="M45.015625,43.599999999999994C83.1225735252168,55.224999999999994,159.33647057565037,78.475,197.44341910086717,90.1C235.55036762608398,101.725,311.76426467651754,136.6,349.87121320173435,136.6C388.08256432565037,136.6,464.5052665734824,90.1,502.7166176973984,90.1C540.8235662226152,90.1,617.0374632730487,136.6,655.1444117982655,136.6C693.2513603234823,136.6,769.465257373916,101.725,807.5722058991328,90.1C845.6791544243496,78.475,921.8930514747831,55.224999999999994,959.9999999999999,43.599999999999994"
						stroke-width="3"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path> <path
						fill="none" stroke="#5cb85c"
						d="M45.015625,25C83.1225735252168,36.625,159.33647057565037,59.875,197.44341910086717,71.5C235.55036762608398,83.125,311.76426467651754,118,349.87121320173435,118C388.08256432565037,118,464.5052665734824,71.5,502.7166176973984,71.5C540.8235662226152,71.5,617.0374632730487,118,655.1444117982655,118C693.2513603234823,118,769.465257373916,83.125,807.5722058991328,71.5C845.6791544243496,59.875,921.8930514747831,36.625,959.9999999999999,25"
						stroke-width="3"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path> <circle
						cx="45.015625" cy="43.599999999999994" r="4" fill="#d10d0d"
						stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="197.44341910086717" cy="90.1" r="7" fill="#d10d0d"
						stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="349.87121320173435" cy="136.6" r="4" fill="#d10d0d"
						stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="502.7166176973984" cy="90.1" r="4" fill="#d10d0d"
						stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="655.1444117982655" cy="136.6" r="4" fill="#d10d0d"
						stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="807.5722058991328" cy="90.1" r="4" fill="#d10d0d"
						stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="959.9999999999999" cy="43.599999999999994" r="4"
						fill="#d10d0d" stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="45.015625" cy="25" r="4" fill="#5cb85c" stroke="#ffffff"
						stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="197.44341910086717" cy="71.5" r="7" fill="#5cb85c"
						stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="349.87121320173435" cy="118" r="4" fill="#5cb85c"
						stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="502.7166176973984" cy="71.5" r="4" fill="#5cb85c"
						stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="655.1444117982655" cy="118" r="4" fill="#5cb85c"
						stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="807.5722058991328" cy="71.5" r="4" fill="#5cb85c"
						stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle> <circle
						cx="959.9999999999999" cy="25" r="4" fill="#5cb85c"
						stroke="#ffffff" stroke-width="1"
						style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle></svg>
					<div class="morris-hover morris-default-style"
						style="left: 156.443px; top: 81px;">
						<div class="morris-hover-row-label">2007</div>
						<div class="morris-hover-point" style="color: #5CB85C">
							Series A: 75</div>
						<div class="morris-hover-point" style="color: #D10D0D">
							Series B: 65</div>
					</div>
				</div>
			</div>

			<div class="box-info animated fadeInDown">
				<h2>
					<strong>İletişim</strong> Bilgileri
				</h2>
				<div class="additional-btn">
					<a class="additional-icon" href="#"><i class="fa fa-refresh"></i></a>
					<a class="additional-icon" href="#" data-toggle="collapse"
						data-target="#quick-post"><i class="fa fa-chevron-down"></i></a>
				</div>

				<div id="quick-post" class="collapse in">
					<form role="form" action="adminGonder">
						<div class="form-group">
							<p>Lütfen bilgi almak için birşeyler yazın.</p>
							<input type="text" class="form-control" name="hataname"
								placeholder="Type someting here">
						</div>
						<div class="form-group">
							<select class="form-control selectpicker" style="display: none;" name ="hatasubject">
								<option value="" selected="">Konu Kategorisi Seçiniz</option>
								<option value="Mobil Teknoloji">Mobil Teknoloji</option>
								<option value="Web Programlama">Web Programlama</option>
								<option value="Sistem Altyapısı">Sistem Altyapısı</option>
							</select>

						</div>
						<div class="form-group">
							<textarea class="form-control" name="hatacomment"
								style="height: 140px; resize: none"></textarea>
						</div>
						<div class="row">
							<div class="col-md-6">
								<p class="quick-post">
									<a data-toggle="tooltip" title="Insert an image"><i
										class="fa fa-picture-o"></i></a> <a data-toggle="tooltip"
										title="Insert a video"><i class="fa fa-video-camera"></i></a>
									<a data-toggle="tooltip" title="Attach a file"><i
										class="fa fa-paperclip"></i></a>
								</p>
							</div>
							<div class="col-md-6">
								<button type="submit" class="btn btn-sm btn-success">Gönder</button>
								<button type="submit" class="btn btn-sm btn-danger">Yoksay</button>
							</div>
						</div>
					</form>
				</div>
			</div>



		</div>

	</div>

	<footer> © 2015 Bu panel <a href="">Ömer Yaylaaltı</a>
	tarafından tasarlanmıştır. Samsun, Türkiye </footer>

	</div>
	<!-- ============================================================== -->
	<!-- End content here -->
	<!-- ============================================================== -->




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
	<script src="assets/scripts/custom/calendar.js"></script>

</body>
</html>