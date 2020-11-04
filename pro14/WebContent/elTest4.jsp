<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*"
    pageEncoding="ISO-8859-1"
    isELIgnored="false" %>
<jsp:useBean id="m1" class="sec01.ex01.MemberBean" scope="page" />
<jsp:setProperty name="m1" property="name" value="HESO" />
<jsp:useBean id="m2" class="java.util.ArrayList" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>
   \${empty m1 ?}  : ${empty m1} <br>
   \${empty m2}  : ${empty m2}  <br>
   \${empty "hello"}  : ${empty "hello"} <br>
   \${empty ""} : ${empty ""} <br>
   </h2>
</body>
</html>