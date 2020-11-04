<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*, sec01.ex01.*" 
%>
    
<jsp:useBean id="m" class="sec01.ex01.MemberBean" scope="page"></jsp:useBean>
<jsp:setProperty name="m" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>member</title>
</head>
<body>

<%
/*
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	MemberBean member = new MemberBean(id, pwd, name, email);
	
	m.setId(id);
	m.setPwd(pwd);
	m.setName(name);
	m.setEmail(email);
*/
	
	MemberDAO dao = new MemberDAO();
	
	dao.addMember(m);
	List<MemberBean> memberList = dao.listMembers();
%>

<table align="center"  width="100%">
	 <tr align="center" bgcolor="#99ccff">
	      <td width="7%" >ID</td>
	      <td width="7%">PW</td>
	      <td width="5%" >NAME</td>
	      <td width="11%" >EMAIL</td>
	      <td width="5%" >JOIN_DATE</td>
	   </tr>
	<%
	   if(memberList.size()==0){
	%>
	  <tr>
	      <td colspan="5">
	        <p align="center"><b><span style="font-size:9pt;">
	        CANNOT FIND USER</span></b></p>
	      </td>
	  </tr>
	<%
	}else{
	   for( int i = 0; i < memberList.size(); i++ ) {
	      MemberBean bean = (MemberBean) memberList.get(i);
	%>
	   <tr align="center">
	       <td><jsp:getProperty name="m" property="id" /></td>
	       <td><jsp:getProperty name="m" property="pwd" /></td>
	       <td><jsp:getProperty name="m" property="name" /></td>
	       <td><jsp:getProperty name="m" property="email" /></td>
	   </tr>
	<%
	      } // end for
	
	   } // end if
	%>
	   <tr height="1" bgcolor="#99ccff">
	      <td colspan="5"></td>
	   </tr>
	</table>

</body>
</html>