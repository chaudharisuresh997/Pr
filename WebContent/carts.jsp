<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List,com.model.Product,com.model.Cart" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="ajax.js"></script>
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
<table>
<%

for(int i=0;i<products.size();i++){
	%>
<td>
<%-- <%=products.get(i).getProductId()%> --%>
</td>
<td><%=products.get(i).getProductName() %>
</td>
<td>   <%-- <a href="Cart?id=<%=pds.get(i).getProductName() %>"/>Get one record</a> --%>

</td>
<%} %>

</table>

</body>
</html>