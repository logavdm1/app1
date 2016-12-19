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


.col-md-4:hover
{

}

</style>
		

	</head>
	<body class="m-listTableTwo" data-scrolling-animations="true" data-equal-height=".b-items__cell">

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

		<section class="b-modal">
		
		</section><!--b-modal-->
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
									<li ><a href="index">Home </a></li>
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
				<h1 class="wow zoomInLeft" data-wow-delay="0.5s">Car Listings</h1>
				<div class="b-pageHeader__search wow zoomInRight" data-wow-delay="0.5s">
					<h3>Your search returned ${searchcar.getTotal_result_count() } results</h3>
				</div>
			</div>
		</section><!--b-pageHeader-->

	

		<div class="b-infoBar">
			<div class="container">
				<div class="row">
					
				</div>
			</div>
		</div><!--b-infoBar-->

		<div class="b-items">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-sm-4 col-xs-12">
						<aside class="b-items__aside">
							<h2 class="s-title wow zoomInUp" data-wow-delay="0.5s">REFINE YOUR SEARCH</h2>
							<div class="b-items__aside-main wow zoomInUp" data-wow-delay="0.5s">
								<spring:form action="searchlist" method="POST" commandName="searchcar">
									<div class="b-items__aside-main-body">
										<div class="b-items__aside-main-body-item">
											<label>SELECT LOCATION</label>
											<div>
												<spring:select name="select1" class="m-select" path="location">
													<spring:option value="any" >Any Location</spring:option>
													<spring:option value="Coimbatore" >Coimbatore</spring:option>
													<spring:option value="Chennai" >Chennai</spring:option>
													<spring:option value="Banglore" >Banglore</spring:option>
												</spring:select>
												<span class="fa fa-caret-down"></span>
											</div>
										</div>
										<div class="b-items__aside-main-body-item">
											<label>VEHICLE Status</label>
											<div>
												<spring:select name="select1" class="m-select" path="car_status">
													<spring:option value="any" selected="">Any Status</spring:option>
													<spring:option value="New" selected="">New</spring:option>
													<spring:option value="Pre Owned" selected="">Pre Owned</spring:option>
													
												</spring:select>
												<span class="fa fa-caret-down"></span>
											</div>
										</div>
										<div class="b-items__aside-main-body-item">
											<label>CAR MAKE</label>
											<div>
												<spring:select name="select1" class="m-select" path="car_make">
													<spring:option value="any" selected="any">Any Status</spring:option>
													<spring:option value="bmw" >BMW</spring:option>
													<spring:option value="audi" >Audi</spring:option>
													<spring:option value="bence" >Bence</spring:option>
													<spring:option value="ferrari" >Ferrari</spring:option>
													<spring:option value="jaguar" >Jaguar</spring:option>
												</spring:select>
												<span class="fa fa-caret-down"></span>
											</div>
										</div>
										<div class="b-items__aside-main-body-item">
											<label>SELECT VECHILE TYPE</label>
											<div>
												<spring:select name="select1" class="m-select" path="car_type">
													<spring:option value="any" selected="">Any Type</spring:option>
													<spring:option value="Pickup" >Pickup</spring:option>
													<spring:option value="Suv" >Suv</spring:option>
													<spring:option value="Coupe" >Coupe</spring:option>
													<spring:option value="Convetible" >Convertible</spring:option>
													<spring:option value="Sedan" >Sedan</spring:option>
													<spring:option value="MiniCar" >Mini Car</spring:option>
												</spring:select>
												<span class="fa fa-caret-down"></span>
											</div>
										</div>
										
										<div class="b-items__aside-main-body-item">
											<label>FUEL TYPE</label>
											<div>
												<spring:select path="car_engine_type" class="m-select">
													<spring:option value="any" >Any Fuel Types</spring:option>
													<spring:option value="Diesel" >Diesel</spring:option>
													<spring:option value="Petrol" >petrol</spring:option>
												</spring:select>
												<span class="fa fa-caret-down"></span>
											</div>
										</div>
										
										<div class="b-items__aside-main-body-item">
											<label>PRICE RANGE</label>
											<div class="slider"></div>
											<spring:hidden  name="min" class="j-min" path="price_min" />
											<spring:hidden  name="max"  class="j-max" path="price_max"/>
										</div>
										
										
										
									</div>
									<footer class="b-items__aside-main-footer">
										<button type="submit" class="btn m-btn">FILTER VEHICLES<span class="fa fa-angle-right"></span></button><br />
										<a href="#">RESET ALL FILTERS</a>
									</footer>
								</spring:form>
							</div>
							<div class="b-items__aside-sell wow zoomInUp" data-wow-delay="0.5s">
								<div class="b-items__aside-sell-img">
									<h3>SELL YOUR CAR</h3>
								</div>
								<div class="b-items__aside-sell-info">
									<p>
										Nam tellus enimds eleifend dignis lsim
										biben edum tristique sed metus fusce
										Maecenas lobortis.
									</p>
									
								<c:if test="${sessionScope.user != null}">								
									<a href="" class="btn m-btn">POST NOW<span class="fa fa-angle-right"></span></a>
								</c:if>
								
								<c:if test="${sessionScope.user == null}">
								<a href="login" class="btn m-btn">SELL IT NOW<span class="fa fa-angle-right"></span></a>
								</c:if>
								
									
									
								</div>
							</div>
						</aside>
					</div>
					<div class="col-lg-9 col-sm-8 col-xs-12">
						<div class="row m-border">
						
						<c:forEach var="car" items="${cars}">
						
							<div class="col-md-4 col-md-6 col-xs-12 wow zoomInUp" data-wow-delay="0.5s">
							<spring:form action="details" method="post" commandName="carobj" >
								<spring:hidden path="car_id" value="${car.getCar_id()}"/>
								<div class="b-items__cell">
									<div class="b-items__cars-one-img">
										<img class='img-responsive' src="http://localhost:8080/Car_Dir_search/resources/media/186x113/aston.jpg" alt='chevrolet'/>
										
										
									</div>
									<div class="b-items__cell-info">
										<div class="s-lineDownLeft b-items__cell-info-title">
											<h2 class=""><a href="">${car.getCar_make()} ${car.getCar_model()}</a></h2>
										</div>
										
										<div>
											<div class="row m-smallPadding">
												<div class="col-xs-5">
													<span class="b-items__cars-one-info-title">Date Of Post</span>
													<span class="b-items__cars-one-info-title">Location</span>
													<span class="b-items__cars-one-info-title">Car Type:</span>
													<span class="b-items__cars-one-info-title">Body Style:</span>
													<span class="b-items__cars-one-info-title">Mileage:</span>
													<span class="b-items__cars-one-info-title">Transmission:</span>
													<span class="b-items__cars-one-info-title">Fuel Type:</span>
													<span class="b-items__cars-one-info-title">Interior Color:</span>
													<span class="b-items__cars-one-info-title">Passenger:</span>
													<span class="b-items__cars-one-info-title">Mileage:</span>
													
												</div>
												<div class="col-xs-7">
													<span class="b-items__cars-one-info-value">${car.getPost_year()}-${car.getPost_month()}-${car.getPost_day()}</span>
													<span class="b-items__cars-one-info-value">${car.getLocation()}</span>
													<span class="b-items__cars-one-info-value">${car.getCar_status()}</span>
													<span class="b-items__cars-one-info-value">${car.getBody_Type()}</span>
													<span class="b-items__cars-one-info-value">${car.getKilometres()}</span>
													<span class="b-items__cars-one-info-value">${car.getTransmission()}</span>
													<span class="b-items__cars-one-info-value">${car.getFuel_Type()}</span>
													<span class="b-items__cars-one-info-value">${car.getInterior_color()}</span>
													<span class="b-items__cars-one-info-value">${car.getPassangers_Doors()}</span>
													<span class="b-items__cars-one-info-value">${car.getMileage()}</span>
													
												</div>
											</div>
										</div>
										<h5 class="b-items__cell-info-price"><span>Price:</span>${car.getEstimated_price()}</h5>
									</div>
								</div>
								<button type="submit" name="singlecarbtn" style="display:none;">Click Me</button>
								</spring:form>
								
							</div>
							
					
					</c:forEach>
							

							
						</div>
						
						
						
						
						
						
						<div class="b-items__pagination">
							<div class="b-items__pagination-main wow zoomInUp" data-wow-delay="0.5s">
								<a data-toggle="modal" data-target="#myModal" href="#" class="m-left"><span class="fa fa-angle-left"></span></a>
								<span class="m-active"><a href="#">1</a></span>
								<span><a href="#">2</a></span>
								<span><a href="#">3</a></span>
								<span><a href="#">4</a></span>
								<a href="#" class="m-right"><span class="fa fa-angle-right"></span></a>    
							</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--b-items-->

		<div class="b-features">
			<div class="container">
				<div class="row">
					<div class="col-md-9 col-md-offset-3 col-xs-6 col-xs-offset-6">
						<ul class="b-features__items">
							<li class="wow zoomInUp" data-wow-delay="0.3s" data-wow-offset="100">Low Prices, No Haggling</li>
							<li class="wow zoomInUp" data-wow-delay="0.3s" data-wow-offset="100">Largest Car Dealership</li>
							<li class="wow zoomInUp" data-wow-delay="0.3s" data-wow-offset="100">Multipoint Safety Check</li>
						</ul>
					</div>
				</div>
			</div>
		</div><!--b-features-->

		

		
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
<script>

  $(document).ready(function(){
     $(".col-md-4.col-md-6.col-xs-12.wow.zoomInUp").click(function(){
    	 
    	     	 
    	 var btn=$(this).find("[name='singlecarbtn']");
    	 btn[0].click();
    	 
    	
    	 
     });
 });
  

</script>
	</body>


</html>