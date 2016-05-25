<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
/* function createInvoice()
 {

	

	
	 $.ajax({
			url : "http://localhost:2222/ViramHotel/invoice/",
			data : "paramsMap="+JSON.stringify(paramsMap),
			type : "GET",
	       
			success : function(response) {
			
				var a=JSON.parse(response);
				alert("Responce"+a);
				/* for(var i=0;i<a.menuList.length;i++)
					{
				
				$('#menuList tbody').append("<tr><td>'"+a.menuList[i].itemName+"'</td>"+
					 '<td><input type="button" id="btnMenu'+i+'" class="btn btn-success text-right" value="Add" onClick="addOrder('+single+a.menuList[i].itemName+single+','+i+','+single+a.menuList[i].itemPrice+single+');"></td></tr>');
					} */
		
			},
			error : function(xhr, status, error) {
				alert("Error*****"+xhr.responseText);
			}
		}); 
 } */
 </script>
</head>
<body>
Hi!!!
<%-- <jsp:useBean id="stu" class="Student" scope="page">
<jsp:setProperty property="name" name="stu" value="Suresh"/>
</jsp:useBean> --%>

name is:<%-- <jsp:getProperty property="name" name="stu"/> --%>
</body>
</html>