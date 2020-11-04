<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	isELIgnored="false"    
%>

<jsp:useBean id="m" class="sec01.ex01.MemberBean"></jsp:useBean>
<jsp:setProperty name="m" property="*" />
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
	   	</tr>
	   	
	   	<tr align="center">
	      <td><%=m.getId() %></td>
	      <td><%=m.getPwd() %></td>
	      <td><%=m.getName() %></td>
	      <td><%=m.getEmail() %></td>
	   	</tr>
	   	
	   	<tr align="center">
	      <td>${m.id }</td>
	      <td>${m.pwd }</td>
	      <td>${m.name }</td>
	      <td>${m.email }</td>
	   	</tr>
	   	
   	</table>
</body>
</html>