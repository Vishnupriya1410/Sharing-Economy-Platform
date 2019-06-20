<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
                pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Vendor HomePage</title>
<!--  #fe2c6a-reddish pink
  #9966ff-purple
  -->
<style>
a.service:link {
text-decoration: none;
font-family:'Lucida Calligraphy';
font-size: 30px;
color:  #7733ff;
}

/* visited link */
a.service:visited {
text-decoration: none;
  color: #7733ff;
}

/* mouse over link */
a.service:hover {
text-decoration: none;
  color: white;
}

/* selected link */
a.service:active {
text-decoration: none;
  color: blue;
}
/*user link*/
a.product:link {
text-decoration: none;
font-family:'Lucida Calligraphy';
font-size: 30px;
color:  #004d00;
}

/* visited link */
a.product:visited {
text-decoration: none;
  color:   #004d00;
}

/* mouse over link */
a.product:hover {
text-decoration: none;
  color: white;
}

/* selected link */
a.product:active {
text-decoration: none;
  color: blue;
}

* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}
.bg {
 	background-image: url("images/hdimage.png");
	height: 100%; 
	width: 100%;
 	background-position: center;
 	background-repeat: no-repeat;
  	background-size: cover;
}

/* The grid: Three equal columns that floats next to each other */
.column {
	float: left;
	width: 50%;
	padding: 50px;
	text-align: center;
	font-size: 25px;
	cursor: pointer;
	color: white;
}

.containerTab {
	padding: 20px;
	color: white;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Closable button inside the container tab */
.closebtn {
	float: right;
	color: white;
	font-size: 35px;
	cursor: pointer;
}
.button {
 background-color:#9966ff; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  align: center;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
 
}
.button1 {
  background-color: white; 
  color: #00cc00; 
  border: 2px solid black;
  margin-right:21px;
 
}

.button1:hover {
  background-color: #9966ff;
   color: white;
   margin-right:21px;
  
}
</style>
</head>
<body style="background-image: url('images/imgg6.jpg');">
                <center>
                <br><br><br><br>
                                <h1 style="font-family:'Algerian';font-size:40px;color: #004d00;text-shadow: 3px 2px white;">Vendor HomePage</h1>
                </center><%String VendorUserId =session.getAttribute("VendorUserId").toString(); %>
                 <p align="center" style="color: #7733ff;font-family: Cambria;font-size: 20px;">
               Welcome!..
                <%=VendorUserId.toUpperCase()%>
                <%session.setAttribute("VendorUserId",VendorUserId); 
                String id=session.getAttribute("vendorID").toString();
                int vendorID=Integer.parseInt(id);
                session.setAttribute("vendorID",vendorID); 		
                %>
             
                </p>
                <h2>
                <br>
			<h1 align=center><a  href="VendorDetails.jsp" class="button button1">Vendor Details</a></h1>
		</h2>
               
                	<div class="bg"></div>
	<div style="text-align: center"><br>
		<h2 style="font-family:'Constantia';font-size: 35px;color:#7733ff;">Select Product or Service</h2>
	</div>
	

	<!-- Three columns -->
	<div class="row">
		<div class="column" onclick="openTab('b1');"
			style="background: #9966ff;font-family:'Elephant';  font-size:35px;">Product</div>
		<div class="column" onclick="openTab('b2');" style="background: #00cc00;font-family:'Elephant';  font-size:35px;">
			Service</div>
	</div>

	<!-- Full-width columns: (hidden by default) -->
	<div id="b1" class="containerTab"
		style="display: none; background: #9966ff">
		<span onclick="this.parentElement.style.display='none'"
			class="closebtn">&times;</span>
		<h2>
			<a href="AddProduct.jsp" class="product">Add Product</a>
		</h2>
		<h2>
			<a href="UpdateProduct.jsp" class="product">Update Product</a>
		</h2>
		<h2>
			<a href="DeleteProduct.jsp" class="product">Delete Product</a>
		</h2>

	</div>

	<div id="b2" class="containerTab"
		style="display: none; background:  #00cc00">
		<span onclick="this.parentElement.style.display='none'"
			class="closebtn">&times;</span>
		<h2>
			<a href="SelectService.jsp" class="service">Add Service</a>
		</h2>
		<h2>
			<a href="UpdateService.jsp" class="service">Update Service</a>
		</h2>
		<h2>
			<a href="DeleteService.jsp" class="service">Delete Service</a>
		</h2>
	</div>
	<script>
		function openTab(tabName) {
			var i, x;
			x = document.getElementsByClassName("containerTab");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			document.getElementById(tabName).style.display = "block";
		}
	</script>
	<br><br><br>
	<br><br><br>
	 <div style="text-align: center">
               
                                <h2><a href="VendorLogoutController" class="button button1">Logout</a></h2>
                </div>
                	
</body>
</html>
