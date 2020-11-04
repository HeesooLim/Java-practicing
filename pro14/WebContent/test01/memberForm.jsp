<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sign up</title>
</head>
<body>
	<form method="post" action="member6.jsp">
		<h1  style="text-align:center">Sign Up</h1>
		<table  align="center">
		    <tr>
		       <td width="200"><p align="right">ID</td>
		       <td width="400"><input type="text" name="id"></td>
		    </tr>
		    <tr>
		        <td width="200"><p align="right">PW</td>
		        <td width="400"><input type="password"  name="pwd"></td>
		    </tr>
		    <tr>
		        <td width="200"><p align="right">NAME</td>
		        <td width="400"><p><input type="text"  name="name"></td>
		    </tr>
		    <tr>
		        <td width="200"><p align="right">EMAIL</td>
		        <td width="400"><p><input type="text"  name="email"></td>
		    </tr>
		    <tr>
		        <td width="200"><p>&nbsp;</p></td>
		        <td width="400">
				<input type="submit" value="Sign Up">
				<input type="reset" value="Clear">
		  		</td>
		    </tr>
		</table>
	
	</form>
</body>
</html>