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
<c:choose>
	<c:when test="${ msg=='addMember'}">
		<script>
			window.onload = function() {
				console.log("user joined");
				alert('user joined');
			}
		</script>
	</c:when>
	<c:when test="${ msg=='modified'}">
		<script>
			window.onload = function() {
				console.log("user modified");
				alert('user modified');
			}
		</script>
	</c:when>
	<c:when test="${ msg=='deleted'}">
		<script>
			window.onload = function() {
				console.log("user deleted");
				alert('user deleted');
			}
		</script>
	</c:when>

</c:choose>
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
	        <td style="width: 7%;">EDIT</td>
	        <td style="width: 7%;">DELETE</td>
	    </tr>
	    
	    <c:choose>
	    	<c:when test="${memberList == null}">
	    		<tr>
	           		<td colspan="7"><b>There is no such member</b></td>
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
		       			<td><a href="${ contextPath }/member/modMemberForm.do?id=${member.id}">Edit</a></td>
		       			<td><a href="${ contextPath }/member/delMember.do?id=${member.id}">Delete</a></td>
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