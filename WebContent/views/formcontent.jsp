<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="overflow: hidden;">
<head>
<style>
.add-content hr {
    width: 100%;
    margin: 16px 32px;
}
.add-content{
   position : fixed;
   width:70%;
    
}
.add-content .text-add-content{
    margin-left: 2.5%;   
}
.add-content .form-add-content{
    margin: 16px 32px;
    border: 1px solid rgb(221, 221, 221);
    border-radius: 4px;
}
.add-content .title{
    margin-top:0;
    padding: 12px 16px ;
    border-bottom: 1px solid rgb(221, 221, 221);
    background-color: rgb(245, 245, 245);
}
.add-content .row-form{
    padding: 12px 16px;
}
.add-content label{
    display: block;
    font-weight: 550 ;
    margin-bottom: 8px;
}
.add-content .textbox{
    width: 75%;
    min-height: 32px;
    border: 1px solid rgb(204, 204,204);
    border-radius: 4px;
    padding: 4px 12px;
    
}
.add-content .button{
    border: 1px solid rgb(204, 204,204);
    border-radius: 4px;
    background-color: green;
    padding: 8px 16px;
    margin-top: -8px;
    cursor: pointer;
}


</style>
<meta charset="ISO-8859-1">
<title>View Contents</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
	<!-- <script type="text/javascript">
		function validateFormContent() {
			var arr = document.getElementsByTagName('input');
			var title = arr[1].value;
			var brr = document.getElementsByTagName('textarea');
			var brief = brr[0].value;
			var content = brr[1].value;

			if (!title || !brief || !content) {
				alert(" Can't blank!");
				return false;
			} else if (title.length < 10 || brief.length < 30
					|| content.length < 50) {
				alert("Insufficient number of characters!");
				return false;
			}
		}
	</script> -->
	<div class="add-content">
		<c:if test="${id == null}">
			<h1 class="text-add-content">Add Content</h1>
		</c:if>
		<c:if test="${id != null}">
			<h1 class="text-add-content">Edit Content</h1>
		</c:if>
		<hr />
		<c:if test="${id == null}">
		
			<form class="form-add-content" action="AddContent" method="post">
				<p style="margin: 0; padding: 0; color: green">${message}</p>

				<p class="title">Content Form Elements</p>

				<div class="row-form">
					<label for="title">Title</label> 
					<input type="text" class="textbox" id="title" name="title" placeholder="Enter the title" maxlength="200" >
				</div>

				<div class="row-form">
					<label for="brief">Brief</label>
					<textarea name="brief" id="brief" rows="3" class="textbox" maxlength="150"></textarea>
				</div>

				<div class="row-form">
					<label for="content">Content</label>
					<textarea name="content" id="content" rows="9" class="textbox" maxlength="1000"></textarea>
				</div>

				<div class="row-form">					
					<button class="button" type="submit" name="submit" value="submit">Submit Button</button>
					<button class="button" type="reset">Reset Button</button>
				</div>
			</form>
		</c:if>
		<c:if test="${id != null}">
			<form class="form-add-content" action="EditContent" method="post">
				<p style="margin: 0; padding: 0; color: green">${message}</p>

				<p class="title">Content Form Elements</p>

				<div class="row-form">
					<input type="hidden" name="id" value="<c:out value='${id}' />" /> 
					<label for="title">Title</label> 
					<input type="text" class="textbox" id="title" name="title" placeholder="Enter the title" value="${title}" maxlength="200">
				</div>

				<div class="row-form">
					<label for="brief">Brief</label>
					<textarea name="brief" id="brief" rows="3" class="textbox"  maxlength="150">${brief}</textarea>
				</div>

				<div class="row-form">
					<label for="content">Content</label>
					<textarea name="content" id="content" rows="9" class="textbox" maxlength="1000">${content}</textarea>
				</div>

				<div class="row-form">					
					<button class="button" type="submit" name="submit" value="submit">Submit Button</button>
					<button class="button" type="reset">Reset Button</button>
				</div>
			</form>
		</c:if>
	</div>
</body>
</html>
	