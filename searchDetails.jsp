<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CategoryDetails</title>
<style>
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
  background-color: #00ffcc;
   color: black;
   margin-right:21px
}
.dropdown
{
 width: 200px;
   height:50px;
  border: 3px solid #555;
}</style>
</head>

<body style="background-image: url('images/imgg5.jpg');">
<form action="CategoryController" method="post">
	<br><br><br>
	<br><br><br>
	<br><br>

			<h1 align="center" style="font-family:'Algerian';font-size:40px;color:#004d39;text-shadow: 3px 2px white;">Category Options</h1>
		<table align="center">
		<%
		
			ArrayList list = (ArrayList) request.getAttribute("cat_list");
			int size = list.size();
		%>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr>
			<td style="font-family:'Constantia';font-size: 35px;color:black;align-content: center;"> Select Category :</td>
			<td><select name="catName" onclick="" class="dropdown">
					<%
						for (int i = 0; i < size; i++) {
							ArrayList pList = (ArrayList) list.get(i);
					%>
					<option  style=" font-size: 18px;font-family: Cambria;" value="<%=pList.get(0)%>"><%=pList.get(0)%></option>
					<%
						}
					%>
			</select>
			</td>
		</tr>
		<tr></tr><tr></tr>
		<tr></tr><tr></tr>
		<tr></tr><tr></tr>
		
		<tr></tr><tr></tr>
		<tr></tr><tr></tr>
		<tr></tr><tr></tr>
		
		<tr><td align="center"> </td>
		<td><input type="submit" value="ProductDetails" class="button button1" ><center></center></td></tr>
		</table>
		</form>
</body>
</html>
