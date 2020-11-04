<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	isELIgnored="false"
%>
	
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>member INFO</title>
</head>
<body>
	<table border="1"  align="center" >
	    <tr align="center" bgcolor="#99ccff">
	      <td width="20%"><b>ID</b></td>
	      <td width="20%"><b>PW</b></td>
	      <td width="20%" ><b>NAME</b></td>
	      <td width="20%"><b>EMAIL</b></td>
	   	</tr>
	   	
	   	<tr align="center">
	      <td><%=id %></td>
	      <td><%=pw %></td>
	      <td><%=name %></td>
	      <td><%=email %></td>
	   	</tr>
	   	
	   	<tr align="center">
	      <td>${param.id }</td>
	      <td>${param.pw }</td>
	      <td>${param.name }</td>
	      <td>${param.email }</td>
	   	</tr>
	   	
   	</table>
</body>
</html>