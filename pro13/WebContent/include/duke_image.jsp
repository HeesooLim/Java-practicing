<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	String name = request.getParameter("name");
    	String imgName = request.getParameter("imgName");    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>duke_image</title>
</head>
<body>
<br><br>
<h1>NAME IS <%=name %></h1>
<img alt="" src="../image/<%=imgName %>">

</body>
</html>