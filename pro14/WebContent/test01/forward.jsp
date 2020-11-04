<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	request.setAttribute("country", "Canada");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>forward</title>
</head>
<body>
	<jsp:forward page="member2.jsp"></jsp:forward>
</body>
</html>