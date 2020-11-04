<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
%> 
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>LogIn</title>
</head>
<body>
   <form   action="result.jsp"  method="post">
       ID :  <input type="text"  name="id"><br>
       PW :  <input type="password"  name="pw"><br>
      <input type="submit"  value="Sign in">
      <input type="reset"  value="Clear">
   </form>
</body>
</html>