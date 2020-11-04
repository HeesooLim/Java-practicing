<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ResultJSP</title>
</head>
<body>
	<h1>RESULT</h1>
	<%
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
	%>
	
	<h3>ID : <%=id %></h3>
	<h3>PW : <%=pw %></h3>
</body>
</html>