<%@ page language="java" contentType="text/html; charset=UTF-8"
     import="java.util.*"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    
<jsp:useBean  id="m1"  class="sec01.ex01.MemberBean" scope="page"  />
<jsp:setProperty  name="m1"  property="name" value="abc"/>
<jsp:useBean  id="m2"  class="java.util.ArrayList" scope="page"  />

<html>
<head>
   <meta charset="UTF-8">
   <title>languages</title>
</head>
<body>
   empty
 <h2>
   \${empty m1 } : ${empty m1 } <br>
   \${not empty m1 } : ${not empty m1 } <br><br>

   \${empty m2 } : ${empty m2 } <br>
   \${not empty m2} : ${not empty m2 } <br><br>

   \${empty "hello"} : ${empty "hello" }<br>
   \${empty null} : ${empty null } <br>
   \${empty ""} : ${empty "" } <br>
</h2>
</body>
</html>