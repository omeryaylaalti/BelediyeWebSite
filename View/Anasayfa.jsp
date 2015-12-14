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

div #giris {
	text-align: right
}

s
div #label {
	background-position: top;
	background-color: #ffff;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="col-sm-1">
			<img src="assets/img/sacak.jpg" class="img-circle person"
				alt="Random Name" width="155" height="155">
		</div>
		<div class="container-fluid" id="giris">
			<form class="navbar-form navbar-right" role="search">
				<div class="form-group" id="giris">
					<form action="demo_form.asp" method="post">
						<input type="text" name="fname" required> <input
							type="submit" value="Sitede Ara">
					</form>
					<br> <br> <a
						href="https://www.facebook.com/omer.yaylaalti" target="blank"
						id="giris"><button type="button"
							href="https://www.facebook.com/omer.yaylaalti "
							class="btn btn-primary btn-facebook">
							<i class="fa fa-facebook"></i>Facebook
						</button></a> <a href="https://twitter.com/omer_y34" target="blank"><button
							type="button" class="btn  btn-info btn-twitter">
							<i class="fa fa-twitter"></i> Twitter
						</button></a> <a href="login.jsp" class="btn btn-success "><span
						class="glyphicon glyphicon-user"></span>ONLİNE İŞLEMLER</a> <br> <br>
					
					<!-- <form method="GET" action="GirisYapServlet" class="form-inline"
						role="form">
						<div class="form-group">
							<label class="sr-only" for="exampleInputEmail2">Email
								address</label> <input type="email" name="email" class="form-control"
								id="exampleInputEmail2" placeholder="Enter email">
						</div>
						<div class="form-group">
							<label class="sr-only" for="exampleInputPassword2">Password</label>
							<input type="password" name="password" class="form-control"
								id="exampleInputPassword2" placeholder="Password">
						</div>
						<button type="submit" class="btn btn-default">Giriş Yap</button>
					</form> -->

				</div>
			</form>
		</div>
	</div>

	<br>
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">SAÇAK BELDESİ</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">ANASAYFA</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">BAŞKAN <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Özgeçmişi</a></li>
							<li><a href="#">Başkandan Mesaj</a></li>
							<li><a href="#">Fotoğraf Galerisi</a></li>
							<li><a href="#">Başkana Soru Sor</a></li>
							<li><a href="#">Başkanla Fotoğraflarım</a></li>
						</ul></li>
					<li><a href="kurumsal.jsp">KURUMSAL</a></li>
					<li><a href="#">HİZMETLERİMİZ</a></li>
					<li><a href="#">PROJELERİMİZ</a></li>
					<li><a href="#">HABERLER</a></li>
				</ul>

			</div>
		</div>
		</nav>
		<div class="col-sm-8">
			<div class="box-info full animated fadeInDown">
				<ul class="nav nav-tabs nav-justified">
					<li class="active"><a href="#about" data-toggle="tab"><i
							class="fa fa-user"></i>Güncel Haberler</a></li>
					<li><a href="#edit-profile" data-toggle="tab"><i
							class="fa fa-pencil"></i> Fotoğraf Albümü</a></li>
					<li><a href="#user-activities" data-toggle="tab"><i
							class="fa fa-laptop"></i> Duyurular</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content ">

					<div class="tab-pane active animated fadeInRight" id="about">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<img src="assets/img/haber1.jpg" alt="New York" width="1200"
										height="700">
									<div class="carousel-caption">
										<h3>Haber1</h3>
										<p>Belediyenin güncel ilk haberi</p>
									</div>
								</div>

								<div class="item">
									<img src="assets/img/haber2.jpg" alt="Chicago" width="1200"
										height="700">
									<div class="carousel-caption">
										<h3>Haber2</h3>
										<p>Burada 2.sırada güncellenen haber yer alacak.</p>
									</div>
								</div>

								<div class="item">
									<img src="assets/img/haber3.jpg" alt="Los Angeles" width="1200"
										height="700">
									<div class="carousel-caption">
										<h3>Haber 3</h3>
										<p>Burada güncellenen 3.sırada haber yer alacak.</p>
									</div>
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel" role="button"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								role="button" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</div>

					<div class="tab-pane animated fadeInRight col-sm-12"
						id="edit-profile">
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="assets/img/belediye1.jpg" alt="San Francisco" width="400"
									height="300">
								<p>
									<strong>Köy İçi Resimler</strong>
								</p>
								<p>Sun. 29 November 2015</p>
								<button class="btn">Albüme Git</button>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="assets/img/belediye1.jpg" alt="San Francisco" width="400"
									height="300">
								<p>
									<strong>Mezarlık Resimleri</strong>
								</p>
								<p>Sun. 29 November 2015</p>
								<button class="btn">Albüme Git</button>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="assets/img/belediye1.jpg" alt="San Francisco" width="400"
									height="300">
								<p>
									<strong>Mahallemizin Resimleri</strong>
								</p>
								<p>Sun. 29 November 2015</p>
								<button class="btn">Albüme Git</button>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="assets/img/belediye1.jpg" alt="San Francisco" width="400"
									height="300">
								<p>
									<strong>Belediye Resimleri</strong>
								</p>
								<p>Sun. 29 November 2015</p>
								<button class="btn">Albüme Git</button>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="assets/img/belediye1.jpg" alt="San Francisco" width="400"
									height="300">
								<p>
									<strong>Hizmetlerimiz</strong>
								</p>
								<p>Sun. 29 November 2015</p>
								<button class="btn">Albüme Git</button>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="assets/img/belediye1.jpg" alt="San Francisco" width="400"
									height="300">
								<p>
									<strong>Manzara Resimleri</strong>
								</p>
								<p>Sun. 29 November 2015</p>
								<button class="btn">Albüme Git</button>
							</div>
						</div>

					</div>

					<div class="tab-pane animated fadeInRight" id="user-activities">
						<div class="slimScrollDiv"
							style="position: relative; overflow: hidden; width: auto; height: 500px;">
							<div class="scroll-user-widget"
								style="overflow: hidden; width: auto; height: 500px;">
								<ul class="media-list">
									<li class="media"><a href="#">
											<p>
												<strong>John Doe</strong> Uploaded a photo <strong>"DSC000254.jpg"</strong>

											</p>
									</a></li>
									<li class="media"><a href="#">
											<p>
												<strong>John Doe</strong> Created an photo album <strong>"Indonesia
													Tourism"</strong>
											</p>
									</a></li>
									<li class="media"><a href="#">
											<p>
												<strong>Annisa</strong> Posted an article <strong>"Yogyakarta
													never ending Asia"</strong>
											</p>
									</a></li>
									<li class="media"><a href="#">
											<p>
												<strong>Ari Rusmanto</strong>
											</p>
									</a></li>
									<li class="media"><a href="#">
											<p>
												<strong>Hana Sartika</strong> Send you a message <strong>"Lorem
													ipsum dolor..."</strong>
											</p>
									</a></li>
									<li class="media"><a href="#">
											<p>
												<strong>Johnny Depp</strong>
											</p>
									</a></li>
									<li class="media"><a href="#">
											<p>
												<strong>John Doe</strong> Uploaded a photo <strong>"DSC000254.jpg"</strong>
												<br> <i>2 minutes ago</i>
											</p>
									</a></li>
									<li class="media"><a href="#">
											<p>
												<strong>John Doe</strong> Created an photo album <strong>"Indonesia
													Tourism"</strong> <br> <i>8 minutes ago</i>
											</p>
									</a></li>
									<li class="media"><a href="#">
											<p>
												<strong>Annisa</strong> Posted an article <strong>"Yogyakarta
													never ending Asia"</strong> <br> <i>an hour ago</i>
											</p>
									</a></li>
									<li class="media"><a href="#">
											<p>
												<strong>Ari Rusmanto</strong> Added 3 products <br> <i>3
													hours ago</i>
											</p>
									</a></li>
									<li class="media"><a href="#">
											<p>
												<strong>Hana Sartika</strong> Send you a message <strong>"Lorem
													ipsum dolor..."</strong> <br> <i>12 hours ago</i>
											</p>
									</a></li>
									<li class="media"><a href="#">
											<p>
												<strong>Johnny Depp</strong> Updated his avatar <br> <i>Yesterday</i>
											</p>
									</a></li>
								</ul>
							</div>
							<div class="slimScrollBar"
								style="width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; background: rgb(134, 134, 134);"></div>
							<div class="slimScrollRail"
								style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div>
						</div>
					</div>

					<div class="tab-pane animated fadeInRight" id="mymessage">
						<div class="slimScrollDiv"
							style="position: relative; overflow: hidden; width: auto; height: 500px;">
							<div class="scroll-user-widget"
								style="overflow: hidden; width: auto; height: 500px;">
								<ul class="media-list">
									<li class="media"><a class="pull-left" href="#"> <img
											class="media-object" src="assets/img/avatar/2.jpg"
											alt="Avatar">
									</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="">John Doe</a> <small>Just now</small>
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit</p>
										</div></li>
									<li class="media"><a class="pull-left" href="#"> <img
											class="media-object" src="assets/img/avatar/1.jpg"
											alt="Avatar">
									</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="">Annisa</a> <small>Yesterday at 04:00 AM</small>
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Nam rhoncus</p>
										</div></li>
									<li class="media"><a class="pull-left" href="#"> <img
											class="media-object" src="assets/img/avatar/5.jpg"
											alt="Avatar">
									</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="">Rusmanovski</a> <small>January 17, 2014
													05:35 PM</small>
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit</p>
										</div></li>
									<li class="media"><a class="pull-left" href="#"> <img
											class="media-object" src="assets/img/avatar/4.jpg"
											alt="Avatar">
									</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="">Ari Rusmanto</a> <small>January 17, 2014
													05:35 PM</small>
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit</p>
										</div></li>
									<li class="media"><a class="pull-left" href="#"> <img
											class="media-object" src="assets/img/avatar/3.jpg"
											alt="Avatar">
									</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="">Jenny Doe</a> <small>January 17, 2014
													05:35 PM</small>
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit</p>
										</div></li>
									<li class="media"><a class="pull-left" href="#"> <img
											class="media-object" src="assets/img/avatar/2.jpg"
											alt="Avatar">
									</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="">John Doe</a> <small>Just now</small>
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit</p>
										</div></li>
									<li class="media"><a class="pull-left" href="#"> <img
											class="media-object" src="assets/img/avatar/1.jpg"
											alt="Avatar">
									</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="">Annisa</a> <small>Yesterday at 04:00 AM</small>
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Nam rhoncus</p>
										</div></li>
									<li class="media"><a class="pull-left" href="#"> <img
											class="media-object" src="assets/img/avatar/5.jpg"
											alt="Avatar">
									</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="">Rusmanovski</a> <small>January 17, 2014
													05:35 PM</small>
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit</p>
										</div></li>
									<li class="media"><a class="pull-left" href="#"> <img
											class="media-object" src="assets/img/avatar/4.jpg"
											alt="Avatar">
									</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="">Ari Rusmanto</a> <small>January 17, 2014
													05:35 PM</small>
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit</p>
										</div></li>
									<li class="media"><a class="pull-left" href="#"> <img
											class="media-object" src="assets/img/avatar/3.jpg"
											alt="Avatar">
									</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="">Jenny Doe</a> <small>January 17, 2014
													05:35 PM</small>
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit</p>
										</div></li>
								</ul>
							</div>
							<div class="slimScrollBar"
								style="width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; background: rgb(134, 134, 134);"></div>
							<div class="slimScrollRail"
								style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div>
						</div>
					</div>

				</div>

			</div>
		</div>
		<div class="col-sm-1"></div>
		<div class="col-sm-3">
			<div class="thumbnail">
				<img src="assets/img/ramazan.jpg" alt="RamazanYarım" width="300"
					height="200">
				<h5>
					Başkan<br> <strong>Ramazan YARIM</strong>
				</h5>
				<h6>Saçak Belediye Başkanı</h6>
				<ul>
					<li href="">Başkana Soru Sor</li>
					<li href="">Başkandan Mesaj</li>

				</ul>

			</div>
		</div>

	</div>
</body>
</html>