<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	String name = (String)session.getAttribute("name");
    	session.setAttribute("country", "Canada");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test2</title>
</head>
<body>
<h2>Test2</h2>
<h3>Hi, <%=name %></h3>
<a href="/pro12/test01/session2.jsp">Go to second page</a>
</body>
</html>