<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import=" java.util.*, sec01.ex01.*"
    pageEncoding="ISO-8859-1"
    isELIgnored="false"
%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${ pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member information</title>
<style>
	.cls1 {
		font-size: 40px;
		text-align: center;
	}
	.cls2 {
		font-size: 20px;
		text-align: center;
	} 
</style>
</head>
<body>
	
	<p class="cls1">Member Information</p>
	<table style="text-align: center; border: 1px">
	    <tr style="text-align: center; background-color: #e7e7e7;">
	        <td style="width: 7%;"><b>ID</b></td>
	        <td style="width: 7%;"><b>PW</b></td>
	        <td style="width: 7%;"><b>NAME</b></td>
	        <td style="width: 7%;"><b>EMAIL</b></td>
	        <td style="width: 7%;"><b>JOIN DATE</b></td>
	    </tr>
	    
	    <c:choose>
	    	<c:when test="${memberList == null}">
	    		<tr>
	           		<td colspan="5"><b>There is no such member</b></td>
	       		</tr>
	       	</c:when>
	       	
	       	<c:when test="${memberList != null}">
	       		<c:forEach var="member" items="${memberList}">
		       		<tr style="text-align: center;">
		       			<td>${member.id}</td>
		       			<td>${member.pwd}</td>
		       			<td>${member.name}</td>
		       			<td>${member.email}</td>
		       			<td>${member.joinDate}</td>
		    		</tr>
	    		</c:forEach>
	       	</c:when>
		</c:choose>
	</table>
	<a href="${contextPath}/member/memberForm.do">
		<p class="cls2">JOIN</p>
	</a>
</body>
</html>