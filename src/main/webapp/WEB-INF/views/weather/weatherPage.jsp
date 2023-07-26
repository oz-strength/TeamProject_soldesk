<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
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
	<style>
	header,
	.grid-container,
	.sns,
	.sns a,
.policy a,
.button-in-header,
.button-in-header a,
.btn-explore,
.logo-footer img {
cursor: url(${contextPath}/resources/images/mouse-pointer.png), auto;}
	</style>
</head>
<body>

	<%-- 헤더 컴포넌트 가져오기 --%>
	<%@ include file="/WEB-INF/views/header.jsp" %>
	
	<section class="main-section">
	<h1 style="padding:100px 0; text-align:center; font-size:20px; font-weight:500;">지역별 날씨를 확인하세요!</h1>
	
	<!-- weather/weatherPage-->
	
	
	<!-- 지역 그리드 -->
	<div class="grid-container" id="Location">
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=seoul'">서울</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=gyeonggi'">경기</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=gangwon'">강원</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=chungnam'">충남</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=jeonbuk'">전북</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=jeonnam'">전남</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=gyeongbuk'">경북</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=gyeongnam'">경남</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=jeju'">제주</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=incheon'">인천</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=busan'">부산</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=ulsan'">울산</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=daegu'">대구</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=daejeon'">대전</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=gwangju'">광주</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=sejong'">세종</div>
		<div class="grid-item" onclick="location.href='${contextPath}/weather/location?w_loc=dokdo'">독도</div>
	</div>	
	
	
	</section>
	
	
	
	
	
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