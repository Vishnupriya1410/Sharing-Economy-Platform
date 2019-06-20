<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
       pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
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
<script>
function validate() {
var VendorId = document.form.VendorId.value;
var productdetail= document.form.productdetail.value;
var availability= document.form.availability.value;
var category= document.form.category.value;
var cost= document.form.cost.value;
var message="";
var f=false;

if (VendorId==null || VendorId == "") {
       f=true;
message+="--Enter VendorId\n";
document.form.VendorId.focus();
}
if (productdetail== null || productdetail == "") {
//alert("Password cannot be blank");
f=true;
message+="--Enter productdetails\n";
document.form.productdetail.focus();
}
if (availability==null || availability=="") {
       //alert("First Name cannot be blank");
       f=true;
       message+="--Select availability\n";
       document.form.availability.focus();
}
if (category==null || category=="") {
    //alert("First Name cannot be blank");
    f=true;
    message+="--Select category\n";
    document.form.category.focus();
}
if (cost == null || cost == "") {
       //alert("First Name cannot be blank");
       f=true;
       message+="--Enter Cost\n";
       document.form.cost.focus();
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
<body style="background-image: url('images/img.jpg'); background-repeat: no-repeat; background-size:100%;">

       <div style="text-align: center"></div>
       <form name="form" action="AddProductController" method="post"
              onsubmit="return validate()">
    <br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
<h1 align="center"  style="font-family:'Algerian';font-size:40px;color:white;text-shadow: 4px 3px black;">Add Products</h1>
              <table align="center">
	
                     <tr>
					<td style="font-family:'Constantia';font-size: 35px;color:white;">VendorID</td>
					<td><input type="text" name="VendorId" value=<%=session.getAttribute("vendorID").toString() %>  readonly="readonly"/></td>
				</tr>
				<tr>
					<td style="font-family:'Constantia';font-size: 35px;color:white;">Product Details</td>
					<td><input type="text" name="Productdetails"></td> 
					
					
				</tr>
					<tr>
					<td style="font-family:'Constantia';font-size: 35px;color:white;">Category</td>
				 <td><select name="category" class="dropdown"> 
				 <option value=""></option> 
   					 <option value="1 snacks" style=" font-size: 18px;font-family: Cambria;">1 snacks</option> 
    				<option value="2 mobile" style=" font-size: 18px;font-family: Cambria;">2 mobile</option> 
    				<option value="3 powder" style=" font-size: 18px;font-family: Cambria;">3 powder</option> 
    				<option value="4 charger" style=" font-size: 18px;font-family: Cambria;">4 charger</option>
    				<option value="5 soap" style=" font-size: 18px;font-family: Cambria;">5 soap</option>
    				<option value="6 rice" style=" font-size: 18px;font-family: Cambria;">6 rice</option>   
    				</select> </td>
					</tr>
				<tr>
					<td style="font-family:'Constantia';font-size: 35px;color:white;">Availability</td>
					<td><select name="availability" class="dropdown"> 
					<option value=""></option> 
   					 <option value="yes" style=" font-size: 18px;font-family: Cambria;">yes</option> 
    				<option value="No" style=" font-size: 18px;font-family: Cambria;">No</option> </select> </td>
					</tr>
				<tr>
					<td style="font-family:'Constantia';font-size: 35px;color:white;">Cost</td>
					<td><input type="cost" name="cost" pattern="[-+]?[0-9]*[.,]?[0-9]+"></td>
				</tr>
				<tr></tr>
				<tr></tr>
				<tr></tr><tr></tr>
				<tr></tr>
				<tr></tr>
				<tr>
				
                           <td colspan="2" align="center">
                           <input type="submit" value="Addproduct" class="button button1"></input></td>
                     </tr>
              </table>
       </form>

</body>

</html>




