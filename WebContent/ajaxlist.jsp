<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="jquery-1.7.1.min.js" type="text/javascript"></script>

<script type="text/javascript">
function loadList()
{
	var login=new Object();
	login.userName="Shiv";
	login.password="Shiv";
	var paramsMap=new Array();
	paramsMap.push(login);
$.ajax({
	url : "http://localhost:7081/AdJava/loginAjaxList",
	data : "paramsMap="+JSON.stringify(paramsMap),
	type : "GET",
   
	success : function(response) {
	
		var a=JSON.parse(response);
		alert("Responce"+a[0].userName);
		$.each(a, function(i, el) 
				{ 
				   $('#states').append( new Option(el.userName,el.userName) );
				});
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
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="" method="GET">
<input type="button" onclick="loadList()">
<select id="states"><option id="">1</option>
<option id="">2</option>
<option id="">3</option>

</select>
</form>

</body>
</html>