<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<c:set var="loginOutLink" value="${sessionScope.id==null ? '/login/login' : '/login/logout' }"/>
<c:set var="loginOut" value="${sessionScope.id==null ? 'LOGIN' : 'LOGOUT' }"/>


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
	    <a class="button-in-header" href="<c:url value='${loginOutLink }'/>">
			${loginOut }
		</a>
			
		<a class="button-in-header" href="${contextPath}/">
			<c:if test="${!empty id }">
	           <span class="long-text">MYPAGE</span>
            </c:if>
		</a>
    </div>
</header>

	





