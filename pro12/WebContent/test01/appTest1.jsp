<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	session.setAttribute("name", "HEESOO");
    	application.setAttribute("country", "Korea");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>appTest1</title>
</head>
<body>
<h1>Binding name and country . . .</h1>
<a href="/pro12/test01/appTest2.jsp">Go to second page</a>
</body>
</html>