<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>


<header>

    <a href="${contextPath}/" class="button-in-header">THE MOUNTAIN</a>
    <div id="middle-buttons">
      <a href="#" id="active-menu" class="button-in-header">
      	<span class="long-text">INTRO</span>
      	<span class="short-text"></span>
      </a>
      <a href="${contextPath}/mountain/map" class="button-in-header">
      	<span class="long-text">WEATHER</span>
      	<span class="short-text"></span>
      </a>
      <a href="${contextPath}/board/free" class="button-in-header">
      	<span class="long-text">BOARD</span>
      	<span class="short-text"></span>
      </a>
      <a class="button-in-header">
      	<span class="long-text"><i class="fas fa-search small"></i></span>
      	<span class="short-text"></span>
      </a>
    </div>
    <div>
	    
<%-- 	    <c:if test="${empty user}"> --%>
	    <c:if test="${sessionScope.user == null}">
	    	<a class="button-in-header" href="${contextPath}/login/login">
	       		<span class="long-text">LOGIN</span>
	        </a>
	    </c:if>
	    
		<c:if test="${sessionScope.user != null}">
			<c:if test="${user.u_admin != '1' }">
				${sessionScope.user.u_name } 님 환영합니다.
			</c:if>
			<c:if test="${user.u_admin == '1' }">
				<a class="button-in-header" href="${contextPath}/admin/admin">
		        <span class="long-text">ADMIN</span>
			</a>
			</c:if>
			<a class="button-in-header" href="${contextPath}/user.logout">
		        <span class="long-text">LOGOUT</span>
			</a>
	    </c:if>
	    
		<c:if test="${sessionScope.user != null && user.u_admin != '1'}">
			<a class="button-in-header" href="${contextPath}/">
			        <span class="long-text">MYPAGE</span>
			</a>
		</c:if>
		
    </div>
</header>

	





