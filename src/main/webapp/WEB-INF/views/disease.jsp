<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en-IN">
<head>
<link rel="shortcut icon" type="image/x-icon"
	href="resources/img/favi.ico" />

<title>Medik Companion | Disease Predictor</title>

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
<style type="text/css">
#contain {
	background: url(resources/img/Stethoscope.jpg) no-repeat 50% 50%;
	opacity: 0.9;
	background-attachment: fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	width: 100%;
	display: block;
}
</style>
</head>
<body id="contain" class="col-sm-12">
	<header>
		<div class="col-sm-2"></div>
		<div class="panel panel-default col-sm-8" style="margin: 20px">
			<h3 class="text-center" style="color: #000">
				<strong>Disease Predictor</strong>
			</h3>
		</div>
		<div class="col-sm-2"></div>
	</header>
	<div class="col-sm-12">
		<div class="col-sm-4"></div>
		<div class="panel panel-default col-sm-4 text-center">
			<h3>
				<a href="diseasePredictor">Start Over</a>
			</h3>
		</div>
		<div class="col-sm-4"></div>
	</div>
	<div class="panel panel-default col-sm-3 col-sm-offset-1">
		<div class="panel-heading">1.Select Body Part</div>
		<div class="panel-body">
			<form class="form-horizontal" action="predict" method="post">
				<select id="selectedRecord" name="selectedRecord"
					style="margin: 10px" class="col-sm-8 col-sm-offset-2" required>
					<option>${part}</option>
					<c:forEach var="item" items="${list}">
						<option>${item}</option>
					</c:forEach>
				</select>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-3">
						<button type="submit" name="submit" class="btn btn-success">Submit</button>
					</div>
					<div class="col-sm-offset-1 col-sm-2">
						<button type="reset" class="btn btn-danger">Clear
							Selection</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="panel panel-default col-sm-3 col-sm-offset-1">
		<div class="panel-heading">2.Select Symptoms(Choose multiple):</div>
		<div class="panel-body">
			<form class="form-horizontal" action="predictDis" method="post">
				<c:forEach var="item" items="${symptoms}">
					<input type="checkbox" value="${item.symName }"
						name="sym${item.symName }" id="sym${item.symName }">
					<label for="sym${item.symName}"><span>:
							${item.symName }</span></label>
					<br />
				</c:forEach>
				<input type="hidden" name="bodypart" value="${part}">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-3">
						<button type="submit" name="submit" class="btn btn-success">Submit</button>
					</div>
					<div class="col-sm-offset-1 col-sm-2">
						<button type="reset" class="btn btn-danger">Clear
							Selection</button>
					</div>
				</div>
			</form>
		</div>
		<h3 style="color: red">${msg}</h3>
	</div>

	<div class="panel panel-default col-sm-3 col-sm-offset-1">
		<div class="panel-heading">3.Possible Ailment(s):</div>
		<div class="panel-body">
			<h3>${ailment}</h3>
		</div>
	</div>
</body>
</html>