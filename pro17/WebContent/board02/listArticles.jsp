<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Article list</title>
</head>
<body style="text-align: center;">
    <table style="border: 1px; width: 80%; margin-left: auto; margin-right: auto;">
        <tr style="background-color: aliceblue;">
            <td>Article NO</td>
            <td>Author</td>
            <td>Title</td>
            <td>Date</td>
        </tr>
		<c:choose>
			<c:when test="${articleList == null }">
		        <tr>
		            <td colspan="4">
		                <p><b><span>There is no article.</span></b></p>
		            </td>
		        </tr>
		    </c:when>
		    <c:when test="${articleList != null }">
		    	<c:forEach var="article" items="${articleList}" varStatus="articleCnt">
				    <tr>
			            <td>${articleCnt.count}</td>
			            <td>${article.id}</td>
			            <td style="text-align: left;">
			                <span style="padding-left: 30px;"></span>
			                
			                <c:choose>
			                	<c:when test="${article.level > 1 }">
			                		<c:forEach begin="1" end="${article.level}" step="1">
			                			<span style="padding-left: 20px;"></span>
			                		</c:forEach>
					                <span >[RE]</span>
					                <a href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">
					                	${article.title}
					                </a>
				                </c:when>
					          	<c:otherwise>
					          		<a href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">
					                	${article.title}
					                </a>
					          	</c:otherwise>
				          	</c:choose>
			            </td>
			            <td>
			            	<fmt:formatDate value="${article.writeDate}"/>
			            </td>
		        	</tr>
	        	</c:forEach>
		    </c:when>
		</c:choose>
    </table>
    
    <a href="${contextPath}/board/articleForm.do">Start a New Thread</a>
</body>
</html>