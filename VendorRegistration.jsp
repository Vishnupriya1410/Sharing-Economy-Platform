<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendor Register</title>
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
input[type=number] {
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
  background-color: black;
   color: white;
   margin-right:21px
}</style>
<script>
function validate() {
var FirstName= document.form.FirstName.value;
var LastName= document.form.LastName.value;
var Age= document.form.Age.value;
var Gender= document.form.Gender.value;
var ContactNumber= document.form.ContactNumber.value;
var VendorUserId = document.form.VendorUserId.value;
var Password = document.form.Password.value;
var message="";
var f=false;

if (VendorUserID==null || VendorUserID == "") {
       f=true;
message+="--Enter userId\n";
document.form.VendorUserID.focus();
}
if (Password == null || Password == "") {
//alert("Password cannot be blank");
f=true;
message+="--Enter password\n";
document.form.Password.focus();
}

if (LastName == null || LastName == "") {
       //alert("Last Name cannot be blank");
       f=true;
       message+="--Enter Last Name\n";
       document.form.LastName.focus();
}
if (FirstName == null || FirstName == "") {
       //alert("First Name cannot be blank");
       f=true;
       message+="--Enter First Name\n";
       document.form.FirstName.focus();
}
if (Age == null || Age == "") {
       //alert("First Name cannot be blank");
       f=true;
       message+="--Enter Age\n";
       document.form.Age.focus();
}
if (form.Gender.selectedIndex==0) {
       //alert("First Name cannot be blank");
       f=true;
       message+="--Select Gender\n";
       document.form.Gender.focus();
}
if (ContactNumber == null || ContactNumber == "") {
       //alert("First Name cannot be blank");
       f=true;
       message+="--Enter Contact Number\n";
       document.form.ContactNumber.focus();
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
<br><br><br>
<br><br><br>
<h1 align="center"   style="font-family:'Algerian';font-size:40px;color:black;text-shadow: 3px 2px white;">VENDOR REGISTRATION</h1>
<small align="center" style="font-family: Cambria;font-size: 20px;font-style: italic;color: black;"><center>Please fill all the Mandatory fields Marked
		with <b style="color:red;">*</b></center></small>
       <div style="text-align: center"></div>
       <form name="form" action="VendorRegistrationController" method="post"
              onsubmit="return validate()">
<br><br><br>
              <table align="center">

                     

                     <tr>
                           <td style="font-family:'Constantia';font-size: 35px;color:black;">First Name<b style="color: red">*</b></td>
                           <td><input type="text" name="FirstName" pattern="(?=.*[a-z])(?=.*[A-Z]).{1,20}"title="Must contain at least one uppercase and lowercase letter, and no numbers"></td>
                     </tr>

                     <tr>
                           <td style="font-family:'Constantia';font-size: 35px;color:black;">Last Name<b style="color: red">*</b></td>
                           <td><input type="text" name="LastName" pattern="(?=.*[a-z])(?=.*[A-Z]).{1,20}"title="Must contain at least one uppercase and lowercase letter, and no numbers"></td>
                     </tr>

                     <tr>
                           <td style="font-family:'Constantia';font-size: 35px;color:black;">Age<b style="color: red">*</b></td>
                           <td><input type="text" name="Age" pattern="[-+]?[0-9]*[.,]?[0-9]+" minlength="1" maxlength="2"title="Must contain only numbers"></td>
                     </tr>

                     <tr>
                           <td style="font-family:'Constantia';font-size: 35px;color:black;">Gender<b style="color: red">* </b></td>
                           <td><select name="Gender" class="dropdown">
                                         <option value="select" style=" font-size: 18px;font-family: Cambria;">Select</option>
                                         <option value="Male" style=" font-size: 18px;font-family: Cambria;">Male</option>
                                         <option value="Female" style=" font-size: 18px;font-family: Cambria;">Female</option>
                           </select></td>
                     </tr>

                     <tr>
                           <td style="font-family:'Constantia';font-size: 35px;color:black;">Contact Number<b style="color: red">*</b></td>
                           <td><input type="number"  name="ContactNumber" pattern="[-+]?[0-9]*[.,]?[0-9]+" minlength="10" maxlength="12"title="Must contain only numbers"></td>
                           
                     </tr>

                     <tr>
                           <td style="font-family:'Constantia';font-size: 35px;color:black;">VendorUserId<b style="color: red">*</b></td>
                           <td><input type="text" name="VendorUserId" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,15}"title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></td>
                     </tr>

                     <tr>
                           <td style="font-family:'Constantia';font-size: 35px;color:black;">Password<b style="color: red">*</b></td>
                           <td><input type="password" name="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,}"title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></td>
                     </tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
                     <tr>
                     
                           <td colspan="2" align="center"><input type="submit"
                                  value="Submit" class="button button1"></input></td>
                     </tr>
              </table>
       </form>

</body>
</html>


