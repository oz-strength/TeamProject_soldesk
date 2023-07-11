<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<c:set var="loginOutLink" value="${sessionScope.id==null ? '/login/login' : '/login/logout' }"/>
<c:set var="loginOut" value="${sessionScope.id==null ? '로그인' : '로그아웃' }"/>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/cursor.css" />
    
  </head>
  <body>
     <div class="cursor">
      <div class="cursor__default">
        <span class="cursor__default__inner"></span>
      </div>
      <div class="cursor__trace">
        <span class="cursor__trace__inner"></span>
      </div>
    </div>
    <section class="preloader shown-area">
      <button class="preloader__btn">
        <span class="preloader__btn_hold">Hold</span>
      </button>
    </section>
    
    <section class="header hidden-area">
    Header
    <%@ include file="/WEB-INF/views/parallaxHome.jsp" %>
    </section>
    
    <script src="resources/js/cursor.js"></script>
  </body>
</html>






