<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Article</title>
    <style>
        td :first-of-type {
            background-color: rgb(189, 189, 189);
            width: 20%;
            text-align: center;
        }
        body {
            margin-left: auto;
            margin-right: auto;
        }
        table {
            width: 600px;
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <td>TITLE</td>
            <td><input type="text" value="article.title" name="title" id="i_title" disabled></td>
        </tr>
        <tr>
            <td>USER</td>
            <td><input type="text" value="article.id" name="id" id="i_id" disabled></td>
        </tr>
        <tr>
            <td>CONTENT</td>
            <td><textarea name="content" id="i_content" cols="60" rows="20" disabled></textarea></td>
        </tr>
        <!-- If the image exists -->
        <tr>
            <td>IMAGE</td>
            <td><img src="contextPath/download.do?imageFileName=${article.imageFileName}&articleNO=${article.articleNO}" 
                id="preview"></td>
        </tr>
        <tr>
            <td>DATE</td>
            <td><input type="text" value="article.writeDate" name="writeDate" id="i_writeDate" disabled></td>
        </tr>
        
        <tr>
            <td colspan="2">
                <button>Edit</button>
                <button>Delete</button>
                <button>Back to menu</button>
                <button>Write a Reply</button>
            </td>
        </tr>
    </table>
    
</body>
</html>