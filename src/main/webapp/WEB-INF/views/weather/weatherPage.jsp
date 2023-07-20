<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>TeamProject</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/weatherPage.css">
    <script src="https://kit.fontawesome.com/53303b24c1.js" crossorigin="anonymous"></script>
	
</head>
<body>

	<%-- 헤더 컴포넌트 가져오기 --%>
	<%@ include file="/WEB-INF/views/header.jsp" %>
	
	<h1 style="padding:100px 0;">컨텐츠 들어갈 자리!@!@!@!</h1>
	
	
	
	
	<!-- 지역 그리드 -->
	<div class="grid-container" id="Location">
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=seoul'">서울</div>
		<div class="grid-item">경기</div>
		<div class="grid-item">강원</div>
		<div class="grid-item">충남</div>
		<div class="grid-item">전북</div>
		<div class="grid-item">전남</div>
		<div class="grid-item">경북</div>
		<div class="grid-item">경남</div>
		<div class="grid-item">제주</div>
		<div class="grid-item">인천</div>
		<div class="grid-item">부산</div>
		<div class="grid-item">울산</div>
		<div class="grid-item">대구</div>
		<div class="grid-item">대전</div>
		<div class="grid-item">광주</div>
		<div class="grid-item">세종</div>
		<div class="grid-item">독도</div>
	</div>	
	
	
	
	
	
	
	
	
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