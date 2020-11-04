<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    errorPage="addException.jsp"%>
    <%
    	int num = Integer.parseInt(request.getParameter("num"));
    	int sum = 0;
    	for(int i = 1; i <= num; i++ )
    	{
    		sum += i;
    	}
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CALCULATE JSP</title>
</head>
<body>
	<h1>RESULT</h1>
	<h3>The sum between 1 and <%=num %> : <%=sum %></h3>
</body>
</html>