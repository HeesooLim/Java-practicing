<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*"
    isELIgnored="false" %>
    
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formatting tag</title>
</head>
<body>
<h2>Using a number tag</h2>
<c:set var="price" value="10000000"></c:set>
<fmt:formatNumber type="number" value="${price}" var="priceNumber"></fmt:formatNumber>

10000000 : <br>

MONEY : <br>
<fmt:formatNumber type="currency" currencySymbol="$" value="${price}" groupingUsed="true"></fmt:formatNumber><br>

PERCENTAGE : <br>
<fmt:formatNumber type="percent" currencySymbol="$" value="${price}" groupingUsed="false"></fmt:formatNumber> <br>

<h2>Using a date tag</h2>
<c:set var="now" value="<%=new Date() %>"></c:set>
<fmt:formatDate value="${now }" type="date" dateStyle="full"/><br>
<fmt:formatDate value="${now }" pattern='YYYY-MM-dd : hh:mm:ss'/><br>

</body>
</html>