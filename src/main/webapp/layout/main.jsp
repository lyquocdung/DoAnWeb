<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<title><tiles:getAsString name="title" /></title>
<style type="text/css">
* {
  box-sizing: border-box;
}

body {
  margin: 0;
}

header {
	text-align: center;
	padding: 20px;
	height: 6%;
	background:#f8f8f8;
	border-width: 1px;
    border-color:#f4f4f4;
    border-style: groove;
	
}


/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

aside {
	float: left;
	width: 16%;
	background:#f8f8f8;
	border-width: 1px;
    border-color:#f4f4f4;
    border-style: groove;
	padding: 10px;
	min-height:94%;
}

section {
	float: left;
	width:84%;
	padding: 10px;
	min-height:94%;
}

</style>
</head>
<body>
	<header>
		<tiles:insertAttribute name="header" />
	</header>
	<div class="row">
		<aside>
			<tiles:insertAttribute name="menu" />
		</aside>
		<section>
			<tiles:insertAttribute name="body" />
		</section>
	</div>

</body>
</html>