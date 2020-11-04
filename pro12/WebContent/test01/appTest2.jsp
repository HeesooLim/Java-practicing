<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	String name = (String) session.getAttribute("name");
    	String country = (String) application.getAttribute("country");
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>appTest2</title>
</head>
<body>
<h3>Hey, <%=name %>! I love <%=country %></h3>
</body>
</html>