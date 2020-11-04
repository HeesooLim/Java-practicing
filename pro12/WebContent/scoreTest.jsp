<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	int grade = Integer.parseInt(request.getParameter("grade"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
if(grade >= 90)
{
%>	
	<h2>GRADE : A</h2>
<%
}
else if(grade >= 80 && grade < 90)
{
%>	
	<h2>GRADE : B</h2>
<%
}
else if(grade >= 70 && grade < 80)
{
%>	
	<h2>GRADE : C</h2>
<%
}
else if(grade >= 60 && grade < 70)
{
%>	
	<h2>GRADE : D</h2>
<%
}
else
{
%>	
	<h2>GRADE : F</h2>
<%
}
%>
<br>
<a href="/pro12/scoreTest.html">Calculate another grade</a>

</body>
</html>