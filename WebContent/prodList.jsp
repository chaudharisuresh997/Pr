<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List,com.model.Product" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="ajax.js"></script>
<script type="text/javascript">
function addToCart(itemName)
{
	var paramsMap=new Array();
	var cart=new Object();
	cart.productName=itemName;
	paramsMap.push(cart);
	var url="http://localhost:7081/AdJava/Cart";
	makeAjax(url, paramsMap, "GET");
	}
function makeAjax(url,paramsMap,method)
{
	$.ajax({
		url : url,
		data : "paramsMap="+JSON.stringify(paramsMap),
		type : method,
	   
		success : function(response) {
		
			var a=JSON.parse(response);
			document.getElementById("cart").innerHTML=a[0].productName;
		},
		error : function(xhr, status, error) {
			alert("Error*****"+xhr.responseText);
		}
	}); 
	
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><div id="cart" style="float:right;height:33px;background-color:blue;color:red;width:300px;"></div></div></h1>
<%
List<Product> pds=(List<Product>)request.getAttribute("prods");

%>
<table>
<%for(int i=0;i<pds.size();i++){ %><td>
<%=pds.get(i).getProductId() %>
</td>
<td><%=pds.get(i).getProductName() %>
</td>
<td>   <%-- <a href="Cart?id=<%=pds.get(i).getProductName() %>"/>Get one record</a> --%>
<a href="#" onClick="addToCart('<%=pds.get(i).getProductName() %>')"/>Get one record</a>
</td>
<%} %>

</table>
</body>
</html>