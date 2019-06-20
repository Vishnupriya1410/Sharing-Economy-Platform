<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VendorLogin</title>
<style>
input[type=text] {
	width: 200px;
	height: 50px;
	border: 3px solid #555;
}

input[type=password] {
	width: 200px;
	height: 50px;
	border: 3px solid #555;
}

.button {
	background-color: black; /* Green */
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
}

.button1 {
	background-color: white;
	color: black;
	border: 2px solid black;
	margin-right: 21px
}

.button1:hover {
	background-color: black;
	color: white;
	margin-right: 21px
}
</style>
<script>
                     
	function validate() {
		var VendorUserId = document.form.VendorUserId.value;
		var Password = document.form.Password.value;

		if (VendorUserId == null || VendorUserId == "") {
			alert("VendorUserId cannot be blank");
			return false;
		} else if (Password == null || Password == "") {
			alert("Password cannot be blank");
			return false;
		}
	}
</script>
</head>
<body style="background-image: url('images/ulog.jpg');">
	<div style="text-align: center">
		<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
		<h1 style="font-family:'Algerian';font-size:40px;color:black;text-shadow: 3px 2px white;">Vendor Login</h1>
	</div>

	<br>
	<form name="form" action="VendorLoginController" method="post"
		onsubmit="return validate()">
		<!-- Do not use table to format fields. As a good practice use CSS -->
		<table align="center">
			<tr>
				<td style="font-family:'Constantia';font-size: 35px;color:black;">VendorUserId </td>
				<td><input type="text" name="VendorUserId" /></td>
			</tr>
			<tr>
				<td style="font-family:'Constantia';font-size: 35px;color:black;">Password </td>
				<td><input type="password" name="Password" /></td>
			</tr>
			<tr>
				<!-- refer to the video to understand request.getAttribute() -->
				<td><span style="color: red"> <%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%>
				</span></td>
			</tr>
			<tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
				<td><input type="submit" value="Login" class="button button1"></input>
				<input type="reset" value="Reset" class="button button1"></input></td>
			</tr>
		</table>
	</form>

</body>
</html>
