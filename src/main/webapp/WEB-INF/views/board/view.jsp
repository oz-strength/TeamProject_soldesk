<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("newLineChar", "\n"); %> <!-- 현재 페이지(pageContext)에서 \n 을 newLineChar 변수에 저장 -->
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>TeamProject</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/view.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){
			$("button").on("click", function(e){
				var formData = $("#frm");
				var btn=$(this).data("btn"); // data-btn=""
				if(btn=='delete'){
					formData.attr("action", "${contextPath}/board/delete");
				}else if (btn=='modify'){
					formData.attr("action", "${contextPath}/board/updateForm");
				}else if(btn=='list'){
					formData.find("#idx").remove();
					formData.attr("action", "${contextPath}/board/list");
				}
				formData.submit();
			});
		});
	</script>
</head>
<body>
	<div class="menu">
		<ul>
		    <li class="logo">TeamProject</li>
		    <li><a href="${contextPath}/">Home</a></li>
		    <li><a href="list">Board</a></li>
		    <li><a href="">login</a></li>    
		    <li><a href="">Sign in</a></li>
		    <li><a href=""><i class="fas fa-search small"></i></a></li>
		</ul> 
	</div>
	<div style="text-align:center">
		<h1>This is 상세보기</h1>
		<h1>This is 상세보기</h1>
		<h1>This is 상세보기</h1>
	</div>
	
	<div>
		<table border="1">
			<tr>
				<td>제목</td>
				<td>${vo.title }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>${fn:replace(vo.content, newLineChar, '<br/>')}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${vo.writer}</td>
			</tr>
			<tr>
				<td>작성일</td>
				<td>${fn:split(vo.indate," ")[0]}</td> <!-- "연월일 시분초" 에서 앞부분만 가져오기 -->
			</tr>
			<tr>
				<td colspan="2">
					<c:if test="${!empty id}">
						<button data-btn="modify">수정</button> 
						<button data-btn="delete">삭제</button>
					</c:if>
					<c:if test="${empty id}">
						<button data-btn="modify" disabled="disabled">수정</button> 
						<button data-btn="delete" disabled="disabled">삭제</button>
					</c:if>
					<button data-btn="list">목록</button>
				</td>
			</tr>
		</table>
		
		<form id="frm" method="get">
			<input type="hidden" id="idx" name="idx" value="<c:out value='${vo.idx}'/>">
			<input type="hidden" name="page" value="<c:out value='${cri.page}'/>">
			<input type="hidden" name="perPageNum" value="<c:out value='${cri.perPageNum}'/>">
			<input type="hidden" name="type" value="<c:out value='${cri.type}'/>"/>		
			<input type="hidden" name="keyword" value="<c:out value='${cri.keyword}'/>"/>	
		</form>
	</div>
	

</body>
</html>
