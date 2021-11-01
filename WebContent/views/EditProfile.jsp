<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.header_edt {
	background-color: red;
	color: #FFF;
	border-collapse: collapse;
	border: 1px solid black;
	width: 96%;
	margin-left: 20px;
	height: 30px;
}

.body_edt {
	background-color: white;
	color: black;
	border: 1px solid black;
	width: 96%;
	height: 90%;
	margin-left: 20px;
	display: inline-block;
	vertical-align: middle;
}
b {
    margin-bottom: 6px;
    margin-top: 16px;
    margin-left: 16px;
}

.text {
	width: 90%;
	margin-left:16px;
	height:25px;
	border-radius: 4px;
	padding-left: 10px;
}
.textdes{
	width: 90%;
	margin-left:16px;
	height:50px;
}

.btn_submit {
    margin-bottom: 16px;
    margin-left: 16px;
    margin-top:10px;
}


</style>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
	<form action="EditProfile" method="edit">
		<div class="container-editprofile">
			<div class="row-main">
				<h1 style="margin-top: 2%;">Edit Profile</h1>
				<hr />
				<div class="edt_table">
					<div class="header_edt">
						<a style="vertical-align: middle; margin-left: 20px;">Profile
							form elements</a>
					</div>
					<div class="body_edt">
						<p>
							<b>First Name</b>
						</p>
						<p>
							<input class="text" type="firstname"
								placeholder="Enter the first name">
						</p>
						<p>
							<b>Last Name</b>
						</p>
						<p>
							<input class="text" type="lastname"
								placeholder="Enter the last name">
						</p>
						<p>
							<b>Email</b>
						</p>
						<p>
								<input class="text" type="email"
									placeholder="your_email@example.com" style="border-style: none"></input>
							</p>
						<p>
							<b>Phone</b>
						</p>
						<p>
							<input class="text" type="phone"
								placeholder="Enter your phone number">
						</p>
						<p>
							<b>Description</b>
						</p>
						<p>
							<input class="textdes" type="description" placeholder="">
						</p>
						<button class="btn_submit">Submit Button</button>
						<button class="btn_reset">Reset Button</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>