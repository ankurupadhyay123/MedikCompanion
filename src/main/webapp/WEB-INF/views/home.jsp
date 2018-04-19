<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en-IN">
<!--<![endif]-->
<head>
<link rel="shortcut icon" type="image/x-icon"
	href="resources/img/favi.ico" />
<title>Medik Companion | Home</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
<!--REQUIRED STYLE SHEETS-->
<!-- BOOTSTRAP CORE STYLE CSS -->
<link href="resources/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLE CSS -->
<link href="resources/css/font-awesome.min.css" rel="stylesheet" />
<!--ANIMATED FONTAWESOME STYLE CSS -->
<link href="resources/css/font-awesome-animation.css" rel="stylesheet" />
<!-- CUSTOM STYLE CSS -->
<link href="resources/css/style.css" rel="stylesheet" />
<!-- GOOGLE FONT -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- NAV SECTION -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#home-sec"><img height="30px"
					width="65px" src="resources/img/logo2.jpg" alt="logo"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#home-sec"><span
							class="glyphicon glyphicon-home"></span> HOME</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown"><span
							class="glyphicon glyphicon-list-alt"></span> SERVICES<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#bmi-sec">Diet Chart Generator</a></li>
							<li><a href="#disease-sec">Disease Predictor</a></li>
							<!-- <li><a href="#med-sec">Medicine Notifier</a></li> -->
						</ul></li>
					<li><a href="signin" target="_blank"><span
							class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
					<li><a href="signup" target="_blank"><span
							class="glyphicon glyphicon-user"></span> SIGN-UP</a></li>
					<li><a
						href="mailto:utsav.agrawal123@gmail.com?Subject=User%20feedback"
						target="_blank"><span class="glyphicon glyphicon-thumbs-up"></span>
							SEND FEEDBACK</a></li>
				</ul>
			</div>

		</div>
	</div>
	<!--END NAV SECTION -->

	<!--HOME SECTION-->
	<div id="home-sec">


		<div class="container" id="home">
			<div class="row text-center g-pad-bottom">
				<div class="col-md-12">

					<span class="head-main panel">Medik Companion</span>
				</div>
			</div>
			<div class="row text-center">
				<div class="col-md-1"></div>
				<div class="col-md-5 panel panel-info">
					<div style="color: #000;" class="text-justify panel-body">
						<strong><p class="text-info">Medik Companion is a
								personal health assistant designed to help people better monitor
								their health and promote a healthier and happier society.</p>
							<p class="text-danger">You can use this application to:</p>
							<ul class="list-group">
								<li class="list-group-item list-group-item-success">Get an
									estimated diagnosis based on symptoms</li>
								<li class="list-group-item list-group-item-info">Get a
									personalised diet chart based on your BMI</li>
								<!-- <li class="list-group-item list-group-item-success">Get reminder notifications for medicines.</li> -->
							</ul>
							<p class="text-warning">
								<strong>Note:</strong> This application is not intended as a
								replacement for medical professionals, its sole purpose is to
								make people more aware of their health.
							</p></strong>
					</div>
				</div>
				<div class="col-md-5">
					<img class="img-responsive img-thumbnail" src="resources/img/2.jpg"
						width="80%" height="80%">
				</div>
				<div class="col-md-1"></div>
			</div>


		</div>
	</div>

	<!--END HOME SECTION-->
	<!--BMI SECTION-->
	<section id="bmi-sec">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-5  col-sm-5 panel">
					<i
						class="fa fa-pie-chart faa-horizontal animated icon-round bk-color-brown"></i>
					<h4>
						<a href="bmi" target="_blank">Personalised Diet Chart</a>
					</h4>

				</div>
				<div class="col-md-2 col-sm-2"></div>
				<div class="col-md-5  col-sm-5 panel">
					<p class="text-justify panel-body text-info">This service can
						be used to get a personalised diet plan based on your Body Mass
						Index (BMI). A balanced diet is an essential part of maintaining a
						healthy life style. The diet plan will ensure all your nutritional
						needs in order to stay healthy.</p>

				</div>
			</div>
		</div>
	</section>
	<!--END BMI SECTION-->
	<!--DISEASE SECTION-->
	<section class="c-sts" id="disease-sec">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-5  col-sm-5 panel">
					<i
						class="fa fa-heartbeat faa-horizontal animated icon-round bk-color-brown"></i>
					<h4>
						<a href="diseasePredictor" target="_blank">Disease Prediction</a>
					</h4>

				</div>
				<div class="col-md-2 col-sm-2"></div>
				<div class="col-md-5  col-sm-5 panel">
					<p class="text-justify panel-body text-info">This service can
						be used to get an estimated diagnosis of ailments based on the
						symptoms entered by patient. The service checks the entered
						symptoms against the database to identify the likely cause of the
						symptoms.</p>

				</div>
			</div>
		</div>
	</section>
	<!--END DISEASE SECTION-->

	<!--MEDICINE NOTIFIER SECTION-->
	<!-- <section class="c-sts" id="med-sec">
        <div class="container">
            <div class="row text-center">
            <div class="col-md-5  col-sm-5 panel">
                 <i class="fa fa-medkit faa-horizontal animated icon-round bk-color-brown"></i>
                            <h4><a href="#" >Medicine Notifier</a></h4>
                           
                </div>
						<div class="col-md-2 col-sm-2">
						</div>		
             <div class="col-md-5  col-sm-5 panel">
                            <p class="text-justify panel-body text-info">
								Medicine notifier is an essential tool for those who have to take prescribed medicines but
								often forget to take their medicines on	time. Using this tool you can get timely notifications of when to take your medicines and you'll never miss your
								doses again.
                            </p>
                           
                </div>
            </div>
        </div>
    </section> -->
	<!--END MEDICINE NOTIFIER SECTION-->


	<!--CONTACT SECTION-->

	<section id="contact-sec">
		<iframe class="cnt"
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3500.4342141504417!2d77.49863531457052!3d28.67665498240039!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cee2391c13fd1%3A0x5397410d18100e43!2sAjay+Kumar+Garg+Engineering+College!5e0!3m2!1sen!2sin!4v1483621966443"></iframe>
		<div class="add">
			<i>Address: </i> Ajay Kumar Garg Engineering College, Ghaziabad, U.P.
		</div>

	</section>
	<!--END CONTACT SECTION-->



	<!--FOOTER SECTION -->
	<div id="footer">&copy;2017 All Right Reserved</div>
	<!-- END FOOTER SECTION -->

	<!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
	<!-- CORE JQUERY  -->
	<script src="resources/plugins/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP CORE SCRIPT   -->
	<script src="resources/plugins/bootstrap.js"></script>

	<!-- CUSTOM SCRIPTS -->
	<script src="resources/js/custom.js"></script>

</body>
</html>
