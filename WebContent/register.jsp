<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<title>Directory Search</title>

		<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resources/images/favicon.png"></c:url>" />

		<link href="<c:url value="/resources/css/master.css"></c:url>" rel="stylesheet">

		<!-- SWITCHER -->
		<link rel="stylesheet" id="switcher-css" type="text/css" href="<c:url value="/resources/assets/switcher/css/switcher.css"></c:url>" media="all" />
		
		<link rel="alternate stylesheet" type="text/css" href="<c:url value="/resources/assets/switcher/css/color1.css"></c:url>" title="color1" media="all" data-default-color="true" />
		
		<link rel="alternate stylesheet" type="text/css" href="<c:url value="/resources/assets/switcher/css/color2.css"></c:url>" title="color2" media="all" />
		
		<link rel="alternate stylesheet" type="text/css" href="<c:url value="/resources/assets/switcher/css/color3.css"></c:url>" title="color3" media="all" />
		
		<link rel="alternate stylesheet" type="text/css" href="<c:url value="/resources/assets/switcher/css/color4.css"></c:url>" title="color4" media="all" />
		
		<link rel="alternate stylesheet" type="text/css" href="<c:url value="/resources/assets/switcher/css/color5.css"></c:url>" title="color5" media="all" />
		
		<link rel="alternate stylesheet" type="text/css" href="<c:url value="/resources/assets/switcher/css/color6.css"></c:url>" title="color6" media="all" />

<style type="text/css">
#frmpass {
	display: block;
	width: 100%;
	margin-bottom: 15px;
	padding: 15px 20px;
	font: 400 10px 'Open Sans', sans-serif;
	border: 1px solid #eeeeee;
	text-transform: uppercase;
	border-radius: 30px;
}

#phnotext {
	display: block;
	width: 100%;
	margin-bottom: 15px;
	padding: 15px 20px;
	font: 400 10px 'Open Sans', sans-serif;
	border: 1px solid #eeeeee;
	text-transform: uppercase;
	border-radius: 30px;
}
</style>

