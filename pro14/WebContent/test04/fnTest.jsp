<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    isELIgnored="false" %>
    
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="title1" value="This is TITLE 1!"></c:set>
	<c:set var="title2" value="This is TITLE 2 . . ."></c:set>
	<h3>Length of title1 : ${fn:length(title1)}</h3>
	<h3>Upper case : ${fn:toUpperCase(title1)}</h3>
	<h3>Lower case : ${fn:toLowerCase(title2)}</h3>
	<h3>Substring : ${fn:substring(title1, 3, 6)}</h3>
	<h3>Trim : ${fn:trim(title2)}</h3>
	<h3>replace : ${fn:replace(title2, "2", "3")}</h3>
	<h3>contains : ${fn:contains(title2, ".")}</h3>
</body>
</html>