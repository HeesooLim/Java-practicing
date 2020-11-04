<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    isELIgnored="false"%>
    
<%@
	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%>

<c:set var="id" value="Lim" scope="page"></c:set>
<c:set var="pw" value="1234" scope="page"></c:set>
<c:set var="name" value="${'Heso'}" scope="page"></c:set>
<c:set var="age" value="${20 }" scope="page"></c:set>
<c:set var="height" value="${160 }" scope="page"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IF statement</title>
</head>
<body>
	<c:if test="${true}">
		<h3>This is Always TRUE!</h3><br>
	</c:if>
	
	<c:if test="${3 eq 4}">
		<h3>3 is equals to 4</h3><br>
	</c:if>
	
	<c:if test="${id=='Lim'}">
		<h3>ID is Lim</h3><br>
	</c:if>
</body>
</html>