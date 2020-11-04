<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ResultJSP3</title>
</head>
<body>
	<%
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
	%>
	
	
	<%
		if(id == null || id.length() == 0)
		{
	%>
	
	<p>Please Enter a correct ID</p>
	<a href="/pro12/login.html">Try again</a>
	<%			
		}
		else
		{
			if(id.equals("admin"))
			{
	%>
	
				<h5>[ADMIN USER]</h5>
	
	<%
			}
	%>
	<h1>Welcome, <%=id %>!</h1>
	<%		
		}
	%>
</body>
</html>