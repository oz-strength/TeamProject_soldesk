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
<link rel="stylesheet" href="${contextPath}/resources/css/register.css?a">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<script type="text/javascript">
$(document).ready(function(){
	var r = '<%= request.getAttribute("r") %>';
	if (r !== "null") {
	  alert(r);
	}
	
	$("button").on("click", function(e){
		var formData=$("#frm");
		var btn=$(this).data("btn"); // data-btn="list"
		if(btn=='register'){
			if($("#b_title").val()=="" ||$("#b_content").val()==""){
				alert('전부 입력하세요');
				return false;
			}
			formData.attr("action", "${contextPath}/board/register");
		}else if(btn=='list'){   
			formData.attr("action", "${contextPath}/board/free");    		   
			formData.submit();   
			return;
		}else if(btn=='reset'){
			formData[0].reset();
			return;
		}
		formData.submit();    		
	});    	
});
  </script>
<body>
	<div class="writeBox">
	<form id="frm" method="post">
		<input type="hidden" name="b_email" value="${user.u_email}">
		<table class="member" >
		<caption class="caption">Register</caption>
		<tr>
			<td>
				<label>제목</label>
			</td>
			<td>
				<input class="title" required="required" id="b_title" type="text" name="b_title">
			</td>
		</tr>	
		<tr>
			<td>
				<label>내용</label>
			</td>
			<td>
				<textarea class="content" required="required" id="b_content" rows="10" cols="" name="b_content"></textarea>
			</td>
		</tr>
		<tr>
			<td>
				<label>작성자</label>
			</td>
			<td>
				<input class="writer" type="text" name="b_writer" readonly="readonly" value="${user.u_name}">
			</td>
		</tr>
		<tr>
			<td  colspan="2">	
				<button class="write" type="button" data-btn="register">등록</button>
				<button class="write" type="button" data-btn="reset" >취소</button>
				<button class="write" type="button" data-btn="list" >목록</button>
			</td>
		</tr>
		</table>
	</form>
	</div>
</body>
</html>