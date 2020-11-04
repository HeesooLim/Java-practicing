<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*, sec01.ex01.*"
    isELIgnored="false"
%>

<jsp:useBean id="m1" class="sec01.ex01.MemberBean"></jsp:useBean>
<jsp:setProperty name="m1" property="*" />
<jsp:useBean id="membersList" class="java.util.ArrayList"></jsp:useBean>
<jsp:useBean id="membersMap" class="java.util.HashMap"></jsp:useBean>

<%
	membersMap.put("id", "park2");
	membersMap.put("pwd", "1234");
	membersMap.put("name", "Jisung");
	membersMap.put("email", "PARK123@abc.com");
	
	MemberBean member = new MemberBean("Gr123", "3214", "Grace", "GR123@cba.ca");
	membersList.add(m1);
	membersList.add(member);
	membersMap.put("membersList", membersList);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1"  align="center" >
	    <tr align="center" bgcolor="#99ccff">
	      <td width="20%"><b>ID</b></td>
	      <td width="20%"><b>PW</b></td>
	      <td width="20%" ><b>NAME</b></td>
	      <td width="20%"><b>EMAIL</b></td>
	   	</tr>
	   	
	   	<tr align="center">
	      <td>${membersMap.id }</td>
	      <td>${membersMap.pwd }</td>
	      <td>${membersMap.name }</td>
	      <td>${membersMap.email }></td>
	   	</tr>
	   	
	   	<tr align="center">
	      <td>${membersMap.membersList[0].id }</td>
	      <td>${membersMap.membersList[0].pwd }</td>
	      <td>${membersMap.membersList[0].name }</td>
	      <td>${membersMap.membersList[0].email }></td>
	   	</tr>
	   	
	   	<tr align="center">
	      <td>${membersMap.membersList[1].id }</td>
	      <td>${membersMap.membersList[1].pwd }</td>
	      <td>${membersMap.membersList[1].name }</td>
	      <td>${membersMap.membersList[1].email }></td>
	   	</tr>   	
	   	
   	</table>
</body>
</html>