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
<title>Sign up</title>
</head>
<body style="text-align: center;">
    <form action="${contextPath}/member/addMember.do" method="post">
        <h1 style="text-align: center;">Sign up</h1>
        <table>
            <tr>
                <td style="width: 200px;"><p style="text-align: right;">ID</p></td>
                <td style="width: 400px;"><input type="text" name="id"></td>
            </tr>
            <tr>
                <td style="width: 200px;"><p style="text-align: right;">Password</p></td>
                <td style="width: 400px;"><input type="password" name="pwd"></td>
            </tr>
            <tr>
                <td style="width: 200px;"><p style="text-align: right;">Name</p></td>
                <td style="width: 400px;"><input type="text" name="name"></td>
            </tr>
            <tr>
                <td style="width: 200px;"><p style="text-align: right;">Email</p></td>
                <td style="width: 400px;"><input type="email" name="email"></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="Join"> 
                    <input type="reset" value="Clear">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>