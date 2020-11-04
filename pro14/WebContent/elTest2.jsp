<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    isELIgnored="false"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- 
	<h1>
		/${10+10} : ${10+10}<br>
		/${100 div 10} : ${100 div 10}<br>
		/${100 mod 9} : ${100 mod 10}<br>
	</h1> -->
	
	<h1>
   \${10+10}  : ${10+10} <br>
   \${20-10}  : ${20-10}  <br>
   \${10*10}  : ${10*10} <br>
   \${100/9} : ${100/9} <br>
<%--    \${100 div 9} : ${100 div 9} <br> --%>
   \${100%9} : ${100%9}<br>
   \${100 mod 9} : ${100 mod 9}<br>
   </h1>
</body>
</html>