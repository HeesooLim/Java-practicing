<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*"
    isELIgnored="false"%>
    
<%@
	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%>

<%
	List list = new ArrayList();
	list.add("First Line");
	list.add("Second Line");
	list.add("Third Line");
%>

<c:set var="list" value="<%=list %>"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>For Loop</title>
</head>
<body>
	<c:forEach var="i" begin="1" end="6" step="2" varStatus="loop">
		<h4>Current Number : ${i} ------ Loop num : ${loop.count }</h4>
	</c:forEach>
	
	<c:forEach var="data" items="${list}">
		<h4>${data}</h4>
	</c:forEach>
	
	<c:set var="fruits" value="Apple, Pineapple, Mango, Banana"></c:set>
		<c:forTokens var="token" items="${fruits}" delims=",">
			<h4>${token}</h4>
		</c:forTokens>
	
</body>
</html>