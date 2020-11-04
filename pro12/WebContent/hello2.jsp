<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%!
	String name = "Heso";
	public String GetName() { return name; }
%>

<% String age = request.getParameter("age"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Scriptlet exercise</title>
</head>
<body>
<h2>Hello, <%=name %>! </h2>
<h2>Is it your <%=age %>th Birthday?</h2>
</body>
</html>