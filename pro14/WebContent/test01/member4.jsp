<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*"
    isELIgnored="false"
%>

<jsp:useBean id="m1" class="sec01.ex01.MemberBean"></jsp:useBean>
<jsp:setProperty name="m1" property="*" />
<jsp:useBean id="membersList" class="java.util.ArrayList"></jsp:useBean>

<%
	membersList.add(m1);
	MemberBean member = new MemberBean("John135", "1234", "John", "John135@abc.ca");
	membersList.add(member);
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
	   	</tr>
	   	
	   	<tr align="center">
	      <td>${membersList[0].id }</td>
	      <td>${membersList[0].pwd }</td>
	      <td>${membersList[0].name }</td>
	      <td>${membersList[0].email }></td>
	   	</tr>
	   	
	   	<tr align="center">
	      <td>${membersList[1].id }</td>
	      <td>${membersList[1].pwd }</td>
	      <td>${membersList[1].name }</td>
	      <td>${membersList[1].email }></td>
	   	</tr>
	   	
   	</table>
</body>
</html>