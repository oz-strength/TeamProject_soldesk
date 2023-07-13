<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.net.URLDecoder"%>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>TeamProject</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/boardRegisterForm.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>    
</head>
<body>
	
	<section class="board-write">

		<div class="writeBox">
			<form action="regFreeBoard" method="post" >
			
				<div id="msg" class="msg">
						<c:if test="${not empty param.msg}">
							<i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>            
					</c:if>
				</div> 
				<table class="board-table">
					<tr>
						<td class="title">제목</td>
						<td><input type="text" name="b_title"/></td>
					</tr>
					<tr>
						<td class="photo">사진</td>
						<td>
							<input type="file" name="b_photo"/>
						</td>
					</tr>
					<tr>
						<td class="content">내용</td>
						<td><textarea rows="7" name="b_detail"></textarea></td>
					</tr>
					<tr>
						<td class="writer">작성자</td>
						<td><input type="text" name="b_writer"/></td>
					</tr>	
					<tr class="button-area">
						<td colspan="2">
							<button class="regBtn"  type="submit">등록</button>
							<a class="cancleBtn" href="free">취소</a>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</section>
	<script>
	       function formCheck(frm) {
	            let msg ='';
	
	            if(!frm.title.value) {
	                setMessage('제목을 입력하세요.', frm.title);
	                return false;
	            }
	
	            if(!frm.content.value) {
	                setMessage('내용을 입력하세요.', frm.content);
	                return false;
	            }           
	
	            if(!frm.writer.value) {
	                setMessage('작성자를 입력하세요.', frm.writer);
	                return false;
	            }           
	           
	           return true;
	       }
	
	       function setMessage(msg, element){
	            document.getElementById("msg").innerHTML = `<i class="fa fa-exclamation-circle"> ${'${msg}'}</i>`;
	
	            if(element) {
	                element.select();
	            }
	       }
	</script>

</body>
</html>