</head>
	<body class="m-detail" data-scrolling-animations="true" data-equal-height=".b-auto__main-item">

		<!-- Loader -->
		<div id="page-preloader"><span class="spinner"></span></div>
		<!-- Loader end -->
		<!-- Start Switcher -->
		<div class="switcher-wrapper">	
			<div class="demo_changer">
				<div class="demo-icon customBgColor"><i class="fa fa-cog fa-spin fa-2x"></i></div>
				<div class="form_holder">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="predefined_styles">
								<div class="skin-theme-switcher">
									<h4>Color</h4>
									<a href="#" data-switchcolor="color1" class="styleswitch" style="background-color:#f76d2b;"> </a>
									<a href="#" data-switchcolor="color2" class="styleswitch" style="background-color:#de483d;"> </a>
									<a href="#" data-switchcolor="color3" class="styleswitch" style="background-color:#228dcb;"> </a>
									<a href="#" data-switchcolor="color4" class="styleswitch" style="background-color:#00bff3;"> </a>
									<a href="#" data-switchcolor="color5" class="styleswitch" style="background-color:#2dcc70;"> </a>
									<a href="#" data-switchcolor="color6" class="styleswitch" style="background-color:#6054c2;"> </a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Switcher -->
		
		<header class="b-topBar wow slideInDown" data-wow-delay="0.7s">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-xs-6">
						<div class="b-topBar__addr">
							<span class="fa fa-map-marker"></span>
							 4/600,Thiruvanmiyur, Chennai
						</div>
					</div>
					<div class="col-md-2 col-xs-6">
						<div class="b-topBar__tel">
							<span class="fa fa-phone"></span>
							044 6108 4100
						</div>
					</div>
					<div class="col-md-4 col-xs-6">
						<nav class="b-topBar__nav">
							<ul>
								<c:if test="${sessionScope.user != null}">
								<c:redirect url="index"/>
								</c:if>
								<c:if test="${sessionScope.user == null}">
								<li><a href="login">Sign In</a></li>
								
								</c:if>
							</ul>
						</nav>
					</div>
					<div class="col-md-2 col-xs-6">
						<div class="b-topBar__lang">
							<div class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle='dropdown'>Language</a>
								<a class="m-langLink dropdown-toggle" data-toggle='dropdown' href="#"><span class="b-topBar__lang-flag m-en"></span>EN<span class="fa fa-caret-down"></span></a>
								<ul class="dropdown-menu h-lang">
									<li><a class="m-langLink dropdown-toggle" data-toggle='dropdown' href="#"><span class="b-topBar__lang-flag m-en"></span>EN</a></li>
									<li><a class="m-langLink dropdown-toggle" data-toggle='dropdown' href="#"><span class="b-topBar__lang-flag m-es"></span>ES</a></li>
									<li><a class="m-langLink dropdown-toggle" data-toggle='dropdown' href="#"><span class="b-topBar__lang-flag m-de"></span>DE</a></li>
									<li><a class="m-langLink dropdown-toggle" data-toggle='dropdown' href="#"><span class="b-topBar__lang-flag m-fr"></span>FR</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header><!--b-topBar-->

		<nav class="b-nav">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 col-xs-4">
						<div class="b-nav__logo wow slideInLeft" data-wow-delay="0.3s">
							<h3><a href="index">Car<span>Directory</span></a></h3>
							<h2><a href="index">Find AUTO DEALER</a></h2>
						</div>
					</div>
					<div class="col-sm-9 col-xs-8">
						<div class="b-nav__list wow slideInRight" data-wow-delay="0.3s">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#nav">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div>
							<div class="collapse navbar-collapse navbar-main-slide" id="nav">
								<ul class="navbar-nav-menu">
									<li ><a href="index">Home </a></li>
									<li><a href="searchlist">All Cars</a></li>
									<li><a href="profile">About</a></li>			
									<li><a href="contacts.html">Contact</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</nav><!--b-nav-->


		<section class="b-pageHeader">
			<div class="container">
				<h1 class="wow zoomInLeft" data-wow-delay="0.5s">Register Page</h1>
			</div>
		</section><!--b-pageHeader-->

		

		
		<section class="b-detail s-shadow">
			<div class="container">
				
				<div class="b-detail__main">
					<div class="row">
						
						<div class="col-md-6 col-md-offset-3 ">
							<aside class="b-detail__main-aside">
								
								<div class="b-detail__main-aside-about wow zoomInUp" data-wow-delay="0.5s">
									
									<div class="b-detail__main-aside-about-call">
										<span class="fa fa-user"></span>
										<div>Register Here</div>
											
									</div>
									<div class="b-detail__main-aside-about-seller">
										<p>Please Provide : <span>Valid Details</span></p>
									</div>
									<div class="b-detail__main-aside-about-form">
										
											<spring:form id="form1" action="" method="post" commandName="user">
										
											<spring:input type="text" placeholder="User Name" value="" path="u_name" required="true"/>
											<spring:password type="password" placeholder="Password" value="" path="u_pass" id="frmpass" required="true"/>
											<spring:select path="u_type" required="true">
											<spring:option value="Agent">Agent</spring:option>
											<spring:option value="Individual">Individual</spring:option>
											</spring:select>
											<spring:input type="email" placeholder="Email" value="" path="u_email" required="true"/>
											<spring:input type="text" placeholder="First Name"  path="u_firstname" required="true"/>
											<spring:input type="text" placeholder="Last Name"  path="u_lastname" required="true"/>
											<spring:input type="number" placeholder="Phone Number"  path="u_phno" required="true" id="phnotext"/>
											<spring:input type="text" placeholder="Address"  path="u_address" required="true"/>
											<spring:input type="text" placeholder="State"  path="state" required="true"/>
											<spring:input type="text" placeholder="City"  path="city" required="true"/>
											<spring:input type="text" placeholder="Profile Photo URL" path="u_photo" required="true"/>										
											<button type="submit" class="btn m-btn">Register Now<span class="fa fa-angle-right"></span></button>
										</spring:form>
										
									</div>
								</div>
								
							</aside>
						</div>
					</div>
				</div>
			</div>
		</section><!--b-detail-->

		


		

		
		<footer class="b-footer">
			<a id="to-top" href="#this-is-top"><i class="fa fa-chevron-up"></i></a>
			<div class="container">
				<div class="row">
					<div class="col-xs-4">
						<div class="b-footer__company wow fadeInLeft" data-wow-delay="0.3s">
							<div class="b-nav__logo">
								<h3><a href="home.html">Auto<span>Club</span></a></h3>
							</div>
							<p>&copy; 2015 Designed by Templines &amp; Powered by WordPress.</p>
						</div>
					</div>
					<div class="col-xs-8">
						<div class="b-footer__content wow fadeInRight" data-wow-delay="0.3s">
							<div class="b-footer__content-social">
								<a href="#"><span class="fa fa-facebook-square"></span></a>
								<a href="#"><span class="fa fa-twitter-square"></span></a>
								<a href="#"><span class="fa fa-google-plus-square"></span></a>
								<a href="#"><span class="fa fa-instagram"></span></a>
								<a href="#"><span class="fa fa-youtube-square"></span></a>
								<a href="#"><span class="fa fa-skype"></span></a>
							</div>
							<nav class="b-footer__content-nav">
								<ul>
									<li><a href="home.html">Home</a></li>
									<li><a href="404.html">Pages</a></li>
									<li><a href="listings.html">Inventory</a></li>
									<li><a href="about.html">About</a></li>
									<li><a href="404.html">Services</a></li>
									<li><a href="blog.html">Blog</a></li>
									<li><a href="listTable.html">Shop</a></li>
									<li><a href="contacts.html">Contact</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</footer><!--b-footer-->
		<!--Main-->   
		<script src="<c:url value="/resources/js/jquery-1.11.3.min.js"></c:url>"></script>
		<script src="<c:url value="/resources/js/jquery-ui.min.js"></c:url>"></script>
		<script src="<c:url value="/resources/js/bootstrap.min.js"></c:url>"></script>
		<script src="<c:url value="/resources/js/modernizr.custom.js"></c:url>"></script>

		<script src="<c:url value="/resources/assets/rendro-easy-pie-chart/dist/jquery.easypiechart.min.js"></c:url>"></script>
		<script src="<c:url value="/resources/js/waypoints.min.js"></c:url>"></script>
		<script src="<c:url value="/resources/js/jquery.easypiechart.min.js"></c:url>"></script>
		<script src="<c:url value="/resources/js/classie.js"></c:url>"></script>

		<!--Switcher-->
		<script src="<c:url value="/resources/assets/switcher/js/switcher.js"></c:url>"></script>
		<!--Owl Carousel-->
		<script src="<c:url value="/resources/assets/owl-carousel/owl.carousel.min.js"></c:url>"></script>
		<!--bxSlider-->
		<script src="<c:url value="/resources/assets/bxslider/jquery.bxslider.js"></c:url>"></script>
		<!-- jQuery UI Slider -->
		<script src="<c:url value="/resources/assets/slider/jquery.ui-slider.js"></c:url>"></script>

		<!--Theme-->
		<script src="<c:url value="/resources/js/jquery.smooth-scroll.js"></c:url>"></script>
		<script src="<c:url value="/resources/js/wow.min.js"></c:url>"></script>
		<script src="<c:url value="/resources/js/jquery.placeholder.min.js"></c:url>"></script>
		<script src="<c:url value="/resources/js/theme.js"></c:url>"></script>
	</body>

<!-- Mirrored from html.templines.com/sokolcov/auto-club/detail.html by HTTrack Website Copier/3.x [XR&CO'2013], Tue, 25 Oct 2016 15:17:04 GMT -->
</html>