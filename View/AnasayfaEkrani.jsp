<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="com.omeryaylaalti.project.dao.BelediyeBirimDAO"%>
<%@ page import="com.omeryaylaalti.project.model.BelediyeBirim"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SAÇAK BELDESİ</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">

<!-- Custom Fonts -->
<link href='http://fonts.gstatic.com/s/opensans/v13/EInbV5DfGHOiMmvb1Xr-hojoYw3YTyktCCer_ilOlhE.woff2' rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="assets/font-awesome/css/font-awesome.min.css" type="text/css">

<!-- Plugin CSS -->
<link rel="stylesheet" href="assets/css/animate.min.css" type="text/css">

<!-- Custom CSS -->
<link rel="stylesheet" href="assets/css/creative.css" type="text/css">


</head>

<body id="page-top">

	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">SAÇAK
					BELDESİ</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="page-scroll" href="#baskan">BAŞKAN</a></li>
					<li><a class="page-scroll" href="#kurumsal">KURUMSAL</a></li>
					<li><a class="page-scroll" href="#hizmetlerimiz">HİZMETLERİMİZ</a></li>
					<li><a class="page-scroll" href="#contact">İLETİŞİM</a></li>
					<li><a class="page-scroll" href="login.jsp">E-BELEDİYE</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<header>
		<div class="header-content">
			<div class="header-content-inner">
				<h1>Hoşgeldiniz..</h1>
				<hr>
				<p>Saçak Belde Belediye Web Sitesine Hoşgeldiniz. Burada
					beldemizle ilgili bilgilere ulaşabilir, merak ettiklerinizi bizimle
					paylaşabilirsiniz.Bütün mesajlarınıza bakılarak ilgi çekenler
					cevaplandırılıcaktır.</p>
				<a href="#baskan" class="btn btn-primary btn-xl page-scroll">Daha
					Fazlası..</a>
			</div>
		</div>
	</header>

	<section class="bg-primary" id="baskan">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">Hangisini seçmek istiyorsun!</h2>
					<hr class="light">
					<nav class="navbar navbar-inverse">
						<div class="container-fluid">
							<div>
								<ul class="nav navbar-nav">
									<li><a class="page-scroll" href="#baskandanMesaj">Başkandan
											Mesaj</a></li>
									<li><a class="page-scroll" href="#baskanaSoruSor">Başkana
											Soru Sor</a></li>
									<li><a class="page-scroll" href="#baskanOzgecmis">Başkanın
											Özgeçmişi</a></li>
								</ul>
							</div>
						</div>
					</nav>
					<p class="text-faded">Burada belde başkanıyla ilgili bilgiler
						yer almaktadır. Başkanımıza iletmek istediğiniz mesajları ilgili
						alana tıklayarak ulaşabilirsiniz.</p>
					<a class="page-scroll" href="#baskandanMesaj"
						class=" page-scroll btn btn-default btn-xl">Daha Fazlası..</a>
				</div>
			</div>
		</div>
	</section>
	<section class="bg-secondary" id="baskandanMesaj">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">Başkanımızdan Mesaj</h2>
					<hr class="light">
					<div class="col-sm-3">
						<div class="thumbnail">
							<img src="assets/img/ramazan.jpg" alt="RamazanYarım" width="300"
								height="200">
							<h5>
								Başkan<br> <strong>Ramazan YARIM</strong>
							</h5>
							<h6>Saçak Belediye Başkanı</h6>
						</div>
					</div>
					<div class="box-info">
						<p>Halkımızın yaşam kalitesinin yükseltilmesi ile doğrudan
							ilişkili olan bu yeni görevler, yeni bir hizmet anlayışını da
							zorunlu kılmaktadır. Kendimiz için tanımını yaptığımız bu yeni
							yükümlülükler çerçevesinde, yıllardır ihmal edilmiş temel
							Belediye hizmetlerini de hızlı bir şekilde gerçekleştirmenin yanı
							sıra, ilçemize yeni ve gülümseyen bir çehre kazandırmaya
							çalışmaktayız. Gerek çalışma prensibimiz, gerekse şehrimize
							yaptıklarımız bunun en güzel göstergesi olduğunu düşünmekteyiz.
							Vatandaşlarımız, Belediye’nin kapısının, gerçek sahiplerine
							açıldığını görüp, mutlu olmaktadırlar. Halkımızı modern, çağdaş
							ve standartları yüksek bir ilde yaşatmak için çalışmalarımız
							devam edecektir.</p>
					</div>
					<a class="page-scroll" href="#baskanaSoruSor"
						class="btn btn-default btn-xl">Başkana Soru Sor</a>
				</div>
			</div>
		</div>
	</section>
	<section class="bg-third" id="baskanaSoruSor">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">Başkana Soru Sor</h2>
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
					<br> <a href="#baskanOzgecmis"
						class="page-scroll btn btn-default btn-xl">Başkan Özgeçmiş</a>
				</div>
			</div>
		</div>
	</section>
	<section class="bg-secondary" id="baskanOzgecmis">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<div class="col-sm-3">
						<div class="thumbnail">
							<img src="assets/img/ramazan.jpg" alt="RamazanYarım" width="300"
								height="200">
							<h5>
								Başkan<br> <strong>Ramazan YARIM</strong>
							</h5>
							<h6>Saçak Belediye Başkanı</h6>
						</div>
					</div>
					<div class="box-info">
						<h2>Ramazan YARIM</h2>
						<p>1965 yılında Çaykara’da dünyaya gelen Erdoğan TOK, çocukluk
							ve gençlik yıllarını Ordu’da geçirmiştir. Babasının işleri
							dolayısıyla Ordu’nun Bucak mahallesine yerleşen Erdoğan TOK,
							eğitim hayatının önemli bir dönemini çocukluk ve gençlik
							hayallerinin izlerini taşıdığı bu şehirde tamamlamıştır. Çocukluk
							yıllarında aktif kişiliğiyle dikkat çeken Erdoğan TOK, İlkokul ve
							Lise yıllarında da birçok sosyal ve kültürel aktiviteler
							içerisinde bulunmuştur. Aksiyoner bir kişiliğe sahip olan Erdoğan
							TOK, Gençlik çağında da siyasi ve sosyal çalışmalara katılarak
							önemli görevleri başarıyla yerine getirmiştir. Ordu İmam Hatip
							Lisesi’nden mezun olan Erdoğan TOK, Lise eğitimini tamamladıktan
							sonra ailesiyle birlikte Samsun’un Cedit Mahallesine
							yerleşmiştir. Başarılı bir eğitim dönemi geçiren Erdoğan TOK, ilk
							olarak Anadolu Üniversitesi İşletme Fakültesinden, ardından
							Ondokuz Mayıs Üniversitesi İlahiyat Fakültesi’nden mezun oldu.</p>
					</div>
					<a href="#kurumsal" class="page-scroll btn btn-default btn-xl">Kurumsal</a>
				</div>
			</div>
		</div>
	</section>

	<section class="bg-dark" id="kurumsal">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">Beldemizin Kurumsal Yapılanması</h2>
					<hr class="light">
					<nav class="navbar navbar-default">
						<div class="container-fluid">
							<div>
								<ul class="nav navbar-nav">
									<li><a href="#beldeTeskilat">Beldemizin Teşkilatı</a></li>
									<li><a href="#beldeMeclis">Belde Meclis Üyeleri</a></li>
									<li><a href="#beldeBirimler">Belde Birimleri</a></li>
								</ul>

							</div>
						</div>
					</nav>
					<p class="text-faded">Burada beldemizle ilgili kurumsal
						işlemleri gerçekleştirebilirsiniz.</p>
					<a href="#beldeTeskilat"
						class=" page-scroll btn btn-default btn-xl">Daha Fazlası..</a>
				</div>
			</div>
		</div>
	</section>

	<section class="bg-third" id="beldeTeskilat">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Beldemizin Teşkilat Şeması</h2>
				</div>
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<div class="col-sm-20">
						<div class="thumbnail">
							<img src="assets/img/teskilat.jpg" alt="RamazanYarım" width="600"
								height="400">
							<h5>
								Belediye<br> <strong>Teşkilat Şemamız</strong>
							</h5>
						</div>
					</div>
					<a href="#beldeMeclis" class=" page-scroll btn btn-default btn-xl">Meclis
						Üyeleri</a>
				</div>

			</div>
		</div>
	</section>

	<section class="bg-secondary" id="beldeMeclis">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Beldemizin Meclis Üyeleri</h2>
				</div>
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<div class="col-sm-4">
						<div class="thumbnail">
							<img src="assets/img/ramazan.jpg" alt="Image gallery"
								title="Image title here" width="200" height="200"
								class="mfp-fade">
							<p>
								<strong>Yasin BARAN</strong>
							</p>
							<p>Meclis Üyesi</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="thumbnail">
							<img src="assets/img/ramazan.jpg" alt="Image gallery"
								title="Image title here" width="200" height="200"
								class="mfp-fade">
							<p>
								<strong>Utku Can KÜÇÜK</strong>
							</p>
							<p> Meclis Üyesi</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="thumbnail">
							<img src="assets/img/ramazan.jpg" alt="Image gallery"
								title="Image title here" width="200" height="200"
								class="mfp-fade">
							<p>
								<strong>Osman TÜYSÜZ</strong>
							</p>
							<p>Meclis Üyesi</p>
						</div>
					</div>
					<a href="#beldeBirimler" class="page-scroll btn btn-default btn-xl">Belediyemizin
						Birimleri</a>
				</div>
			</div>
		</div>
	</section>

	<section class="bg-third" id="beldeBirimler">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Beldemizin Birimleri</h2>
				</div>
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<sql:setDataSource var="database" driver="org.postgresql.Driver"
						url="jdbc:postgresql://localhost:5432/MyDB" user="postgres"
						password="1234" />

					<sql:query var="listUrun" dataSource="${database}">
       						 SELECT * FROM belediyebirim;
   		 					</sql:query>
					<div id="sales-report" class="collapse in">
						<div class="table-responsive">
							<table data-sortable="" class="table table-striped"
								data-sortable-initialized="true">
								<thead>
									<tr>
										<th>Birim Numarası</th>
										<th>Birim Adı</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="urun" items="${listUrun.rows}">
										<tr>
											<td><c:out value="${urun.birimid}" /></td>
											<td><c:out value="${urun.birimname}" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="no-padding" id="hizmetlerimiz">
		<div class="container-fluid">
			<div class="row no-gutter">
				<div class="col-lg-4 col-sm-6">
					<a href="haberGoruntuleme.jsp" class="portfolio-box"> <img
						src="assets/img/portfolio/1.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">HABERLER</div>
								<div class="project-name">Güncel Haberlere Buradan
									Ulaşabilirsiniz!</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="assets/img/portfolio/2.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">DUYURULAR</div>
								<div class="project-name">Güncel Duyurulara Buradan
									Ulaşabilirsiniz!</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="assets/img/portfolio/3.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">FOTOĞRAF GALERİSİ</div>
								<div class="project-name">Güncel Fotoğraflara Buradan
									Ulaşabilirsiniz!</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="assets/img/portfolio/4.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">PROJELERİMİZ</div>
								<div class="project-name">Hedeflenen Projelere Buradan
									Ulaşabilirsiniz!</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="assets/img/portfolio/8.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">BELDE HİZMETLERİ</div>
								<div class="project-name">Çevre Düzenleme & Şehircilik</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="assets/img/portfolio/7.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">NİKAH & DÜĞÜN</div>
								<div class="project-name">Nikah & Düğün Hizmetleri</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>

	<aside class="bg-dark">
		<div class="container text-center">
			<div class="call-to-action">
				<h3>Kullanıcı İşlemleri için E-Belediye tarafına geçiş yapınız!</h3>
				<a href="#" class="page-scroll btn btn-default btn-xl wow tada">E-BELEDİYE</a>
			</div>
		</div>
	</aside>

	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">Bizimle İletişim Kurabilirsiniz!</h2>
					<hr class="primary">
					<p>Web sitemizin genel hali bu şekildedir. Beğendiklerinizi,
						beğenmediklerinizi bizimle paylaşırsanız size yardımcı olabiliriz.</p>
				</div>
				<div class="col-lg-4 col-lg-offset-2 text-center">
					<i class="fa fa-phone fa-3x wow bounceIn"></i>
					<p>0376 776 18 18</p>
				</div>
				<div class="col-lg-4 text-center">
					<i class="fa fa-envelope-o fa-3x wow bounceIn" data-wow-delay=".1s"></i>
					<p>
						<a href="mailto:your-email@your-domain.com">sacakbeldesi@bel.tr</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- jQuery -->
	<script src="assets/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="assets/js/jquery.easing.min.js"></script>
	<script src="assets/js/jquery.fittext.js"></script>
	<script src="assets/js/wow.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="assets/js/creative.js"></script>

</body>

</html>
