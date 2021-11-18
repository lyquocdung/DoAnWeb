<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Register</title>
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	    <style>
	body{
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
			    	<h3 class="panel-title">Register</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form action="Register" method="post">
                    <fieldset>
                    <p style="margin: 0;padding: 0;color: green;font-size: x-large">${message}</p><br />
                    	<div class="form-group">
			    		    <input  class="form-control" placeholder="User name" name="username" type="text" maxlength="50" >
			    		</div>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="E-mail" name="email" type="text" maxlength="50"  >
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" type="password" value="" maxlength="50">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Re Password" name="repassword" type="password" value="" maxlength="50" >
			    		</div>
			    		<button onclick="send()" class="btn btn-lg btn-success btn-block" type="submit"  >Register</button>
			    	</fieldset>
			    	<a href= "Login" color = "blue" type ="link">Click here to Login</a>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>

 	<script type="text/javascript">
 	function send(){
		var arr = document.getElementsByTagName('input');
		var username = arr[0].value;
		var email = arr[1].value;
		var password = arr[2].value;
		var repassword = arr[3].value;
		if(username =="" || email == "" || password ==""|| repassword ==""){
			alert("Please fill all fields");
			return false; 
		}
		if(username.length < 10 || email.length < 10 || password.length < 6|| repassword.length < 6){
			alert("Insufficient number of characters!");
			return false; 
		}
	}
 	</script> 
		
</body>
</html>>