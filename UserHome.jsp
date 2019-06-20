<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
                pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
<style>
/*
#d65cad-pink
#a3297a-dark pink
 #b366ff-violet
*/
a:link, a:visited {
  background-color: white;
  color: #a3297a;
  padding: 14px 25px;
  text-align: center; 
  text-decoration: none;
  display: inline-block;
  border-color:#000099; 
}

a:hover, a:active {
 background-color:  #b366ff;
}
</style>
</head>
<body style="background-image: url('images/imgg1.jpg');">
                <center>
                <br><br><br>
                <br><br><br><br>
                <!-- style="font-family:'Algerian';font-size:40px;color:aqua;text-shadow: 3px 2px #ad33ff;-->
                                <h2 style="font-family:'Algerian';font-size:40px;color:#a3297a;text-shadow: 3px 2px white;">USER HOME PAGE</h2>
                               <p style="color: #4d0099;font-family: Cambria;font-size: 20px;"> Welcome!...
                              
                <%=request.getAttribute("UserID").toString().toUpperCase()%>
                 </p>
                </center>
               <br><br>
                <h2 style="text-align:center;font-family:'Lucida Calligraphy';
font-size: 30px;"><a href="NewFile.jsp">Select Category</a></h2>
                 <div style="text-align:center;font-family:'Lucida Calligraphy';
font-size: 30px;">
                 <a href="UserLogoutController">Logout</a>
                </div>
</body>
</html>
