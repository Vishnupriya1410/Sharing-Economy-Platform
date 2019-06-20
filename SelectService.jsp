<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- #751aff-purple -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Service</title>
<style>
input[type=text] {
  width: 200px;
   height:50px;
  border: 3px solid #290066;
}
input[type=password] {
  width: 200px;
   height:50px;
  border: 3px solid #290066;
}
input[type=cost] {
  width: 200px;
   height:50px;
  border: 3px solid #290066;
}
.dropdown
{
 width: 200px;
   height:50px;
  border: 3px solid #290066;
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
  color: #290066; 
  border: 2px solid black;
  margin-right:21px
}

.button1:hover {
  background-color:   #5c00e6;
   color: white;
   margin-right:21px
}</style>
</head>
<body style="background-image: url('images/imgg8.jpg'); background-repeat: no-repeat; background-size: 100%">
	 <br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<h1 align="center" style="font-family:'Algerian';font-size:40px;color:#5c00e6;text-shadow: 4px 3px white;">Add Service</h1>
	<div class="ex">
		<form action="SelectServiceController" method="post">
			<table  align="center">
				<tr>
					<td style="font-family:'Constantia';font-size: 35px;color:#5c00e6;">VendorID</td>
					<td><input type="text" name="VendorId" value=<%=session.getAttribute("vendorID").toString()  %> readonly="readonly" /></td>
				</tr>
				<tr>
					<td style="font-family:'Constantia';font-size: 35px;color:#5c00e6;">Service details</td>
					<td><select name="servicedetails"class="dropdown"> 
					<option value="" ></option> 
   					<option value="1 Express Delivery" style=" font-size: 18px;font-family: Cambria;">1 Express Delivery</option> 
    				<option value="2 Slotted" style=" font-size: 18px;font-family: Cambria;">2 Slotted</option> 
    			</select> </td>
				</tr>
				<tr>
					<td style="font-family:'Constantia';font-size: 35px;color:#5c00e6;">Delivery time</td>
					<td><select name="timeSlot" class="dropdown"> 
					<option value="30 mins" style=" font-size: 18px;font-family: Cambria;">30 mins(Express Delivery)</option> 
   					 <option value="7Am to 9Am" style=" font-size: 18px;font-family: Cambria;">7Am to 9Am</option> 
    				<option value="5PM to 9PM" style=" font-size: 18px;font-family: Cambria;">5PM to 9PM</option> </select> </td>
					</tr>
					<tr>
					<td style="font-family:'Constantia';font-size: 35px;color:#5c00e6;">Availability</td>
					<td><select name="availability" class="dropdown"> 
					<option value=""></option> 
   					<option value="Yes" style=" font-size: 18px;font-family: Cambria;">yes</option> 
    				<option value="No" style=" font-size: 18px;font-family: Cambria;">No</option> </select> </td>
					</tr>
					<tr>
					<td style="font-family:'Constantia';font-size: 35px;color:#5c00e6;">Cost</td>
					<td><input type="cost" name="cost" /></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr></tr><tr></tr>
				<tr></tr>
				<tr></tr>
					<tr>
					<td colspan="2" align="center">
					<input type="submit" value="SelectService" class="button button1" />
					</td>
					</tr>
			</table>
			
		</form>
	</div>
</body>
</html>


