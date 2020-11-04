<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
</head>
<body>
-------------  toString() ------------- <br>
<h5><%=exception.toString() %></h5><br>

------------  getMessage() ------------ <br>
<h5><%=exception.getMessage() %></h5><br>

----------  printStackTrace() --------- <br>
<h5><% exception.printStackTrace(); %></h5><br>

<p>Please enter only number</p>
<a href="add.html">Try again</a>
</body>
</html>