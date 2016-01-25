<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  page import="com.omeryaylaalti.project.dao.HaberEkleDAO"%>
<%@  page import="com.omeryaylaalti.project.model.HaberEkle"%>
<%
	HaberEkleDAO dao = new HaberEkleDAO();
	String resim1 = dao.resimGetir1();
	String resim2 = dao.resimGetir2();
	String resim3 = dao.resimGetir3();
	String resim4 = dao.resimGetir4();
	request.setAttribute("resim1", resim1);
	request.setAttribute("resim2", resim2);
	request.setAttribute("resim3", resim3);
	request.setAttribute("resim4", resim4);
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Haberleri Goruntule</title>

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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
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
				<a class="navbar-brand topnav" href="#haber">Haberler</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1"></div>
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
						<h1>Beldemizden Haberler</h1>
						<h3>Beldemizle ilgili haberlere buradan ulaşabilirsiniz.</h3>
						<hr class="intro-divider">

					</div>
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.intro-header -->

	<!-- Page Content -->

	<a name="haber"></a>
	<div class="content-section-a">

		<div class="container">
			<br>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="<%=request.getAttribute("resim1")%>" alt="Haber1"
							width="460" height="345">
					</div>
					<div class="item">
						<img src="<%=request.getAttribute("resim2")%>" alt="Haber2"
							width="460" height="345">
					</div>
					<div class="item">
						<img src="<%=request.getAttribute("resim3")%>" alt="Haber3"
							width="460" height="345">
					</div>
					<div class="item">
						<img src="<%=request.getAttribute("resim4")%>" alt="Haber4"
							width="460" height="345">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>


	</div>
	<!-- /.content-section-a -->



	</div>
	<!-- /.banner -->

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="list-inline">
						<li><a href="#">Haberleri Görüntüle</a></li>
						<li class="footer-menu-divider">&sdot;</li>
					</ul>
					<p class="copyright text-muted small">By &copy; Ömer Yaylaaltı
						/ 2016</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- jQuery -->
	<script src="assets/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="assets/js/bootstrap.min.js"></script>
</body>

</html>
