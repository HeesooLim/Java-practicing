<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    isELIgnored="false"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table border="1"  align="center" >
	    <tr align="center" bgcolor="#99ccff">
	      <td width="20%"><b>ID</b></td>
	      <td width="20%"><b>PW</b></td>
	      <td width="20%" ><b>NAME</b></td>
	      <td width="20%"><b>EMAIL</b></td>
	      <td width="20%"><b>COUNTRY</b></td>
	   	</tr>
	   	
	   	<tr align="center">
	      <td>${param.id }</td>
	      <td>${param.pw }</td>
	      <td>${param.name }</td>
	      <td>${param.email }</td>
	      <td>${requestScope.country }</td>
	   	</tr>
   	</table>

</body>
</html>