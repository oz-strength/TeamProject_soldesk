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
    <link rel="stylesheet" href="${contextPath}/resources/css/modify.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>    
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
	<h1>This is 수정하기</h1>
	<h1>This is 수정하기</h1>
	<h1>This is 수정하기</h1>
</div>

<form action="update" method="post" onsubmit="return formCheck(this)">

	<div id="msg" class="msg">
   	    <c:if test="${not empty param.msg}">
	        <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>            
	    </c:if>
    </div> 
    
	<input type="hidden" name="idx" value="${vo.idx }"/> <!-- 수정할 게시글 번호 안보이게 넘기기 -->
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" value="${vo.title }"/></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="7" name="content">${vo.content }</textarea></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" value="${vo.writer }" readonly="readonly"/></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit">수정</button>
				<button type="button" onclick="location.href='board/list'">목록</button>
			</td>
		</tr>
	</table>
	<input type="hidden" name="page" value="<c:out value='${cri.page}'/>">
	<input type="hidden" name="perPageNum" value="<c:out value='${cri.perPageNum}'/>">
	<input type="hidden" name="type" value="<c:out value='${cri.type}'/>">
	<input type="hidden" name="keyword" value="<c:out value='${cri.keyword}'/>">
</form>

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

           return true;
       }

       function setMessage(msg, element){
            document.getElementById("msg").innerHTML = `<i class="fa fa-exclamation-circle"> ${'${msg}'}</i>`;

            if(element) {
                element.select();
            }
       }
   </script>




