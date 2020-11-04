<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Parent1</title>
</head>
<body>

	<h2>Hello, this is the beginning of this JSP</h2>
	
	<jsp:include page="duke_image.jsp" flush="true">
		
		<jsp:param value="Duke2" name="name"/>
		<jsp:param value="duke2.png" name="imgName"/>
	
	</jsp:include>
	
	<h2>Hello, this is the end of this JSP</h2>

</body>
</html>