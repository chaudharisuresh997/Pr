<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List,com.model.Product,com.model.Cart" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="ajax.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">
<script type="text/javascript">

</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><div id="cart" style="float:right;height:33px;background-color:blue;color:red;width:300px;"></div></div></h1>
<h1><div id="checkout" style="float:right;height:33px;background-color:black;color:red;width:300px;"></div></div></h1>
<%
List<Product> products=(List<Product>)request.getAttribute("carts");

%>
<table class="table">
  <thead class="thead-inverse">
    <tr>
      <th>#</th>
      <th>Item id</th>
      <th>Item Name</th>
      
    </tr>
  </thead>
  <tbody>
  <%

for(int i=0;i<products.size();i++){
	%>
    <tr>
    
      <td><%=products.get(i).getProductId() %></td>
      <td><%=products.get(i).getProductName() %></td>
    <td><a class="btn btn-danger" href="/AdJava/Cart?remove=<%=products.get(i).getProductName() %>">Danger</a></td> 
    </tr>
    

<%} %>
</tbody>

</table>

</body>
</html>