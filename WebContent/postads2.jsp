<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
 <%@taglib uri="http://emc.com" prefix="servion" %>
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


.single_item:hover
{

background-color:#f5f5f5;
}

</style>
		

	</head>
	<body class="m-submit1" data-scrolling-animations="true">

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
		
		<c:if test="${sessionScope.user == null}">
			
			<c:redirect url="login"></c:redirect>
			
		</c:if>
		<c:if test="${sessionScope.caradd == null}">
			
			<c:redirect url="addlisting"></c:redirect>
			
		</c:if>
		

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
								<li><a href="logout">Sign out</a></li>
								<li><a href="profile">Welcome ${sessionScope.user}</a></li>
								</c:if>
								<c:if test="${sessionScope.user == null}">
								<li><a href="register">Register</a></li>
								<li><a href="login">Sign in</a></li>
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
									<li><a class="m-langLink dropdown-toggle" href="langcontroller?lang=en"><span class="b-topBar__lang-flag m-en"></span>EN</a></li>
									<li><a class="m-langLink dropdown-toggle"  href="langcontroller?lang=ta"><span class="b-topBar__lang-flag m-es"></span>TA</a></li>
									<li><a class="m-langLink dropdown-toggle"  href="langcontroller?lang=te"><span class="b-topBar__lang-flag m-de"></span>TE</a></li>
									<li><a class="m-langLink dropdown-toggle"  href="langcontroller?lang=hi"><span class="b-topBar__lang-flag m-fr"></span>HI</a></li>
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
									<li ><a href="">Home </a></li>
									<li><a href="searchlist">All Cars</a></li>
									<li><a href="profile">Profile</a></li>			
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
				<h1 class="wow zoomInLeft" data-wow-delay="0.5s">Submit Your Vehicle</h1>
				<div class="b-pageHeader__search wow zoomInRight" data-wow-delay="0.5s">
					<h3>Add Your Vehicle In Our Listings</h3>
				</div>
			</div>
		</section><!--b-pageHeader-->

		

		<div class="b-infoBar">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
						<div class="b-infoBar__progress wow zoomInUp" data-wow-delay="0.3s">
							<div class="b-infoBar__progress-line clearfix">
								<div class="b-infoBar__progress-line-step m-active">
									<div class="b-infoBar__progress-line-step-circle">
										<div class="b-infoBar__progress-line-step-circle-inner m-active"></div>
									</div>
								</div>
								<div class="b-infoBar__progress-line-step">
									<div class="b-infoBar__progress-line-step-circle">
										<div class="b-infoBar__progress-line-step-circle-inner m-active"></div>
									</div>
								</div>
								<div class="b-infoBar__progress-line-step">
									<div class="b-infoBar__progress-line-step-circle">
										<div class="b-infoBar__progress-line-step-circle-inner"></div>
									</div>
								</div>
								<div class="b-infoBar__progress-line-step">
									
									<div class="b-infoBar__progress-line-step-circle m-last">
										<div class="b-infoBar__progress-line-step-circle-inner"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--b-infoBar-->

		<div class="b-submit">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-4 col-sm-5 col-xs-6">
						<aside class="b-submit__aside">
							<div class="b-submit__aside-step m-active wow zoomInUp" data-wow-delay="0.3s">
								<h3>Step 1</h3>
								<div class="b-submit__aside-step-inner m-active clearfix">
									<div class="b-submit__aside-step-inner-icon">
										<span class="fa fa-car"></span>
									</div>
									<div class="b-submit__aside-step-inner-info">
										<h4>Add YOUR Vehicle</h4>
										<p>Select your vehicle &amp; add info</p>
										<div class="b-submit__aside-step-inner-info-triangle"></div>
									</div>
								</div>
							</div>
							<div class="b-submit__aside-step m-active wow zoomInUp" data-wow-delay="0.3s">
								<h3>Step 2</h3>
								<div class="b-submit__aside-step-inner m-active clearfix">
									<div class="b-submit__aside-step-inner-icon">
										<span class="fa fa-list-ul"></span>
									</div>
									<div class="b-submit__aside-step-inner-info">
										<h4>select details</h4>
										<p>Choose vehicle specifications</p>
										<div class="b-submit__aside-step-inner-info-triangle"></div>
									</div>
								</div>
							</div>
							<div class="b-submit__aside-step wow zoomInUp" data-wow-delay="0.3s">
								<h3>Step 3</h3>
								<div class="b-submit__aside-step-inner clearfix">
									<div class="b-submit__aside-step-inner-icon">
										<span class="fa fa-photo"></span>
									</div>
									<div class="b-submit__aside-step-inner-info">
										<h4>Photos &amp;</h4>
										<p>Add images of vehicle</p>
									</div>
								</div>
							</div>
							
							<div class="b-submit__aside-step wow zoomInUp" data-wow-delay="0.3s">
								<h3>Step 4</h3>
								<div class="b-submit__aside-step-inner clearfix">
									<div class="b-submit__aside-step-inner-icon">
										<span class="fa fa-globe"></span>
									</div>
									<div class="b-submit__aside-step-inner-info">
										<h4>SUBMIT &amp; PUBLISH</h4>
										<p>Your vehicle</p>
									</div>
								</div>
							</div>
						</aside>
					</div>
					<div class="col-lg-9 col-md-8 col-sm-7 col-xs-6">
						<div class="b-submit__main">
							<header class="s-headerSubmit s-lineDownLeft wow zoomInUp" data-wow-delay="0.3s">
								<h2 class="">Select Additional Features Of  Your Vehicle</h2>
								
							</header>
							
							<spring:form class="s-submit clearfix" action="addextra" method="POST" commandName="extrafeature">
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check1" id="check1" path="Security_System" checked="true" value="yes"/>
											<label class="s-submitCheckLabel" for="check1"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check1">Security System</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check2" id="check2" path="Air_Conditioning" checked="true" value="yes"/>
											<label class="s-submitCheckLabel" for="check2"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check2">Air Conditioning</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check3" id="check3" checked="true" value="yes" path="Alloy_Wheels"/>
											<label class="s-submitCheckLabel" for="check3"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check3">Alloy Wheels</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check4" id="check4" checked="true" value="yes" path="Anti_Lock_Brakes"/>
											<label class="s-submitCheckLabel" for="check4"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check4">Anti-Lock Brakes (ABS)</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check5" id="check5" checked="true" value="yes" path="Anti_Theft"/>
											<label class="s-submitCheckLabel" for="check5"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check5">Anti-Theft</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check6" id="check6" value="yes" checked="true" path="Anti_Starter" />
											<label class="s-submitCheckLabel" for="check6"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check6">Anti-Starter</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check7" id="check7" checked="true" value="yes" path="Dual_Airbag"/>
											<label class="s-submitCheckLabel" for="check7"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check7">Dual Airbag</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check8" id="check8" checked="true" value="yes" path="Intermittent_Wipers"/>
											<label class="s-submitCheckLabel" for="check8"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check8">Intermittent Wipers</label>
										</div>
										                                    
									</div>
									<div class="col-md-6 col-xs-12">
									
									<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check9" id="check9" checked="true" value="yes" path="Keyless_Entry"/>
											<label class="s-submitCheckLabel" for="check9"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check9">Keyless Entry</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check10" id="check10" value="yes" checked="true" path="Power_Mirrors"/>
											<label class="s-submitCheckLabel" for="check10"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check10">Power Mirrors</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check11" id="check11" value="yes" checked="true" path="Power_Seat"/>
											<label class="s-submitCheckLabel" for="check11"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check11">Power Seat</label>
										</div>
										<div class="b-submit__main-element m-border wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check12" id="check12" value="yes" checked="true" path="Power_Steering"/>
											<label class="s-submitCheckLabel" for="check12"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check12">Power Steering</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check13" id="check13" value="yes" checked="true" path="CD_Player"/>
											<label class="s-submitCheckLabel" for="check13"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check13">CD Player</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check14" id="check14" value="yes" checked="true" path="Driver_Side_Airbag"/>
											
											<label class="s-submitCheckLabel" for="check14"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check14">Driver Side Airbag</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check15" id="check15" value="yes" checked="true" path="Power_Windows"/>
											<label class="s-submitCheckLabel" for="check15"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check15">Power Windows</label>
										</div>
										<div class="b-submit__main-element wow zoomInUp" data-wow-delay="0.3s">
											<spring:input type="checkbox" name="check16" id="check16" value="yes" checked="true" path="Remote_Start"/>
											<label class="s-submitCheckLabel" for="check16"><span class="fa fa-check"></span></label>
											<label class="s-submitCheck" for="check16">Remote Start</label>
										</div>
										
									</div>
								</div>
								<button type="submit" class="btn m-btn pull-right wow zoomInUp" data-wow-delay="0.3s">Save &amp; PROCEED to next step<span class="fa fa-angle-right"></span></button>
							</spring:form>
						</div>
					</div>
				</div>
			</div>
		</div><!--b-submit-->



			<footer class="b-footer">
				<a id="to-top" href="#this-is-top"><i class="fa fa-chevron-up"></i></a>
				<div class="container">
					<div class="row">
						<div class="col-xs-4">
							<div class="b-footer__company wow zoomInLeft" data-wow-delay="0.5s">
								<div class="b-nav__logo">
									<h3><a href="home.html">Auto<span>Club</span></a></h3>
								</div>
								<p>&copy; 2015 Designed by Templines &amp; Powered by WordPress.</p>
							</div>
						</div>
						<div class="col-xs-8">
							<div class="b-footer__content wow zoomInRight" data-wow-delay="0.5s">
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
		
		
		<script>
	</body>


</html>