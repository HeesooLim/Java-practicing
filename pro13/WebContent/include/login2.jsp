<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login2</title>
</head>
<body>

<%
	String msg = request.getParameter("msg");
	if(msg != null)
	{
%>
	<h1><%=msg %></h1>

<%
	}	
%>

	<form action="result2.jsp" method="post">
	
		ID : <input type="text" name="user_id"><br>
		PW : <input type="password" name="user_pw"><br>
		<input type="submit" value="LOGIN">
		<input type="reset" value="CLEAR">
	
	</form>
	
</body>
</html>