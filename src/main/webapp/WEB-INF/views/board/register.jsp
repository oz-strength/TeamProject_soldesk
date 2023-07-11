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
    <link rel="stylesheet" href="${contextPath}/resources/css/register.css">
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
	<h1>This is 글쓰기 화면</h1>
	<h1>This is 글쓰기 화면</h1>
	<h1>This is 글쓰기 화면</h1>
</div>

<form action="insert" method="post" onsubmit="return formCheck(this)">

	 <div id="msg" class="msg">
   	    <c:if test="${not empty param.msg}">
	        <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>            
	    </c:if>
    </div> 
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"/></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="7" name="content"></textarea></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="writer"/></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit">등록</button>
				<a href="list">취소</button>
			</td>
		</tr>
	</table>
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






