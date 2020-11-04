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
	<form action="result.jsp">
	   ID : <input type="text" size=20 /><br>
	   PW : <input  type="password"  size=20 /><br>
	   <input  type="submit" value="LogIn" /> <input type="reset" value="Clear"  />
  	</form> 
   	<br><br>
   	<a href='<%=request.getContextPath() %>/test01/memberForm.jsp'>Sign Up (Java Code)</a>
	<a href='${ pageContext.request.contextPath }/test01/memberForm.jsp'>(Without Java Code)</a>

</body>
</html>