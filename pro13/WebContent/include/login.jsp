<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body>

	<h1>ID is not entered. Please enter it . . .</h1>
	
	<form action="result.jsp" method="post">
	
		ID : <input type="text" name="user_id"><br>
		PW : <input type="password" name="user_pw"><br>
		<input type="submit" value="LOGIN">
		<input type="reset" value="CLEAR">
	
	</form>

</body>
</html>