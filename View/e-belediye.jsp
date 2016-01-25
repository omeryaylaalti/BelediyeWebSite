<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.omeryaylaalti.project.controller.LoginServlet"%>
<%@ page
	import="com.omeryaylaalti.project.controller.DugunSalonuServlet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page
	import="com.omeryaylaalti.project.controller.NikahRandevuServlet"%>
<%@ page import="com.omeryaylaalti.project.dao.NikahRandevuDAO"%>

<%
	HttpSession tarih = request.getSession();

	HttpSession ses = request.getSession();
%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>E-Belediye İşlemleri</title>

<!-- Bootstrap Core CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="assets/css/landing-page.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="assets/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="assets/jquery.datetimepicker.css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<style type="text/css">
.custom-date-style {
	background-color: red !important;
}

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
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top topnav"
		role="navigation">
		<div class="container topnav">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand topnav" href="#">Saçak Belediyesi
					E-Belediye</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#nikah">Nikah Rezervasyon</a></li>
					<li><a href="#dugun">Düğün Salonu Hizmetleri</a></li>
					<li><a href="#contact">Dilek ve Şikayetler</a></li>
					<li><a href="#baskanaSoruSor">Başkana Soru Sor</a></li>
					<c:if test="${not empty name}">
						<li><a href="#"><i class="fa fa-user"></i>${name.getName()}</a></li>
					</c:if>
					<li><a href="login.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Çıkış Yap</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>


	<!-- Header -->
	<a name="name"></a>
	<div class="intro-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="intro-message">
						<h1>E-Belediye</h1>
						<h3>Belediyemizin üyelerine sağladığı hizmetlere
							ulaşabilirsiniz.</h3>
						<hr class="intro-divider">
						<ul class="list-inline intro-social-buttons">
							<li><a href="https://twitter.com/SBootstrap"
								class="btn btn-default btn-lg"><i
									class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
							</li>
							<li><a
								href="https://github.com/IronSummitMedia/startbootstrap"
								class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i>
									<span class="network-name">Github</span></a></li>
							<li><a href="#" class="btn btn-default btn-lg"><i
									class="fa fa-linkedin fa-fw"></i> <span class="network-name">Linkedin</span></a>
							</li>
						</ul>
					</div>
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.intro-header -->

	<!-- Page Content -->

	<a name="nikah"></a>
	<div class="content-section-b">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
					<h3 class="section-heading">
						Nikah Rezervasyon İşlemleri<br>
					</h3>
					<hr class="section-heading-spacer">
					<div class="clearfix"></div>
					<form class="form-horizontal" role="form"
						action="kullanicitarihSorgu">
						<p align="left">Lütfen Tarih Seçiminizi Yapınız!</p>
						<p align="left">Kırmızı renkli tarihlerin boş olan saatleri
							varsa rezervasyon yapabilirsiniz!</p>
						<p align="left">Yeşil renkli tarihlerden izin verilen saatlere
							seçim yapabilirsiniz!</p>
						<p align="left">
							<strong>Rezervasyon tarihinden 1 gün önceye kadar ödeme
								yapmazsanız rezervasyon kaydınız silinir!</strong>
						</p>
						<div class="form-group">
							<label class="col-sm-2 control-label">Tarih</label>
							<div class="col-sm-3">
								<input type="text" id="datepicker1" name="tarih" required />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-success">Sorgula</button>
							</div>
						</div>
					</form>
				</div>
				<div class="col-lg-5 col-sm-pull-6  col-sm-6">
					<img class="img-responsive" src="assets/img/nikah.jpg" alt="">
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.content-section-b -->
	<a name="nikahrandevu"></a>
	<div class="content-section-a">
		<div class="container">
			<div class="box-info full animated fadeInDown">
				<h2 align="center">
					<strong>Nikah Rezervasyon İşlemleri</strong>
				</h2>
				<div class="box-info animated fadeInDown">
					<form class="form-horizontal" role="form" action="nikahEkle">
						<p align="left">
							<strong>Seçilen tarihte rezerve edilen saatler
								aşağıdadır. Aynı saate seçim yapılamaz!</strong>
						</p>
						<div class="form-group">
							<label class="col-sm-2 control-label">Dolu Saatler</label>
							<div class="col-sm-3">
								<input type="text" required
									value="<%=tarih.getAttribute("saat")%>" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Tarih</label>
							<div class="col-sm-3">
								<input type="text" name="date" required
									value="<%=tarih.getAttribute("date")%>" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Saat</label>
							<div class="col-sm-3">
								<input type="text" id="datepicker" name="time" required />
							</div>
						</div>

						<div class="form-group">
							<label for="input-text-help" class="col-sm-2 control-label">Erkek
								İsim :</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="erkekname"
									id="input-text-help" required>
							</div>
						</div>
						<div class="form-group">
							<label for="input-text-help" class="col-sm-2 control-label">Erkek
								Tc Kimlik No:</label>
							<div class="col-sm-10">
								<input type="text" id="tckimlikno" name="erkektc"
									onblur="tckimlikkontorolu(this); " maxlength="11" /> <span
									id="sonuc"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="input-text-help" class="col-sm-2 control-label">Bayan
								İsim :</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="bayanname"
									id="input-text-help" required>
							</div>
						</div>
						<div class="form-group">
							<label for="input-text-help" class="col-sm-2 control-label">Bayan
								Tc Kimlik No:</label>
							<div class="col-sm-10">
								<input type="text" id="tckimlikno1" name="bayantc"
									onblur="tckimlikkontorolu1(this); " maxlength="11" /> <span
									id="sonuc1" required></span>
							</div>
						</div>
						<div class="form-group">
							<label for="input-text-help" class="col-sm-2 control-label">E_mail
								adresi:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="email"
									id="input-text-help" required>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-success">Rezervasyon
									Yap</button>
							</div>
						</div>
					</form>
				</div>
			</div>

			<!-- /.content-section-a -->
			<a name="dugun"></a>
			<div class="content-section-b">
				<div class="container">
					<div class="row">
						<div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
							<hr class="section-heading-spacer">
							<div class="clearfix"></div>
							<h2 class="section-heading">
								Düğün Salonu Hizmetleri<br>
							</h2>
							<p class="lead">Buradan Düğün Salonu seçimi yaparak boş olan
								tarihlerde belirlenen kriterleri sağlayarak düğün salonu hizmeti
								alabilirsiniz.</p>
						</div>
						<div class="col-lg-5 col-sm-pull-6  col-sm-6">
							<img class="img-responsive" src="assets/img/dugun1.jpg" alt="">
						</div>
					</div>

				</div>
				<!-- /.container -->

			</div>
			<!-- /.content-section-b -->

			<div class="content-section-a">
				<div class="container">
					<div class="box-info full animated fadeInDown">
						<h2 align="center">
							<strong>Düğün Salonu Seçimi</strong>
						</h2>
						<h5 align="center">Üye kullanıcı düğün salonu seçimi yapıp,
							boş tarihe kayıt ekleyebilir.</h5>
						<div class="box-info animated fadeInDown">
							<form class="form-horizontal" role="form"
								action="dugunsalonusecimi">
								<div class="form-group">
									<select class="form-control" name="dugunsalonu">
										<option value="Gazi Düğün Salonu">Gazi Düğün Salonu</option>
										<option value="Saçak Beldesi Sosyal Tesisleri">Saçak
											Beldesi Sosyal Tesisleri</option>
										<option value="Çerkeş Belediyesi Sosyal Tesisleri">Çerkeş
											Belediyesi Sosyal Tesisleri</option>
										<option value="Atkaracalar Düğün Salonu">Atkaracalar
											Düğün Salonu</option>
									</select>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">Tarih</label>
									<div class="col-sm-3">
										<input type="date" class="form-control datepicker-input"
											name="date" placeholder="yyyy-mm-dd" required>
									</div>
								</div>

								<div class="form-group">
									<label for="input-text-help" class="col-sm-2 control-label">Kiralayan
										İsim-Soyisim:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="kiralayanname"
											id="input-text-help" required>
									</div>
								</div>
								<div class="form-group">
									<label for="input-text-help" class="col-sm-2 control-label">Açıklama(Özel
										notlar vs.):</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="comment"
											id="input-text-help" required>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button type="submit" class="btn btn-success">Kayıt
											Ekle</button>
									</div>
									<p align="center"><%=ses.getAttribute("mesaj")%></p>
								</div>
							</form>
						</div>
					</div>
					<!-- /.container -->

				</div>
				<!-- /.content-section-a -->
				<a name="contact"></a>
				<div class="banner">

					<div class="container">
						<div class="box-info animated fadeInDown">
							<h2 align="center">
								<strong>Dilek ve Şikayetler</strong>
							</h2>
							<div id="quick-post" class="collapse in">
								<form role="form" action="SikayetEkleServlet">
									<div class="form-group">
										<p>Lütfen konuyla ilgili bir bilgi giriniz...</p>
										<input type="text" name="sikayetsubject" class="form-control"
											required>
									</div>
									<div class="form-group">
										<p>Lütfen dilek veya şikayetinizle ilgili açıklama
											giriniz...</p>
										<textarea class="form-control" name="sikayetcomment"
											style="height: 120px; resize: none" required></textarea>
									</div>
									<div class="col-md-6">
										<button type="submit" class="btn btn-sm btn-success">Gönder</button>
										<button type="clear" class="btn btn-sm btn-danger">Yoksay</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- /.container -->
				</div>
				<section class="bg-third" id="baskanaSoruSor">
					<div class="container">
						<div class="row">
							<div class="col-lg-8 col-lg-offset-2 text-left">
								<h2 class="section-heading">Başkana Soru Sormak
									İsterseniz...</h2>
								<hr class="light">
								<form role="form" id="contactForm" novalidate="novalidate"
									class="bootstrap-validator-form" action="ZiyaretciMesajEkle">
									<div class="form-group">
										<label>İsim-Soyisim</label> <input type="text"
											class="form-control" name="gonderenname"> <small
											class="help-block" style="display: none;"></small>
									</div>
									<div class="form-group">
										<label>E-Mail Adresiniz</label> <input type="text"
											class="form-control" name="gonderenemail"> <small
											class="help-block" style="display: none;"></small>
									</div>
									<div class="form-group">
										<label>Konu</label> <input type="text" class="form-control"
											name="mesajkonu"> <small class="help-block"
											style="display: none;"></small>
									</div>
									<div class="form-group">
										<label>Mesajınız</label>
										<textarea class="form-control" name="mesajicerik"
											style="height: 140px; resize: none;"></textarea>
										<small class="help-block" style="display: none;"></small>
									</div>
									<button type="submit" class="btn btn-default btn-l">GÖNDER</button>
								</form>
							</div>
						</div>
					</div>
				</section>
				<!-- /.banner -->

				<!-- Footer -->
				<footer>
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<ul class="list-inline">
									<li><a href="#">Anasayfa</a></li>
									<li class="footer-menu-divider">&sdot;</li>
									<li><a href="#nikah">Nikah Rezervasyon</a></li>
									<li class="footer-menu-divider">&sdot;</li>
									<li><a href="#dugun">Düğün Salonu İşlemleri</a></li>
									<li class="footer-menu-divider">&sdot;</li>
									<li><a href="#contact">Dilek ve Şikayetler</a></li>
								</ul>
								<p class="copyright text-muted small">By &copy; Ömer
									Yaylaaltı / 2016</p>
							</div>
						</div>
					</div>
				</footer>

				<!-- jQuery -->
				<script src="assets/js/jquery.js"></script>

				<!-- Bootstrap Core JavaScript -->
				<script src="assets/js/bootstrap.min.js"></script>
				<script src="assets/build/jquery.datetimepicker.full.js"></script>

				<script>
					$.datetimepicker.setLocale('tr');

					var dolu = [
							[
				<%=NikahRandevuDAO.YilGetir().get(0)%>
					,
				<%=NikahRandevuDAO.AyGetir().get(0)%>
					,
				<%=NikahRandevuDAO.GunGetir().get(0)%>
					],
							[
				<%=NikahRandevuDAO.YilGetir().get(1)%>
					,
				<%=NikahRandevuDAO.AyGetir().get(1)%>
					,
				<%=NikahRandevuDAO.GunGetir().get(1)%>
					],
							[
				<%=NikahRandevuDAO.YilGetir().get(2)%>
					,
				<%=NikahRandevuDAO.AyGetir().get(2)%>
					,
				<%=NikahRandevuDAO.GunGetir().get(2)%>
					],
							[
				<%=NikahRandevuDAO.YilGetir().get(3)%>
					,
				<%=NikahRandevuDAO.AyGetir().get(3)%>
					,
				<%=NikahRandevuDAO.GunGetir().get(3)%>
					] ];

					var tatil = [ [ 2016, 04, 23 ], [ 2016, 5, 19 ],
							[ 2016, 5, 1 ], [ 2016, 7, 4 ], [ 2016, 7, 5 ],
							[ 2016, 7, 6 ], [ 2016, 7, 7 ], [ 2016, 8, 30 ],
							[ 2016, 9, 12 ], [ 2016, 9, 13 ], [ 2016, 9, 14 ],
							[ 2016, 9, 15 ], [ 2016, 10, 28 ], [ 2016, 10, 29 ] ];
					var today = new Date();
					var tomorrow = new Date();
					tomorrow.setDate(today.getDate() + 1);

					$('#datepicker1').datetimepicker({
						timepicker : false,
						format : 'd/m/Y',
						minTime : '09:00',
						showOn : "none",
						minDate : tomorrow,
						dateFormat : "DD dd-mm-yy",
						onSelect : function(dateText) {
							minDateChange;
						},
						inputOffsetX : 5,
						beforeShowDay : noWeekendsOrHolidaysOrBlockedDates,

					});

					function noWeekendsOrHolidaysOrBlockedDates(date) {
						return setHoliDays(date);
					}

					function noTimes(date) {
						return setTimes(date);
					}

					// set holidays function which is configured in beforeShowDay
					function setHoliDays(date) {
						var day = date.getDay();
						if ((day == 0))
							return [ false, '' ]

						for (i = 0; i < dolu.length; i++) {
							if (date.getFullYear() == dolu[i][0]
									&& date.getMonth() == dolu[i][1] - 1
									&& date.getDate() == dolu[i][2]) {
								return [ true, 'custom-date-style' ];
							}
						}

						for (i = 0; i < tatil.length; i++) {
							if (date.getFullYear() == tatil[i][0]
									&& date.getMonth() == tatil[i][1] - 1
									&& date.getDate() == tatil[i][2]) {
								return [ false, 'custom-style' ];
							}
						}

						return [ true, 'event' ];
					}
				</script>
				<script>
					$.datetimepicker.setLocale('tr');
					$('#datepicker').datetimepicker(
							{
								allowTimes : [ '09:00', '11:00', '13:00',
										'15:00', '17:00' ],
								datepicker : false,
								minTime : '09:00',
								showOn : "none",
								format : 'H:i',
							});
				</script>
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
							sonuc.innerHTML = "Doğru";
						} else {
							sonuc.className = " ";
							sonuc.innerHTML = "Yanlış";
						}
					}
				</script>
				<script>
					function ge(a1) {
						return document.getElementById(a1);
					}

					function tckimlikkontorolu1(tcno) {
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
						var sonuc = ge("sonuc1");

						if (onunbirlerbas == tcno.substring(10, 11)) {
							sonuc.className = "dogru";
							sonuc.innerHTML = "Doğru";
						} else {
							sonuc.className = " ";
							sonuc.innerHTML = "Yanlış";
						}
					}
				</script>
</body>

</html>
