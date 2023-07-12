<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<c:set var="loginOutLink" value="${sessionScope.id==null ? '/login/login' : '/login/logout' }"/>
<c:set var="loginOut" value="${sessionScope.id==null ? '로그인' : '로그아웃' }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>TeamProject</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/map.css">
   <script src="https://kit.fontawesome.com/53303b24c1.js" crossorigin="anonymous"></script>
	<style>
	
.sns a,
.policy a,
.button-in-header,
.button-in-header a,
.btn-explore {
cursor: url(${contextPath}/resources/images/mouse-pointer.png), auto;}

    </style>
</head>
<body>

	<%-- 헤더 컴포넌트 가져오기 --%>
	<%@ include file="/WEB-INF/views/header.jsp" %>
	
	
	
	
	
	
	
	 <%-- 커서 전체화면 적용하기 --%>
    <div class="cursor">
    	<div class="cursor__default">
    		<span class="cursor__default__inner"></span>
    	</div>
    	<div class="cursor__trace">
    		<span class="cursor__trace__inner"></span>
    	</div>
    </div>
	<script type="text/javascript" src="${contextPath}/resources/js/cursor.js"></script>
	
	
	
	<!-- 위로가기 버튼 -->
	<a id="backtotop" ></a>
	<script type="text/javascript" src="${contextPath}/resources/js/backtotop.js"></script>
	
	<script>
		$('.btn-mode').click(function(){
		    $('.profile').toggleClass('dark');
		})
		$('.btn-like').click(function(){
		    $(this).toggleClass('active')
		})
	</script>
	
	<%-- footer 컴포넌트 가져오기 --%> 
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	
</body>
</html>