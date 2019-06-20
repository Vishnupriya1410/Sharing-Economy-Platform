<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Product</title>
<style>
input[type=text] {
  width: 200px;
   height:50px;
  border: 3px solid #555;
}
input[type=password] {
  width: 200px;
   height:50px;
  border: 3px solid #555;
}
input[type=cost] {
  width: 200px;
   height:50px;
  border: 3px solid #555;
}
.dropdown
{
 width: 200px;
   height:50px;
  border: 3px solid #555;
}
.button {
 background-color:black; /* Green */
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
  margin-right:21px
}

.button1:hover {
  background-color:   #003d66;
   color: white;
   margin-right:21px
}</style>
</head>
<body style="background-image: url('images/img.jpg'); background-repeat: no-repeat; background-size:100%;">
		 <br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<h1 align="center" align="center"  align="center"  style="font-family:'Algerian';font-size:40px;color:white;text-shadow: 4px 3px black;">Delete Product</h1>
	<div class="ex">
		<form action="DeleteProductController" method="post">
			  <table align="center">
			  <tr>
					<td style="font-family:'Constantia';font-size: 35px;color:white;">VendorID</td>
					<td><input type="text" name="VendorId" value=<%=session.getAttribute("vendorID").toString()  %>  readonly="readonly"/></td>
				</tr>
			  <tr>
					<td style="font-family:'Constantia';font-size: 35px;color:white;">Product Id</td>
					<td><input type="text" name="productId"></td>
				</tr>
				<tr></tr>
				<tr></tr>
				<tr></tr><tr></tr>
				<tr></tr>
				<tr></tr>
				<tr><td colspan="2" align="center" align="center"><input type="submit" value="DeleteProduct" class="button button1"/></td></tr>
			</table>
			
		</form>
	</div>
</body>
</html>