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
<link rel="stylesheet" href="${contextPath}/resources/css/reply.css?q">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
		var r = '<%= request.getAttribute("r") %>';
		if (r !== "null") {
		  alert(r);
		}
    	
    	$("button").on("click", function(e){
    		var content = document.getElementById("b_content");
    		var formData=$("#frm");
    		var btn=$(this).data("btn"); // data-btn="list"
    		if(btn=='reply'){
    			if(content.value == ""){
    	    		alert('내용을 입력하세요.');
    	    		return false;
    	    	}
    			formData.attr("action", "${contextPath}/board/reply");
    		}else if(btn=='list'){   
    			var formData1=$("#frm1");
    			formData1.attr("action", "${contextPath}/board/free");    		   
    			formData1.submit();   
    			return;
    		}else if(btn=='reset'){
    			formData[0].reset();
    			return;
    		}
    		formData.submit();    		
    	});    	
    });
    
</script>
</head>
<body>
	<div class="writeBox">
	<form id="frm" method="post">
		<input type="hidden" name="page" value="<c:out value='${cri.page}'/>"/>
        <input type="hidden" name="perPageNum" value="<c:out value='${cri.perPageNum}'/>"/>          
        <input type="hidden" name="type" value="<c:out value='${cri.type}'/>"/>
        <input type="hidden" name="keyword" value="<c:out value='${cri.keyword}'/>"/>
          <!--  b_no(원글,부모글) -->
		<input type="hidden" name="b_no" value="${board.b_no}">
		<input type="hidden" name="b_email" value="${user.u_email}">
		<table class="member">
		<caption class="caption">Reply</caption>
		<tr>
			<td>
				<label>제목</label>
			</td>
			<td>
				<input type="text" name="b_title" value="<c:out value='${board.b_title}'/>">
			</td>
		</tr>	
		<tr>
			<td>
				<label>답변</label>
			</td>
			<td>
				<textarea id="b_content" rows="10" cols="" name="b_content"></textarea>
			</td>
		</tr>
		<tr>
			<td>
				<label>작성자</label>
			</td>
			<td>
				<input type="text" name="b_writer" readonly="readonly" value="${user.u_name}">
			</td>
		</tr>	
		<tr>
			<td colspan="3">
			<button class="btn" type="button" data-btn="reply" >답변</button>
        	<button class="btn" type="button" data-btn="reset" >취소</button>
        	<button class="btn" type="button" data-btn="list" >목록</button>
        	</td>
        </tr>
        </table>
	</form>
	 <form id="frm1" method="get">
          <input type="hidden" name="page" value="<c:out value='${cri.page}'/>"/>
          <input type="hidden" name="perPageNum" value="<c:out value='${cri.perPageNum}'/>"/>          
          <input type="hidden" name="type" value="<c:out value='${cri.type}'/>"/>
          <input type="hidden" name="keyword" value="<c:out value='${cri.keyword}'/>"/>
       </form>
       </div>
</body>
</html>