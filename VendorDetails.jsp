<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendor Details</title>
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
input[type=OtherContactInfo] {
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
  background-color: black;
   color: white;
   margin-right:21px
}</style>
<script>
function validate() {
var ZipCode= document.form.ZipCode.value;
var LandLine= document.form.LandLine.value;
var message="";
var f=false;
if (ZipCode == null || ZipCode == "") {
    //alert("First Name cannot be blank");
    f=true;
    message+="--Enter ZipCode\n";
    document.form.ZipCode.focus();
}
if (LandLine == null || LandLine == "") {
       //alert("First Name cannot be blank");
       f=true;
       message+="--Enter LandLine\n";
       document.form.LandLine.focus();
}

if(f)
       {
       alert(message);
       return false;
       }
       return true;
}
</script>
</head>

<body style="background-image: url('images/ulog.jpg');">
<br><br><br><br>
	<br><br><br><br>
	<h1 align="center" style="font-family:'Algerian';font-size:40px;color:black;text-shadow: 3px 2px white;">Update Vendor Details</h1><br>
<small style="font-family: Cambria;font-size: 20px;font-style: italic;color: black;"><center>Please fill all the Mandatory fields Marked
		with <b style="color:red;">*</b></center></small>

	<form name="form" action="VendorDetailsController" method="post"
		onsubmit="return validate()">
		<br><br><br>
		<table align="center">
			<tr>
				<td style="font-family:'Constantia';font-size: 35px;color:black;">VendorUserID</td>
				<td><input type="text" name="VendorUserId"
					value=<%=session.getAttribute("VendorUserId").toString()  %> /></td>
			</tr>
			<tr>
				<td style="font-family:'Constantia';font-size: 35px;color:black;">Email</td>
				<td><input type="text" name="Email"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
					title="Enter valid EmailID"></input></td>
			</tr>
			<tr>
				<td style="font-family:'Constantia';font-size: 35px;color:black;">Address</td>
				<td><input type="text" name="Address" /></td>
			</tr>
			<tr>
				<td style="font-family:'Constantia';font-size: 35px;color:black;">City</td>
				<td><input type="text" name="City" /></td>
			</tr>
			<tr>
				<td style="font-family:'Constantia';font-size: 35px;color:black;">ZipCode<b style="color: red">*</b></td>
				<td><input type="text" name="ZipCode"
					pattern="[-+]?[0-9]*[.,]?[0-9]+" title="Must contain only numbers"></td>
			</tr>
			<tr>
				<td style="font-family:'Constantia';font-size: 35px;color:black;">LandLine<b style="color: red">*</b></td>
				<td><input type="text" name="LandLine"
					pattern="[-+]?[0-9]*[.,]?[0-9]+" maxlength="10"
					title="Must contain only numbers"></td>
			</tr>
			<tr>
				<td style="font-family:'Constantia';font-size: 35px;color:black;">OtherContactInfo</td>
				<td><input type="OtherContactInfo" name="OtherContactInfo" /></td>
			</tr>
			<tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
				<td colspan="2" align="center"><input type="submit" value="Update" class="button button1">
				
				</td>
			</tr>
		</table>

	</form>

</body>


</html>


