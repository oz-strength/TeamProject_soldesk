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
    <link rel="stylesheet" href="${contextPath}/resources/css/gallery.css">
    <style>
	.sns a,
	.policy a,
	.button-in-header,
	.button-in-header a,
	.btn-explore,
	.logo-footer a {
	cursor: url(${contextPath}/resources/images/mouse-pointer.png), auto;
}
</style>
    <script src="https://kit.fontawesome.com/53303b24c1.js" crossorigin="anonymous"></script>
	
</head>
<body>


	<div class="main-container">
	<%-- 헤더 컴포넌트 가져오기 --%>
	<%@ include file="/WEB-INF/views/header.jsp" %>
	
	
	<section>
	<!-- nft 그리드 -->
	
	<div class="grid-container" id="nftData">
		<div class="grid-item">앞으로 들어올 예정</div>
		<div class="grid-item">앞으로 들어올 예정</div>
		<div class="grid-item">앞으로 들어올 예정</div>
		<div class="grid-item">앞으로 들어올 예정</div>
		<div class="grid-item">앞으로 들어올 예정</div>
		<div class="grid-item">앞으로 들어올 예정</div>
		<div class="grid-item">앞으로 들어올 예정</div>
		<div class="grid-item">앞으로 들어올 예정</div>
	</div>
	
	<div class="auction">
		<a href="http://localhost:8010">Auction!</a>
	</div>
	
	</section>
	</div>
	
	<%-- footer 컴포넌트 가져오기 --%> 
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	
	
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
	
	
	
</body>
</html>