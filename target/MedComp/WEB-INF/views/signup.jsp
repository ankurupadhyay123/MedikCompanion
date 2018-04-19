<!DOCTYPE html>
<html lang="en-IN">
<head>
<link rel="shortcut icon" type="image/x-icon"
	href="resources/img/favi.ico" />

<title>Medik Companion | Sign-Up</title>

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
<style>
.aster {
	color: red;
}
</style>
</head>
<body>
	<header>
		<h3 class="text-center">
			<strong>Sign-up Here!</strong>
		</h3>
	</header>
	<form class="form-horizontal" action="signupValidate" method="post">
		<div class="form-group">
			<label class="control-label col-sm-2" for="fname">First Name:<i
				class="aster">*</i></label>
			<div class="input-group col-sm-8">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-pencil" aria-hidden="true"></i></span> <input
					type="text" name="fname" placeholder="Enter your first name"
					class="form-control" id="fname" required />
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="mname">Middle
				Name:</label>
			<div class="input-group col-sm-8">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-pencil" aria-hidden="true"></i></span> <input
					type="text" name="mname"
					placeholder="Enter your middle name (optional)"
					class="form-control" id="mname" />
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="lname">Last Name:<i
				class="aster">*</i></label>
			<div class="input-group col-sm-8">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-pencil" aria-hidden="true"></i></span> <input
					type="text" name="lname" placeholder="Enter your last name"
					class="form-control" id="lname" required />
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="email">Email:<i
				class="aster">*</i></label>
			<div class="input-group col-sm-8">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
					type="email" name="email" placeholder="E-mail" class="form-control"
					id="email" required />
			</div>
		</div>
		<div class="form-group col-sm-6">
			<label class="control-label col-sm-4" for="male">Gender:<i
				class="aster">*</i></label>
		</div>
		<div class="form-group col-sm-2">
			<label class="control-label col-sm-4" for="male">Male:</label>
			<div class="col-sm-8">
				<input type="radio" id="male" name="gender" value="male" />
			</div>
		</div>
		<div class="form-group col-sm-4">
			<label class="control-label col-sm-2" for="female">Female:</label>
			<div class="col-sm-10">
				<input type="radio" id="female" name="gender" value="female" />
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="email">Age:<i
				class="aster">*</i></label>
			<div class="input-group col-sm-8">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
					type="number" name="age" min="1" max="100" class="form-control"
					id="age" required />
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="pwd">Password:<i
				class="aster">*</i></label>
			<div class="input-group col-sm-8">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-lock" aria-hidden="true"></i></span> <input
					type="password" name="pass" id="pwd" class="form-control"
					placeholder="Enter password" required />
				<div class="input-group-btn">
					<button id="eye" class="btn btn-default" type="button"
						onmouseover="rpwdShow()" onmouseout="rpwdHide()">
						<i id="eyeIcon1" class="glyphicon glyphicon-eye-open"></i>
					</button>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="rpwd">Re-type
				Password:<i class="aster">*</i>
			</label>
			<div class="input-group col-sm-8">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-lock" aria-hidden="true"></i></span> <input
					type="password" name="repass" id="rpwd" class="form-control"
					placeholder="Re-type Password" required />
				<div class="input-group-btn">
					<button id="eye2" class="btn btn-default" type="button"
						onmouseover="rpwdShow()" onmouseout="rpwdHide()">
						<i id="eyeIcon2" class="glyphicon glyphicon-eye-open"></i>
					</button>
				</div>
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
	<div class="aster col-sm-8">
		<p>*required</p>
		<p>${message}</p>
	</div>

	<script>
		
			function rpwdShow(){
				document.getElementById('pwd').setAttribute('type','text');
				document.getElementById("eyeIcon1").className = "glyphicon glyphicon-eye-close";
				document.getElementById('rpwd').setAttribute('type','text');
				document.getElementById("eyeIcon2").className = "glyphicon glyphicon-eye-close";
				}
			
			function rpwdHide(){
					document.getElementById('pwd').setAttribute('type','password');
					document.getElementById("eyeIcon1").className = "glyphicon glyphicon-eye-open";
					document.getElementById('rpwd').setAttribute('type','password');
					document.getElementById("eyeIcon2").className = "glyphicon glyphicon-eye-open";
			}
			
		</script>

</body>
</html>