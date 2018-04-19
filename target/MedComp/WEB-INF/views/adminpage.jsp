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

<title>Medik Companion | Admin Page</title>

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
#admin-sec {
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
<body>
	<div class="col-sm-12" id="admin-sec">
		<header>
			<div class="col-sm-2"></div>
			<div class="panel panel-default col-sm-8">
				<h3 class="text-center" style="color: #000">
					<strong>Welcome ${adminName}</strong>
				</h3>
			</div>
			<div class="col-sm-2"></div>
		</header>
		<div class="col-sm-12">
			<div class="col-sm-4"></div>
			<div class="panel panel-default col-sm-4 text-center">
				<h3>Add new disease</h3>
			</div>
			<div class="col-sm-4"></div>
		</div>

		<div class="panel panel-default col-sm-8 col-sm-offset-2">
			<div class="panel-body">
				<form class="form-horizontal" action="bmiCalc" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="weight">Disease
							Name:</label>
						<div class="input-group col-sm-8">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
								type="text" name="disName" value="${disName}"
								placeholder="Enter Disease Name" class="form-control"
								id="weight2" required />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="sym1">Symptom
							1:</label>
						<div class="input-group col-sm-8">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
								type="text" name="sym1" value="${sym1}"
								placeholder="Enter symptom 1" class="form-control" id="sym1"
								required />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="sym1">Symptom
							2:</label>
						<div class="input-group col-sm-8">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
								type="text" name="sym2" value="${sym2}"
								placeholder="Enter symptom 2" class="form-control" id="sym2"
								required />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="sym1">Symptom
							3:</label>
						<div class="input-group col-sm-8">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
								type="text" name="sym3" value="${sym3}"
								placeholder="Enter symptom 3" class="form-control" id="sym3"
								required />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="sym1">Symptom
							4:</label>
						<div class="input-group col-sm-8">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
								type="text" name="sym4" value="${sym4}"
								placeholder="Enter symptom 4" class="form-control" id="sym4" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="sym1">Symptom
							5:</label>
						<div class="input-group col-sm-8">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
								type="text" name="sym5" value="${sym5}"
								placeholder="Enter symptom 5" class="form-control" id="sym5" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="sym1">Weight</label>
						<div class="input-group col-sm-8">
							<span class="input-group-addon"><i
									class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
								type="number" name="weight" value="${weight}"
								placeholder="Weight(in kgs.)" class="form-control" id="weight" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="sym1">Height</label>
						<div class="input-group col-sm-8">
							<span class="input-group-addon"><i
									class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
								type="number" name="height" value="${height}"
								placeholder="Height(in cms.)" class="form-control" id="height" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-3">
							<button type="submit" name="submit" class="btn btn-success">Submit</button>
						</div>
						<div class="col-sm-offset-1 col-sm-2">
							<button type="reset" class="btn btn-danger">Clear form</button>
						</div>
					</div>
				</form>
				<div class="panel panel-default col-sm-8 col-sm-offset-2">
					<div class="panel-body text-center" style="color: #000">
						<!-- write message here -->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>