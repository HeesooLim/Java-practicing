<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>result</title>
</head>
<body>

<%
	String id = request.getParameter("user_id");
	if(id == null || id.length() == 0)
	{
%>
		<jsp:forward page="login.jsp"></jsp:forward>
<%
	}
%>
<h1>Welcome, <%=id %>!</h1>

</body>
</html>