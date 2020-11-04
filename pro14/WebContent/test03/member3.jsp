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
	<table  align="center"  border=1  >
	   <tr align="center"  bgcolor="lightgreen" >
	      <td width="7%" ><b>ID</b></td>
	      <td width="7%" ><b>PW</b></td>
	      <td width="7%" ><b>NAME</b></td>
	      <td width="7%"><b>AGE</b></td>
	      <td width="7%" ><b>HEIGHT</b></td>
	   </tr>
	   
	   <c:choose>
	   	<c:when test="${empty name}">
	   		<tr align="center">
	   			<td colspan=5>NAME is empty . . .</td>
	   		</tr>
	   	</c:when>
	   	
	   	<c:otherwise>
		   <tr align="center"  bgcolor="lightgreen" >
		      <td><b>${id}</b></td>
		      <td><b>${pw}</b></td>
		      <td><b>${name}</b></td>
		      <td><b>${age}</b></td>
		      <td><b>${height}</b></td>
		   </tr>	   	
	   	</c:otherwise>
	   </c:choose>
	   

	   
	</table>
</body>
</html>