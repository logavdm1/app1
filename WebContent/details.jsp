<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<h1 class="wow zoomInLeft" data-wow-delay="0.5s">Vehicle Details Page</h1>
			</div>
		</section><!--b-pageHeader-->

		
	<div class="b-infoBar">
			<div class="container">
				<div class="row">
					
				</div>
			</div>
		</div><!--b-infoBar-->
		
		<section class="b-detail s-shadow">
			<div class="container">
				<header class="b-detail__head s-lineDownLeft wow zoomInUp" data-wow-delay="0.5s">
					<div class="row">
						<div class="col-sm-9 col-xs-12">
							<div class="b-detail__head-title">
								<h1>${car.getCar_make()} ${car.getCar_model()}  ${car.getYear_model()}</h1>
								<h3>Fully Redesigned Upscale Midsize Car</h3>
							</div>
						</div>
						<div class="col-sm-3 col-xs-12">
							<div class="b-detail__head-price">
								<div class="b-detail__head-price-num">${car.getEstimated_price()}</div>
								<p>Included Taxes &amp; Checkup</p>
							</div>
						</div>
					</div>
				</header>
				<div class="b-detail__main">
					<div class="row">
						<div class="col-md-8 col-xs-12">
							<div class="b-detail__main-info">
								<div class="b-detail__main-info-images wow zoomInUp" data-wow-delay="0.5s">
									<div class="row m-smallPadding">
										<div class="col-xs-10">
											<ul class="b-detail__main-info-images-big bxslider enable-bx-slider" data-pager-custom="#bx-pager" data-mode="horizontal" data-pager-slide="true" data-mode-pager="vertical" data-pager-qty="5">
												<li class="s-relative">                                        
													<a data-toggle="modal" data-target="#myModal" href="#" class="b-items__cars-one-img-video"><span class="fa fa-film"></span>VIDEO</a>
													<img class="img-responsive center-block" src="<c:url value="/resources/media/620x485/big1.jpg"></c:url>" alt="nissan" />
												</li>
												<li class="s-relative">                                        
													<a data-toggle="modal" data-target="#myModal" href="#" class="b-items__cars-one-img-video"><span class="fa fa-film"></span>VIDEO</a>
													<img class="img-responsive center-block" src="<c:url value="/resources/media/620x485/big2.jpg"></c:url>" alt="nissan" />
												</li>
												<li class="s-relative">                                        
													<a data-toggle="modal" data-target="#myModal" href="#" class="b-items__cars-one-img-video"><span class="fa fa-film"></span>VIDEO</a>
													<img class="img-responsive center-block" src="<c:url value="/resources/media/620x485/big3.jpg"></c:url>" alt="nissan" />
												</li>
												<li class="s-relative">                                        
													<a data-toggle="modal" data-target="#myModal" href="#" class="b-items__cars-one-img-video"><span class="fa fa-film"></span>VIDEO</a>
													<img class="img-responsive center-block" src="<c:url value="/resources/media/620x485/big4.jpg"></c:url>" alt="nissan" />
												</li>
												<li class="s-relative">                                        
													<a data-toggle="modal" data-target="#myModal" href="#" class="b-items__cars-one-img-video"><span class="fa fa-film"></span>VIDEO</a>
													<img class="img-responsive center-block" src="<c:url value="/resources/media/620x485/big5.jpg"></c:url>" alt="nissan" />
												</li>
												<li class="s-relative">                                        
													<a data-toggle="modal" data-target="#myModal" href="#" class="b-items__cars-one-img-video"><span class="fa fa-film"></span>VIDEO</a>
													<img class="img-responsive center-block" src="<c:url value="/resources/media/620x485/big1.jpg"></c:url>" alt="nissan" />
												</li>
												<li class="s-relative">                                        
													<a data-toggle="modal" data-target="#myModal" href="#" class="b-items__cars-one-img-video"><span class="fa fa-film"></span>VIDEO</a>
													<img class="img-responsive center-block" src="<c:url value="/resources/media/620x485/big2.jpg"></c:url>" alt="nissan" />
												</li>
												<li class="s-relative">                                        
													<a data-toggle="modal" data-target="#myModal" href="#" class="b-items__cars-one-img-video"><span class="fa fa-film"></span>VIDEO</a>
													<img class="img-responsive center-block" src="<c:url value="/resources/media/620x485/big3.jpg"></c:url>" alt="nissan" />
												</li>
												
											</ul>
										</div>
										<div class="col-xs-2 pagerSlider pagerVertical">
											<div class="b-detail__main-info-images-small" id="bx-pager">
												<a href="#" data-slide-index="0" class="b-detail__main-info-images-small-one">
													<img class="img-responsive" src="<c:url value="/resources/media/620x485/big4.jpg"></c:url>" alt="nissan" />
												</a>
												<a href="#" data-slide-index="1" class="b-detail__main-info-images-small-one">
													<img class="img-responsive" src="<c:url value="/resources/media/115x85/small2.jpg"></c:url>" alt="nissan" />
												</a>
												<a href="#" data-slide-index="2" class="b-detail__main-info-images-small-one">
													<img class="img-responsive" src="<c:url value="/resources/media/115x85/small3.jpg"></c:url>" alt="nissan" />
												</a>
												<a href="#" data-slide-index="3" class="b-detail__main-info-images-small-one">
													<img class="img-responsive" src="<c:url value="/resources/media/115x85/small4.jpg"></c:url>" alt="nissan" />
												</a>
												<a href="#" data-slide-index="4" class="b-detail__main-info-images-small-one">
													<img class="img-responsive" src="<c:url value="/resources/media/115x85/small5.jpg"></c:url>" alt="nissan" />
												</a>
												<a href="#" data-slide-index="5" class="b-detail__main-info-images-small-one">
													<img class="img-responsive" src="<c:url value="/resources/media/115x85/small1.jpg"></c:url>" alt="nissan" />
												</a>
												<a href="#" data-slide-index="6" class="b-detail__main-info-images-small-one">
													<img class="img-responsive" src="<c:url value="/resources/media/115x85/small2.jpg"></c:url>" alt="nissan" />
												</a>
												<a href="#" data-slide-index="7" class="b-detail__main-info-images-small-one">
													<img class="img-responsive" src="<c:url value="/resources/media/115x85/small3.jpg"></c:url>" alt="nissan" />
												</a>
												
											</div>
										</div>
									</div>
								</div>
								<div class="b-detail__main-info-characteristics wow zoomInUp" data-wow-delay="0.5s">
									<div class="b-detail__main-info-characteristics-one">
										<div class="b-detail__main-info-characteristics-one-top">
											<div><span class="fa fa-car"></span></div>
											<p>${car.getCar_status()}</p>
										</div>
										<div class="b-detail__main-info-characteristics-one-bottom">
											Status
										</div>
									</div>
									<div class="b-detail__main-info-characteristics-one">
										<div class="b-detail__main-info-characteristics-one-top">
											<div><span class="fa fa-trophy"></span></div>
											<p>${car.getKilometres()}</p>
										</div>
										<div class="b-detail__main-info-characteristics-one-bottom">
											Warrenty
										</div>
									</div>
									<div class="b-detail__main-info-characteristics-one">
										<div class="b-detail__main-info-characteristics-one-top">
											<div><span class="fa fa-at"></span></div>
											<p>${car.getTransmission()}</p>
										</div>
										<div class="b-detail__main-info-characteristics-one-bottom">
											Transmission
										</div>
									</div>
									<div class="b-detail__main-info-characteristics-one">
										<div class="b-detail__main-info-characteristics-one-top">
											<div><span class="fa fa-car"></span></div>
											<p>${car.getBody_Type() }</p>
										</div>
										<div class="b-detail__main-info-characteristics-one-bottom">
											Body Type
										</div>
									</div>
									<div class="b-detail__main-info-characteristics-one">
										<div class="b-detail__main-info-characteristics-one-top">
											<div><span class="fa fa-user"></span></div>
											<p>${car.getPassangers_Doors()}</p>
										</div>
										<div class="b-detail__main-info-characteristics-one-bottom">
											Passangers
										</div>
									</div>
									<div class="b-detail__main-info-characteristics-one">
										<div class="b-detail__main-info-characteristics-one-top">
											<div><span class="fa fa-fire-extinguisher"></span></div>
											<p>${car.getFuel_Type()}</p>
										</div>
										<div class="b-detail__main-info-characteristics-one-bottom">
											Fuel Type
										</div>
									</div>
									<div class="b-detail__main-info-characteristics-one">
										<div class="b-detail__main-info-characteristics-one-top">
											<div><span class="fa fa-fire-extinguisher"></span></div>
											<p>${car.getMileage()}</p>
										</div>
										<div class="b-detail__main-info-characteristics-one-bottom">
											Mileage
										</div>
									</div>
								</div>
								
								<div class="b-detail__main-info-extra wow zoomInUp" data-wow-delay="0.5s">
									<h2 class="s-titleDet">EXTRA FEATURES</h2>
									<div class="row">
										<div class="col-xs-4">
											<ul>
											
											<li>
											<c:if test="${car.getExtra_features().toArray()[0].getSecurity_System()=='yes' }">
											<span class="fa fa-check"></span>						
											</c:if>
											<c:if test="${car.getExtra_features().toArray()[0].getSecurity_System()!='yes' }">
											<span class="fa fa-close"></span>
											</c:if>
											Security System
											</li>
											
												
											<li>
											<c:if test="${car.getExtra_features().toArray()[0].getAir_Conditioning()=='yes' }">
											<span class="fa fa-check"></span>						
											</c:if>
											<c:if test="${car.getExtra_features().toArray()[0].getAir_Conditioning()!='yes' }">
											<span class="fa fa-close"></span>
											</c:if>
											Air Conditioning
											</li>
											
											<li>
											<c:if test="${car.getExtra_features().toArray()[0].getAlloy_Wheels()=='yes' }">
											<span class="fa fa-check"></span>						
											</c:if>
											<c:if test="${car.getExtra_features().toArray()[0].getAlloy_Wheels()!='yes' }">
											<span class="fa fa-close"></span>
											</c:if>
											Alloy Wheels
											</li>
											
											<li>
											<c:if test="${car.getExtra_features().toArray()[0].getAnti_Lock_Brakes()=='yes' }">
											<span class="fa fa-check"></span>						
											</c:if>
											<c:if test="${car.getExtra_features().toArray()[0].getAnti_Lock_Brakes() !='yes' }">
											<span class="fa fa-close"></span>
											</c:if>
											Anti-Lock Brakes (ABS)
											</li>
											<li>
											<c:if test="${car.getExtra_features().toArray()[0].getAnti_Theft()=='yes' }">
											<span class="fa fa-check"></span>						
											</c:if>
											<c:if test="${car.getExtra_features().toArray()[0].getAnti_Theft()!='yes' }">
											<span class="fa fa-close"></span>
											</c:if>
											Anti-Theft
											</li>
											
											<li>
											<c:if test="${car.getExtra_features().toArray()[0].getAnti_Starter()=='yes' }">
											<span class="fa fa-check"></span>						
											</c:if>
											<c:if test="${car.getExtra_features().toArray()[0].getAnti_Starter()!='yes' }">
											<span class="fa fa-close"></span>
											</c:if>
											Anti-Starter
											</li>
												
												
											</ul>
										</div>
										<div class="col-xs-4">
											<ul>
												<li>
												<c:if test="${car.getExtra_features().toArray()[0].getDual_Airbag()=='yes' }">
												<span class="fa fa-check"></span>						
												</c:if>
												<c:if test="${car.getExtra_features().toArray()[0].getDual_Airbag()!='yes' }">
												<span class="fa fa-close"></span>
												</c:if>
												Dual Airbag
												</li>
												
												<li>
												<c:if test="${car.getExtra_features().toArray()[0].getIntermittent_Wipers()=='yes' }">
												<span class="fa fa-check"></span>						
												</c:if>
												<c:if test="${car.getExtra_features().toArray()[0].getIntermittent_Wipers()!='yes' }">
												<span class="fa fa-close"></span>
												</c:if>
												Intermittent Wipers
												</li>
												
												<li>
												<c:if test="${car.getExtra_features().toArray()[0].getKeyless_Entry()=='yes' }">
												<span class="fa fa-check"></span>						
												</c:if>
												<c:if test="${car.getExtra_features().toArray()[0].getKeyless_Entry()!='yes' }">
												<span class="fa fa-close"></span>
												</c:if>
												Keyless Entry
												</li>
												
												<li>
												<c:if test="${car.getExtra_features().toArray()[0].getPower_Mirrors()=='yes' }">
												<span class="fa fa-check"></span>						
												</c:if>
												<c:if test="${car.getExtra_features().toArray()[0].getPower_Mirrors()!='yes' }">
												<span class="fa fa-close"></span>
												</c:if>
												Power Mirrors
												</li>
												
												<li>
												<c:if test="${car.getExtra_features().toArray()[0].getPower_Seat()=='yes' }">
												<span class="fa fa-check"></span>						
												</c:if>
												<c:if test="${car.getExtra_features().toArray()[0].getPower_Seat()!='yes' }">
												<span class="fa fa-close"></span>
												</c:if>
												Power Seat
												</li>
												
												<li>
												<c:if test="${car.getExtra_features().toArray()[0].getPower_Steering()=='yes' }">
												<span class="fa fa-check"></span>						
												</c:if>
												<c:if test="${car.getExtra_features().toArray()[0].getPower_Steering()!='yes' }">
												<span class="fa fa-close"></span>
												</c:if>
												Power Steering
												</li>
											</ul>
										</div>
										<div class="col-xs-4">
											<ul>
												<li>
												<c:if test="${car.getExtra_features().toArray()[0].getCD_Player()=='yes' }">
												<span class="fa fa-check"></span>						
												</c:if>
												<c:if test="${car.getExtra_features().toArray()[0].getCD_Player()!='yes' }">
												<span class="fa fa-close"></span>
												</c:if>
												CD Player
												</li>
												
												<li>
												<c:if test="${car.getExtra_features().toArray()[0].getDriver_Side_Airbag()=='yes' }">
												<span class="fa fa-check"></span>						
												</c:if>
												<c:if test="${car.getExtra_features().toArray()[0].getDriver_Side_Airbag()!='yes' }">
												<span class="fa fa-close"></span>
												</c:if>
												Driver Side Airbag
												</li>
												
												<li>
												<c:if test="${car.getExtra_features().toArray()[0].getPower_Windows()=='yes' }">
												<span class="fa fa-check"></span>						
												</c:if>
												<c:if test="${car.getExtra_features().toArray()[0].getPower_Windows()!='yes' }">
												<span class="fa fa-close"></span>
												</c:if>
												Power Windows
												</li>
												
												<li>
												<c:if test="${car.getExtra_features().toArray()[0].getRemote_Start()=='yes' }">
												<span class="fa fa-check"></span>						
												</c:if>
												<c:if test="${car.getExtra_features().toArray()[0].getRemote_Start()!='yes' }">
												<span class="fa fa-close"></span>
												</c:if>
												Remote Start
												</li>
												
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-xs-12">
							<aside class="b-detail__main-aside">
								<div class="b-detail__main-aside-about wow zoomInUp" data-wow-delay="0.5s">
									<h2 class="s-titleDet">INQUIRE ABOUT THIS VEHICLE</h2>
									<div class="b-detail__main-aside-about-call">
										<span class="fa fa-phone"></span>
										<div>Seller Information</div>
										
									</div>
									<div class="b-detail__main-aside-about-seller">
										<p>Contact Detail : <span>Seller</span></p>
									</div>
									<div class="b-detail__main-aside-about-form">
										
										
										<c:if test="${sessionScope.user != null}">
  											
  											<div class="b-detail__main-aside-about-form-links">
											<a href="#" class="j-tab m-active s-lineDownCenter" data-to='#form1'>GENERAL INQUIRY</a>
											
										</div>
										
										
										<form id="form1">
											
											<input type="text"  value="<servion:getUser key="${car.getCar_id()}" parameter="username"/>" name="email" disabled="disabled"/>
											<input type="text"  value="<servion:getUser key="${car.getCar_id()}" parameter="usertype"/>" name="email" disabled="disabled"/>
											<input type="text"  value="<servion:getUser key="${car.getCar_id()}" parameter="mail"/>" name="email" disabled="disabled"/>
											<input type="text"  value="<servion:getUser key="${car.getCar_id()}" parameter="phone"/>" name="email" disabled="disabled"/>
											<input type="text"  value="<servion:getUser key="${car.getCar_id()}" parameter="city"/>" name="email" disabled="disabled"/>
											<input type="text"  value="<servion:getUser key="${car.getCar_id()}" parameter="state"/>" name="email" disabled="disabled"/>
											
											
											
											
											
											
										</form>
                                      
										</c:if>
										
										
										<c:if test="${sessionScope.user == null}">
			                                 <div class="b-detail__main-aside-about-form-links">
											<a href="login" class="m-active s-lineDownCenter" data-to='login'>Login To View Seller Details</a>
											</div>
                                            
                                   
										</c:if>
										
										
									</div>
								</div>
								
							</aside>
						</div>
					</div>
				</div>
			</div>
		</section><!--b-detail-->

		<section class="b-related m-home">
			<div class="container">
				<h5 class="s-titleBg wow zoomInUp" data-wow-delay="0.5s">FIND OUT MORE</h5><br />
				<h2 class="s-title wow zoomInUp" data-wow-delay="0.5s">RELATED VEHICLES ON SALE</h2>
				<div class="row">
				
				<c:forEach var="rcar" items="${rancar}">
					<div class="col-md-3 col-xs-6">
					<spring:form action="details" method="post" commandName="carobj" >
					<spring:hidden path="car_id" value="${rcar.getCar_id()}"/>
						<div class="b-auto__main-item wow zoomInLeft" data-wow-delay="0.5s">
						
							<img class="img-responsive center-block"  src="<c:url value="/resources/media/270x150/LandRover.jpg"></c:url>" alt="LandRover" />
							<div class="b-world__item-val">
								<span class="b-world__item-val-title">REGISTERED <span>${rcar.getYear_model()}</span></span>
							</div>
							<h2><a href="detail.html">${rcar.getCar_make()} ${rcar.getCar_model()}</a></h2>
							<div class="b-auto__main-item-info s-lineDownLeft">
								<span class="m-price">
									${rcar.getEstimated_price()}
								</span>
								<span class="m-number">
									<span class="fa fa-tachometer"></span>${rcar.getKilometres()}
								</span>
							</div>
							<div class="b-featured__item-links m-auto">
								<a href="#">${rcar.getCar_status()}</a>
								<a href="#">${rcar.getYear_model()}</a>
								<a href="#">${rcar.getTransmission()}</a>
								<a href="#">${rcar.getInterior_color()}</a>
								<a href="#">${rcar.getFuel_Type()}</a>
							</div>
							<button type="submit" style="display:none;" name="singlecarbtn">click me</button>
						</div>
						</spring:form>
					</div>
					
				</c:forEach>
					
					
					
					
					
				</div>
			</div>
		</section><!--"b-related-->

		<section class="b-brands s-shadow">
			<div class="container">
				<h5 class="s-titleBg wow zoomInUp" data-wow-delay="0.5s">FIND OUT MORE</h5><br />
				<h2 class="s-title wow zoomInUp" data-wow-delay="0.5s">BRANDS WE OFFER</h2>
				<div class="">
					<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s">
						<img src="<c:url value="/resources/media/brands/bmwLogo.png"></c:url>" alt="brand" />
					</div>
					<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s">
						<img src="<c:url value="/resources/media/brands/ferrariLogo.png"></c:url>" alt="brand" />
					</div>
					<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s">
						<img src="<c:url value="/resources/media/brands/volvo.png"></c:url>" alt="brand" />
					</div>
					<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s">
						<img src="<c:url value="/resources/media/brands/mercLogo.png"></c:url>" alt="brand" />
					</div>
					<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s">
						<img src="<c:url value="/resources/media/brands/audiLogo.png"></c:url>" alt="brand" />
					</div>
					<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s">
						<img src="<c:url value="/resources/media/brands/honda.png"></c:url>" alt="brand" />
					</div>
					<div class="b-brands__brand wow rotateIn" data-wow-delay="0.5s">
						<img src="<c:url value="/resources/media/brands/peugeot.png"></c:url>" alt="brand" />
					</div>
				</div>
			</div>
		</section><!--b-brands-->

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
     $(".col-md-3.col-xs-6").click(function(){
    	 
    	     	 
    	 var btn=$(this).find("[name='singlecarbtn']");
    	 btn[0].click();
    	 
    	
    	 
     });
 });
  

</script>
		
	</body>


</html>