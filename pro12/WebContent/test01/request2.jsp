<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	String name = (String) request.getAttribute("name");
    	String date = (String) request.getAttribute("date");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Hey, <%=name %></h3>
	<h3>It's already <%=date %></h3>
</body>
</html>