<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NFT Board</title>
</head>
<body>
    <h1>NFT Board</h1>
    <c:forEach var="imagePath" items="${imagePaths}">
        <img src="${pageContext.request.contextPath}/${imagePath}" alt="NFT Image">
    </c:forEach>
</body>
</html>
