<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    isELIgnored="false"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
</head>
<body>
	<c:if test="${empty param.id}">
		<p>Please Enter your ID</p>
		<a href="login.jsp">Go To LogIn page</a>
	</c:if>
	
	<c:if test="${not empty param.id }">
		<h1><c:out value="Thank you, ${param.id }"></c:out>!</h1>
		<c:if test="${param.id.equals('admin') }">
			<form>
				<input type="button" value="Edit users">
				<input type="button" value="Delete users">
			</form>
		</c:if>
	</c:if>
</body>
</html>