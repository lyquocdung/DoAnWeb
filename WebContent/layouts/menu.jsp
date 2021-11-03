<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
* {
	box-sizing: border-box;
	margin: 0;
}

nav.navbar {
	width: 100%;
	background-color: rgb(248, 248, 248);
	height: 40px;
}

p {
	padding: 12px;
}

hr {
	border: 1px solid rgb(240, 240, 240);
}

hr.hr {
	width: 300px;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	display: flex;
	overflow: hidden;
	background-color: rgb(248, 248, 248);
	width: 100%;
}

button {
	width: 40px;
	height: 35px;
	background: none;
	border: none;
	border: 2px solid rgb(240, 240, 240);
	margin: 11px 10px 10px -12px;
	background-color: white;
}

.topnav a {
	float: left;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav .search-container {
	float: right;
}

.topnav input[type=text] {
	padding: 6px;
	margin: 10px;
	font-size: 17px;
	width: 313px;
	border: 2px solid rgb(240, 240, 240);
}

.topnav .search-container button {
	float: right;
	padding: 6px 10px;
	margin-top: 8px;
	margin-right: 16px;
	background: #ddd;
	font-size: 17px;
	cursor: pointer;
}

form {
	width: 25%;
	border: 2px solid rgb(240, 240, 240);
}

.menu {
	background-color: rgb(248, 248, 248);
	display: flex;
	width: 100%;
}

a {
	text-decoration: none;
	color: rgb(84, 150, 202);
	width: 90%;
}

i.fa.fa-table {
	margin: 10px -15px 12px 12px;
	color: rgb(84, 150, 202);
	width: 10%;
}

i.fas.fa-edit {
	margin: 10px -15px 12px 12px;
	color: rgb(84, 150, 202);
	width: 10%;
}

.emplty {
	height: 400px;
	background-color: rgb(248, 248, 248);
}

@media screen and (min-width: 1280px) {
	/* laptop and desktop */
	form {
		width: 25%;
	}
}

@media screen and (min-width: 700px) {
	/* tablet and mobile */
	form {
		width: min-content;
	}
}

@media screen and (min-width: 1024px) {
	form {
		width: min-content;
	}
}

@media screen and (max-width: 720px) {
	form {
		width: min-content;
	}
	.emplty {
		height: 50px;
	}
}

@media screen and (max-width: 481px) {
	/* smartphone mobile */
	form {
		width: 100%;
	}
	.emplty {
		height: 50px;
	}
}
</style>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="content.css">
<script src="https://kit.fontawesome.com/yourcode.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="fontawesome-free-5.15.1-web/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Header</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
	<div>
		<form action="" class="content">
			<div class="topnav">
				<input type="text" placeholder="Search.." name="search">
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
			</div>
			<hr>
			<div class="menu">
				<i class="fa fa-table"></i>
				<p>
					<b><a href="welcome.tiles">View Contents</a></b>
				</p>
			</div>
			<hr>
			<div class="menu">
				<i class="fas fa-edit"></i>
				<p>
					<b><a href="contact.tiles">Form Contents</a></b>
				</p>
			</div>
			<hr>
			<div class="emplty"></div>
		</form>
	</div>
</body>
</html>
