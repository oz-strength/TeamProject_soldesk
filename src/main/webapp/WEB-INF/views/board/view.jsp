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
<link rel="stylesheet" href="${contextPath}/resources/css/get.css?b">
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var r = '<%= request.getAttribute("r") %>';
		if (r !== "null") {
		  alert(r);
		}
		
		$("button").on("click", function(e){
			var formData = $("#frm");
			var btn=$(this).data("btn"); // data-btn=""
			if(btn=='reply'){
				formData.attr("action", "${contextPath}/board/reply");
			}else if (btn=='modify'){
				formData.attr("action", "${contextPath}/board/modify");
			}else if(btn=='list'){
				formData.find("#idx").remove();
				formData.attr("action", "${contextPath}/board/free");
			}
			formData.submit();
		});
	});
</script>
</head>
<body>
	<div class="writeBox">
		<table class="member" border="1">
		
			<tr>
				<th>번호</th>
				<td><input type="text" name="idx" readonly="readonly" value="${board.b_no}"/></td>
			</tr>
			<tr>
				<th>제목</th> 
				<td><input type="text" name="title" readonly="readonly" value="<c:out value='${board.b_title}'/>"/></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="" name="content" readonly="readonly" ><c:out value='${board.b_content}'/></textarea> </td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer" readonly="readonly"  value="${board.b_writer}"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<c:if test="${!empty user}">
					<button class="btn" data-btn="reply">답글</button>
					<button class="btn" data-btn="modify">수정</button>
					</c:if>
					<c:if test="${empty user}">
					<button class="btn" disabled="disabled" >답글</button>
					<button class="btn" disabled="disabled" >수정</button>
					</c:if>
					<button class="btn" data-btn="list">목록</button>
				</td>
			</tr>
		</table>
		<form id="frm" method="get">
			<input type="hidden" id="idx" name="b_no" value="<c:out value='${board.b_no}'/>">
			<input type="hidden" name="page" value="<c:out value='${cri.page}'/>">
			<input type="hidden" name="perPageNum" value="<c:out value='${cri.perPageNum}'/>">
			<input type="hidden" name="type" value="<c:out value='${cri.type}'/>"/>		
			<input type="hidden" name="keyword" value="<c:out value='${cri.keyword}'/>"/>	
		</form>
	</div>
</body>
</html>