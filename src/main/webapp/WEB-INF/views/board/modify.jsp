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
<link rel="stylesheet" href="${contextPath}/resources/css/boardModify.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var r = '<%= request.getAttribute("r") %>';
	if (r !== "null") {
	  alert(r);
	}
	
	$("button").on("click", function(e){
		var b_content = document.getElementById("b_content");
		var formData = $("#frm");
		var btn=$(this).data("btn"); // data-btn=""
		if(btn=='modify'){
			if(content.value == ""){
	    		alert('내용을 입력하세요.');
	    		return false;
	    	}
			formData.attr("action", "${contextPath}/board/modify");
		}else if (btn=='remove'){
			formData.find("#b_title").remove();
			formData.find("#b_content").remove();
			formData.find("#b_writer").remove();
			formData.attr("action", "${contextPath}/board/remove");
			formData.attr("method", "get");
		}else if(btn=='list'){
			formData.find("#b_no").remove();
			formData.find("#b_title").remove();
			formData.find("#b_content").remove();
			formData.find("#b_writer").remove();
			formData.attr("action", "${contextPath}/board/free");
			formData.attr("method", "get");
		}
		formData.submit();
	});
});
</script>
</head>
<body>
	<div class="board-container">
		<form id="frm" method="post" >
		<table class="board-table">
			
			<tr>
				<th>번호</th>
				<td><input class="idx" type="text" name="b_no" readonly="readonly" value="${board.b_no}"/></td>
			</tr>
			<tr>
				<th>제목</th> 
				<td><input class="title" type="text" name="b_title" value="<c:out value='${board.b_title}'/>"/></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea class="content" id="content" rows="10" cols="" name="b_content"><c:out value='${board.b_content}'/></textarea> </td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" class="writer" name="b_writer" readonly="readonly"  value="${board.b_writer}"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<c:if test="${!empty user && user.u_email eq board.b_email}">				
					<button type="button" data-btn="modify">수정</button>
					<button type="button" data-btn="remove">삭제</button>
					</c:if>
					<c:if test="${empty user || user.u_email ne board.b_email}">				
					<button disabled="disabled" type="button">수정</button>
					<button disabled="disabled" type="button" >삭제</button>
					</c:if>
					<button type="button" data-btn="list">목록</button>
				</td>
			</tr>
		</table>
			<input type="hidden" name="page" value="<c:out value='${cri.page}'/>">
			<input type="hidden" name="perPageNum" value="<c:out value='${cri.perPageNum}'/>">
			<input type="hidden" name="type" value="<c:out value='${cri.type}'/>">
			<input type="hidden" name="keyword" value="<c:out value='${cri.keyword}'/>">
		</form>
	</div>
</body>
</html>