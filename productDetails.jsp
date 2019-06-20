<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.sep.bean.CategoryBean,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProductList</title>
</head>
<style>
a:link, a:visited {
  background-color: white;
  color: #009973;
  padding: 14px 25px;
  text-align: center; 
  text-decoration: none;
  display: inline-block;
  border-color:#000099; 
}

a:hover, a:active {
 background-color: #00ffcc;
}
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #000099;
  color: white;
}</style>
<body style="background-image: url('images/imgg5.jpg');">
<table width="700px" align="center"
               style="border:1px solid #000000;">
            <tr>
                <td colspan=8 align="center"
                    style="background-color:#009973;color:white;">
                    <b><center style="font-family:'Algerian';font-size:40px;color:#004d39;text-shadow: 3px 2px white;">PRODUCT SERVICE LIST</center></b></td>
            </tr>
            <tr style="background-color:white;">
                <td><b>VendorID</b></td>
                <td><b>ProductName</b></td>
                <td><b>ProductAvailability</b></td>
                <td><b>Productcost</b></td>
                <td><b>ServiceCategory</b></td>
                <td><b>ServiceAvailability</b></td>
                <td><b>TimeSlot</b></td>
                <td><b>ServiceCost</b></td>
                              
            </tr>
<%
  ArrayList prodList = (ArrayList)session.getAttribute("prodList");
  Iterator it = prodList.iterator();
  
  CategoryBean catBean;
  
  while ( it.hasNext() ) {
	  catBean = (CategoryBean)it.next();
	  %>
	  <tr style="background-color: #00ffcc;">
<td><%=catBean.getProdVendorID()%></td>
<td><%=catBean.getProductname()%></td>
                 <td><%=catBean.getProdAvailability()%></td>
                  <td><%=catBean.getProdCost()%></td>
                   <td><%=catBean.getServiceCategory()%></td>
                    <td><%=catBean.getServiceAvailability()%></td>
                     <td><%=catBean.getServiceTimeslot()%></td>
                      <td><%=catBean.getServiceCost()%></td>                 
              </tr>
  <%
  }
%>
<br>
<br>
</table>
<br>
<br>
<br>
<h1 align="center"  style="text-align:center;font-family:'Lucida Calligraphy';
font-size: 30px;"><a href="InitialPage.html">LogOut</a></h1>
</body>
</html>