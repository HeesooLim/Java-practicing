<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%! String name = "Heesoo"; 
	public String GetName() { return name; }
%>

<% String school = request.getParameter("school"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expression tag exercise</title>
</head>
<body>
	<h2>Hi, <%=name %> :)</h2>
	<h2>How was your day?</h2>
	<h2>Are you in <%=school + " college"%> ?</h2>
	<h2><%="30 + 20 = "%> <%= 30+20 %> </h2>
</body>
</html>