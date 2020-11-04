<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    	String name = (String) request.getParameter("name");
    	String age = (String) request.getParameter("age");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>out2 exercise</title>
</head>
<body>

<%
	if(name != null || name.length() != 0)
	{
%>
<h2><% out.println(name + ", " + age); %></h2>

<%
	}
%>
</body>
</html>