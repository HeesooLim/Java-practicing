<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	String msg = "ID is not entered.";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>result2</title>
</head>
<body>

<%
	String id = request.getParameter("user_id");
	if(id.length() == 0)
	{
%>
	<jsp:forward page="login2.jsp">
		<jsp:param value="<%=msg %>" name="msg"/>
	</jsp:forward>

<%
	}
%>

	<h2>Welcome, <%=id %>!</h2>

</body>
</html>