<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>review board</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	function readURL(input)
	{
		if(input.files && input.files[0])
		{
			let reader = new FileReader();
			reader.onload = function (e) {
				$('#preview').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);			
		}
	}
	function backToList(obj)
	{
		obj.action = "${contextPath}/board/listArticles.do";
		obj.submit();
	}
</script>
</head>
<body>
	<h1 style="text-align: center;">NEW REVIEW</h1>
	<form name="articleForm" action="${contextPath}/board/addArticle.do" method="post" enctype="multipart/form-data">
        <table style="margin: auto; border: rgb(236, 236, 236) 1px solid; width: 500px; box-shadow: 2px 2px 5px #c9c9c9;">
            <tr>
                <td style="width: 30%;"><p style="text-align: right;">Title</p></td>
                <td colspan="2" style="width: 300px;"><input size="30" maxlength="500" type="text" name="title"></td>
            </tr>
            <tr>
                <td style="width: 30%;"><p style="text-align: right;">Content</p></td>
                <td colspan="2" style="width: 300px;"><textarea cols="29" name="content"></textarea></td>
            </tr>
            <tr>
                <td style="width: 30%;"><p style="text-align: right;">Add Image</p></td>
                <td><input type="file" name="imageFileName" onchange="readURL(this);" /></td>                
            </tr>
            <tr>
                <td style="width: 30%;"></td>
                <td style="padding-bottom: 30px"><img id="preview" src="#" width=230 height=230 /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; padding-bottom: 25px;">
                    <input type="submit" value="Write a review"> 
                    <input type="reset" value="Back to list">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>