<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Login</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
body {
	padding-top: 10%;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row vertical-offset-100">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Please Sign In</h3>
					</div>
					<div class="panel-body">
						<form action="Login" method="post" class="form-login" name="login">
							<fieldset>
								<div class="form-group">
									<i class="alert alert-light text-danger p-0">${message}</i>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="E-mail" name="email"
										type="email" maxlength="50" minlenght="6">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										name="password" type="password" value="" maxlength="50"
										minlenght="6">
								</div>
								<div class="form-check form-check-inline mb-0">
									<input type="checkbox" class="form-check-input" name="remember"
										id="remember" /> <label for="remember">Remember</label>
								</div>
								<button onclick="send()"
									class="btn btn-lg btn-success btn-block" type="submit">Login</button>

							</fieldset>
							<a href="Register" color="blue" type="link">Click here to
								Register</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
		integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
		crossorigin="anonymous"></script>


	<script type="text/javascript">
		function send() {
			var arr = document.getElementsByTagName('input');
			var email = arr[0].value;
			var password = arr[1].value;
			if (email == "" || password == "") {
				alert("Please fill all fields");
				return false;
			}
			if (password.length < 6) {
				alert("Password must be at least 6 characters long.");
				return false;
			}
		}
	</script>
</body>
</html>