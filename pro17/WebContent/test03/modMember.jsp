<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import=" java.util.*, sec01.ex01.*"
    pageEncoding="ISO-8859-1"
    isELIgnored="false"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${ pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modify user information</title>
</head>
<body>
	<h1>Modify user information</h1>
	
	<form method="post" action="${ contextPath }/member/modMember.do?id=${member.id}">
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" value="${member.id}" disabled></td>
			</tr>
			<tr>
				<td>PW</td>
				<td><input type="password" name="pwd" value="${member.pwd}"></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" value="${member.name}"></td>
			</tr>
			<tr>
				<td>email</td>
				<td><input type="email" name="email" value="${member.email}"></td>
			</tr>
			<tr>
				<td>Join Date</td>
				<td><input type="text" name="joinDate" value="${member.joinDate}" disabled></td>
			</tr>
			<tr>
				<td><input type="submit" value="Modify"></td>
				<td><input type="reset" value="Undo"></td>
			</tr>
		</table>
	</form>
</body>
</html>