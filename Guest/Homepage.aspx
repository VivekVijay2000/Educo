﻿<!DOCTYPE html>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>SmartEDU - Education </title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="host_version"> 

	<!-- Modal -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header tit-up">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Customer Login</h4>
			</div>
			<div class="modal-body customer-box">
				<!-- Nav tabs -->
				<%--<ul class="nav nav-tabs">
					<li><a class="active" href="#Login" data-toggle="tab">Login</a></li>
					<li><a href="#Registration" data-toggle="tab">Registration</a></li>
				</ul>--%>
				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active" id="Div1">
					
					</div>
					<div class="tab-pane" id="Registration">
						<%--<form role="form" class="form-horizontal">
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" placeholder="Name" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="email" placeholder="Email" type="email">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="mobile" placeholder="Mobile" type="email">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="password" placeholder="Password" type="password">
								</div>
							</div>
							<div class="row">							
								<div class="col-sm-10">
									<button type="button" class="btn btn-light btn-radius btn-brd grd1">
										Save &amp; Continue
									</button>
									<button type="button" class="btn btn-light btn-radius btn-brd grd1">
										Cancel</button>
								</div>
							</div>
						</form>--%>
					</div>
				</div>
			</div>
		</div>
	  </div>
	</div>

    <!-- LOADER -->
	<div id="preloader">
		<div class="loader-container">
			<div class="progress-br float shadow">
				<div class="progress__item"></div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->	
	
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="index.html">
					<img src="images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-host" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
					<span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-host">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="LandingPage.aspx">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="NewInstitution.aspx">New Institution</a></li>
                        <li class="nav-item active"><a class="nav-link" href="NewUser.aspx">New User</a></li>
                        <li class="nav-item active"><a class="nav-link" href="EmployeeRegistration.aspx">New Trainer</a></li>
						<li class="nav-item"><a class="nav-link" href="Login.aspx">Login</a></li>
						
						<!--<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Course </a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="course-grid-2.html">Course Grid 2 </a>
								<a class="dropdown-item" href="course-grid-3.html">Course Grid 3 </a>
								<a class="dropdown-item" href="course-grid-4.html">Course Grid 4 </a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="A1" data-toggle="dropdown">Blog </a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="blog.html">Blog </a>
								<a class="dropdown-item" href="blog-single.html">Blog single </a>
							</div>
						</li>
						<li class="nav-item"><a class="nav-link" href="teachers.html">Teachers</a></li>
						<li class="nav-item"><a class="nav-link" href="pricing.html">Pricing</a></li>
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
					</ul>-->
					<!--<ul class="nav navbar-nav navbar-right">
                        <li><a class="hover-btn-new log orange" href="#" data-toggle="modal" data-target="#login"><span>Book Now</span></a></li>
                    </ul>-->
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	
	<div id="carouselExampleControls" class="carousel slide bs-slider box-slider" data-ride="carousel" data-pause="hover" data-interval="false" >
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleControls" data-slide-to="1"></li>
			<li data-target="#carouselExampleControls" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active">
				<div id="home" class="first-section" style="background-image:url('images/slider-01.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-right">
									<div class="big-tagline">
										<h2><strong>SmartEDU </strong> education Academy</h2>
										<%--<p class="lead">With Landigoo responsive landing page template, you can promote your all hosting, domain and email services. </p>--%>
											<%--<a href="#" class="hover-btn-new"><span>Contact Us</span></a>--%>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<%--<a href="#" class="hover-btn-new"><span>Read More</span></a>--%>
									</div>
								</div>
							</div><!-- end row -->            
						</div><!-- end container -->
					</div>
				</div><!-- end section -->
			</div>
			<div class="carousel-item">
				<div id="Div2" class="first-section" style="background-image:url('images/slider-02.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-left">
									<div class="big-tagline">
										<h2 data-animation="animated zoomInRight">SmartEDU <strong>education College</strong></h2>
										<p class="lead" data-animation="animated fadeInLeft">With Landigoo responsive landing page template, you can promote your all hosting, domain and email services. </p>
											<a href="#" class="hover-btn-new"><span>Contact Us</span></a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="#" class="hover-btn-new"><span>Read More</span></a>
									</div>
								</div>
							</div><!-- end row -->            
						</div><!-- end container -->
					</div>
				</div><!-- end section -->
			</div>
			<div class="carousel-item">
				<div id="Div3" class="first-section" style="background-image:url('images/slider-03.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-center">
									<div class="big-tagline">
										<h2 data-animation="animated zoomInRight"><strong>VPS Servers</strong> Academy</h2>
										<p class="lead" data-animation="animated fadeInLeft">1 IP included with each server 
											Your Choice of any OS (CentOS, Windows, Debian, Fedora)
											FREE Reboots</p>
											<a href="#" class="hover-btn-new"><span>Contact Us</span></a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="#" class="hover-btn-new"><span>Read More</span></a>
									</div>
								</div>
							</div><!-- end row -->            
						</div><!-- end container -->
					</div>
				</div><!-- end section -->
			</div>
			<!-- Left Control -->
			<a class="new-effect carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
				<span class="fa fa-angle-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>

			<!-- Right Control -->
			<a class="new-effect carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
				<span class="fa fa-angle-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	
    <div id="overviews" class="section wb">
        <div class="container">
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>About</h3>
                    <p class="lead">We are creating legacy.</p>
                </div>
            </div><!-- end title -->
        
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="message-box">
                        <h4>2021 BEST SmartEDU education acedemy</h4>
                        <h2>Welcome to SmartEDU education acedemy</h2>
                        <p>We are top rated e-learning platform for online courses with multiple most watched videos on our YouTube Channel.</p>

                        <p> We are helping aspirants from a long term and we have helped thousands of students reaching their goals.We are SMARTEDUACADEMY. </p>

                        <a href="#" class="hover-btn-new orange"><span>Learn More</span></a>
                    </div><!-- end messagebox -->
                </div><!-- end col -->
				
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="post-media wow fadeIn">
                        <img src="images/about_02.jpg" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
                </div><!-- end col -->
			</div>
			<div class="row align-items-center">
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="post-media wow fadeIn">
                        <img src="images/about_03.jpg" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
                </div><!-- end col -->
				
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="message-box">
                        <h2>WHAT WE DO</h2>
                        <p>We are providing premium courses at very reasonable prices to help aspirants fulfilling their dreams.</p>

                        <p> We also have multiple free courses on our website.We are creating a legacy in e-learning acedemy.</p>

                        <a href="#" class="hover-btn-new orange"><span>Learn More</span></a>
                    </div><!-- end messagebox -->
                </div><!-- end col -->
				
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->

    <section class="section lb page-section">
		<div class="container">
			 <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>Our Mission</h3>
                    <p class="lead">The mission of SmartEDU is to accelerate the world’s research in the field of education</p>
                </div>
            </div><!-- end title -->
			<div class="timeline">
				<div class="timeline__wrap">
					<div class="timeline__items">
						<div class="timeline__item">
							<div class="timeline__content img-bg-01">
								<h2>Open Access</h2>
								<p>SmartEDU’s goal is to ensure that every paper, ever written, is on the internet, available for free. 22 million papers have been uploaded to SmartEDU. We think there are ~100 million papers ever written, so we are ~22% of the way there.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-02">
								<h2>Distribution</h2>
								<p>SmartEDU’s goal is to build the fastest and most relevant paper distribution system in the world. Today SmartEDU’s algorithms make about 20 million paper recommendations a day.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-03">
								<h2>Peer Review</h2>
								<p>SmartEDU’s goal is to provide signals regarding the trustworthiness of papers, and the trustworthiness of individual claims within papers, on SmartEDU.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-04">
								<h2>Formats</h2>
								<p>SmartEDU’s goal is to enable the sharing of knowledge in novel and effective formats - video, short-form content, data-sets, code.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-01">
								<h2>2010</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim neque condimentum lacus dapibus. Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-02">
								<h2>2007</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim neque condimentum lacus dapibus. Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-03">
								<h2>2004</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim neque condimentum lacus dapibus. Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-04">
								<h2>2002</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim neque condimentum lacus dapibus. Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="section cl">
		<div class="container">
			<div class="row text-left stat-wrap">
				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll class="global-radius icon_wrap effect-1 alignleft"><i class="flaticon-study"></i></span>
					<p class="stat_count">12000</p>
					<h3>Students</h3>
				</div><!-- end col -->

				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll class="global-radius icon_wrap effect-1 alignleft"><i class="flaticon-online"></i></span>
					<p class="stat_count">240</p>
					<h3>Courses</h3>
				</div><!-- end col -->

				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll class="global-radius icon_wrap effect-1 alignleft"><i class="flaticon-years"></i></span>
					<p class="stat_count">55</p>
					<h3>Years Completed</h3>
				</div><!-- end col -->
			</div><!-- end row -->
		</div><!-- end container -->
	</div><!-- end section -->

    <div id="plan" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h3>Choose Your Plan</h3>
                <p>SmartEDU has a "Freemium" business model, providing free access to research for everyone and paid premium capabilities to subscribers. Subscribing to Academia Premium gives researchers access to advanced research discovery tools and gives authors enhanced analytics and impact tracking tools. Our 260,000+ premium subscribers cover the cost of hosting free research and pursuing our mission. </p>
            </div><!-- end title -->

            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="message-box">
                        <ul class="nav nav-pills nav-stacked" id="myTabs">
                            <li><a class="active" href="#tab1" data-toggle="pill">Monthly Subscription</a></li>
                            <li><a href="#tab2" data-toggle="pill">Yearly Subscription</a></li>
                        </ul>
                    </div>
                </div><!-- end col -->
            </div>

            <hr class="invis">

            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <div class="tab-pane active fade show" id="tab1">
                            <div class="row text-center">
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>$45</h2>
                                            <h3>per month</h3>
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <p><i class="fa fa-envelope-o"></i> <strong>250</strong> Email Addresses</p>
                                            <p><i class="fa fa-rocket"></i> <strong>125GB</strong> of Storage</p>
                                            <p><i class="fa fa-database"></i> <strong>140</strong> Databases</p>
                                            <p><i class="fa fa-link"></i> <strong>60</strong> Domains</p>
                                            <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="#" class="hover-btn-new orange"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>$59</h2>
                                            <h3>per month</h3>
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <p><i class="fa fa-envelope-o"></i> <strong>150</strong> Email Addresses</p>
                                            <p><i class="fa fa-rocket"></i> <strong>65GB</strong> of Storage</p>
                                            <p><i class="fa fa-database"></i> <strong>60</strong> Databases</p>
                                            <p><i class="fa fa-link"></i> <strong>30</strong> Domains</p>
                                            <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="#" class="hover-btn-new orange"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>$85</h2>
                                            <h3>per month</h3>
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <p><i class="fa fa-envelope-o"></i> <strong>250</strong> Email Addresses</p>
                                            <p><i class="fa fa-rocket"></i> <strong>125GB</strong> of Storage</p>
                                            <p><i class="fa fa-database"></i> <strong>140</strong> Databases</p>
                                            <p><i class="fa fa-link"></i> <strong>60</strong> Domains</p>
                                            <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="#" class="hover-btn-new orange"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end row -->
                        </div><!-- end pane -->

                        <div class="tab-pane fade" id="tab2">
                            <div class="row text-center">
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>$477</h2>
                                            <h3>Year</h3>
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <p><i class="fa fa-envelope-o"></i> <strong>250</strong> Email Addresses</p>
                                            <p><i class="fa fa-rocket"></i> <strong>125GB</strong> of Storage</p>
                                            <p><i class="fa fa-database"></i> <strong>140</strong> Databases</p>
                                            <p><i class="fa fa-link"></i> <strong>60</strong> Domains</p>
                                            <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="#" class="hover-btn-new orange"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>$485</h2>
                                            <h3>Year</h3>
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <p><i class="fa fa-envelope-o"></i> <strong>150</strong> Email Addresses</p>
                                            <p><i class="fa fa-rocket"></i> <strong>65GB</strong> of Storage</p>
                                            <p><i class="fa fa-database"></i> <strong>60</strong> Databases</p>
                                            <p><i class="fa fa-link"></i> <strong>30</strong> Domains</p>
                                            <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="#" class="hover-btn-new orange"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>$500</h2>
                                            <h3>Year</h3>
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <p><i class="fa fa-envelope-o"></i> <strong>250</strong> Email Addresses</p>
                                            <p><i class="fa fa-rocket"></i> <strong>125GB</strong> of Storage</p>
                                            <p><i class="fa fa-database"></i> <strong>140</strong> Databases</p>
                                            <p><i class="fa fa-link"></i> <strong>60</strong> Domains</p>
                                            <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="#" class="hover-btn-new orange"><span>Order Now</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end row -->
                        </div><!-- end pane -->
                    </div><!-- end content -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->

    <div id="testimonials" class="parallax section db parallax-off" style="background-image:url('images/parallax_04.jpg');">
        <div class="container">
            <div class="section-title text-center">
                <h3>The Reach of SmartEDU</h3>
                <p>We have over 31 million visitors each month. People using SmartEDU include institutions, professionals, and students.. </p>
            </div><!-- end title -->

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="testi-carousel owl-carousel owl-theme">
                        <div class="testimonial clearfix">
							<div class="testi-meta">
                                <img src="images/testi_01.png" alt="" class="img-fluid">
                                <h4>James Fernando </h4>
                            </div>
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Wonderful Support!</h3>
                                <p class="lead">They have got my project on time with the competition with a sed highly skilled, and experienced & professional team.</p>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->

                        <div class="testimonial clearfix">
							<div class="testi-meta">
                                <img src="images/testi_02.png" alt="" class="img-fluid">
                                <h4>Jacques Philips </h4>
                            </div>
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Awesome Services!</h3>
                                <p class="lead">Explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you completed.</p>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->

                        <div class="testimonial clearfix">
							<div class="testi-meta">
                                <img src="images/testi_03.png" alt="" class="img-fluid ">
                                <h4>Venanda Mercy </h4>
                            </div>
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Great & Talented Team!</h3>
                                <p class="lead">The master-builder of human happines no one rejects, dislikes avoids pleasure itself, because it is very pursue pleasure. </p>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->
                        <div class="testimonial clearfix">
							<div class="testi-meta">
                                <img src="images/testi_01.png" alt="" class="img-fluid">
                                <h4>James Fernando </h4>
                            </div>
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Wonderful Support!</h3>
                                <p class="lead">They have got my project on time with the competition with a sed highly skilled, and experienced & professional team.</p>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->

                        <div class="testimonial clearfix">
							<div class="testi-meta">
                                <img src="images/testi_02.png" alt="" class="img-fluid">
                                <h4>Jacques Philips </h4>
                            </div>
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Awesome Services!</h3>
                                <p class="lead">Explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you completed.</p>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->

                        <div class="testimonial clearfix">
							<div class="testi-meta">
                                <img src="images/testi_03.png" alt="" class="img-fluid">
                                <h4>Venanda Mercy </h4>
                            </div>
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Great & Talented Team!</h3>
                                <p class="lead">The master-builder of human happines no one rejects, dislikes avoids pleasure itself, because it is very pursue pleasure. </p>
                            </div>
                            <!-- end testi-meta -->
                        </div><!-- end testimonial -->
                    </div><!-- end carousel -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->

    <div class="parallax section dbcolor">
        <div class="container">
            <div class="row logos">
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_01.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_02.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_03.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_04.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_05.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_06.png" alt="" class="img-repsonsive"></a>
                </div>
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>About US</h3>
                        </div>
                        <p> We are top rated e-learning platform for online courses with multiple most watched videos on our YouTube Channel.We are helping aspirants from a long term and we have helped thousands of students reaching their goals.We are SMARTEDUACADEMY.</p>   
						<div class="footer-right">
							<ul class="footer-links-soi">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-github"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
							</ul><!-- end links -->
						</div>						
                    </div><!-- end clearfix -->
                </div><!-- end col -->

				<div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Information Link</h3>
                        </div>
                        <ul class="footer-links">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Pricing</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">Contact</a></li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
                <div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Contact Details</h3>
                        </div>

                        <ul class="footer-links">
                            <li><a href="mailto:#">SmartEDU@.com</a></li>
                            <li><a href="#">www.SmartEDU.com</a></li>
                            <li>PO Box 16122 Collins Street West Kochi 8007 India</li>
                            <li>+61 3 8376 6284</li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
            </div><!-- end row -->
        </div><!-- end container -->
    </footer><!-- end footer -->

    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-center">                   
                    <p class="footer-company-name">All Rights Reserved. &copy; 2018 <a href="#">SmartEDU</a> Design By : <a href="https://html.design/">html design</a></p>
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
	<script src="js/timeline.min.js"></script>
	<script>
	    timeline(document.querySelectorAll('.timeline'), {
	        forceVerticalMode: 700,
	        mode: 'horizontal',
	        verticalStartPosition: 'left',
	        visibleItems: 4
	    });
	</script>
</body>
</html>