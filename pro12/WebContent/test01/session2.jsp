<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	String name = (String) session.getAttribute("name");
    	String country = (String) session.getAttribute("country");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test3</title>
</head>
<body>
<h3>Hi, <%=name %></h3>
<h3>I want to visit <%=country %>!</h3>
</body>
</html>