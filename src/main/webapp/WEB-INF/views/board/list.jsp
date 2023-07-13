<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/css/list.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#regBtn").click(function(){
			location.href="${contextPath}/board/register";
		});
		
		
	});
	function goMsg(){
		alert("삭제된 게시물입니다.");
	}
	
</script>
</head>
<body>
	<div class="board-container">
		<section class="board-search">
		<div class="homeLogo">
		<a href="${contextPath}/"><img src="${contextPath}/resources/images/mountainLogo.png" class="logo"></a>
		</div>
		
		<div class="search">
			<form action="${contextPath}/board/list" method="post">
				<div class="selectBox">
				<select name="type" class="select">
					<option value="writer" ${pageMaker.cri.type=='writer' ? 'selected' : '' }>이름</option>
					<option value="title" ${pageMaker.cri.type=='title' ? 'selected' : '' }>제목</option>
					<option value="content" ${pageMaker.cri.type=='content' ? 'selected' : '' }>내용</option>
				</select>
				 <span class="icoArrow"><img src="https://freepikpsd.com/media/2019/10/down-arrow-icon-png-7-Transparent-Images.png" alt=""></span>
				 </div>
				<div class="searchBar">
					<input class="input" type="text" name="keyword" value="${pageMaker.cri.keyword}">
				</div>
				<div class="searchBtn">
				<button class="btn">Search</button>		
				</div>
			</form>
			</div>
		</section>
		
		<section class="board-table">
			<div class="boardTable">
			<table class="member">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				<c:forEach var="vo" items="${list}">
					<tr>
						<td>${boardVO.idx}</td>
						<td>${boardVO.writer}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd" value="${boardVO.indate}"/> </td>
						<td>${boardVO.count}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="5">
						<button id="regBtn" class="write">글쓰기</button>
					</td>
				</tr>
			</table>
			</div>
		</section>
	</div>
</body>
</html>