<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    isELIgnored="false"
%>

<jsp:useBean  id="m" class="sec01.ex02.MemberBean" />
<jsp:setProperty  name="m" property="*" />
<jsp:useBean   id="addr" class="sec01.ex02.Address"/>
<jsp:setProperty name="addr" property="city" value="Toronto" />
<jsp:setProperty name="addr" property="zipcode" value="M1M 4M1" />

<%
	m.setAddr(addr);
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
	      <td width="7%"><b>ID</b></td>
	      <td width="7%"><b>PW</b></td>
	      <td width="5%" ><b>NAME</b></td>
	      <td width="5%"><b>EMAIL</b></td>
	      <td width="5%"><b>CITY</b></td>
	      <td width="5%"><b>ZIP</b></td>
	   	</tr>
	   	
	   	<tr align="center">
	      <td>${m.id } </td>
	      <td>${m.pwd } </td>
	      <td>${m.name } </td>
	      <td>${m.email}</td>
	      <td><%=m.getAddr().getCity() %></td>
	      <td><%=m.getAddr().getZipcode() %></td>   
	   	</tr>
	   	
	   	<tr align="center">
	      <td>${m.id } </td>
	      <td>${m.pwd } </td>
	      <td>${m.name} </td>
	      <td>${m.email}</td>
		  <td>${m.addr.city}</td>
	      <td>${m.addr.zipcode}</td>
	   	</tr>
	   	
   	</table>
</body>
</html>