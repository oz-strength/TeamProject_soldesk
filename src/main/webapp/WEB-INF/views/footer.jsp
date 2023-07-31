<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<c:set var="loginOutLink" value="${sessionScope.id==null ? '/login/login' : '/login/logout' }"/>
<c:set var="loginOut" value="${sessionScope.id==null ? '로그인' : '로그아웃' }"/>

	<footer class="footer">
      <div class="footer-inner">
        <div class="sns-outer">
          <div class="sns">
            <b>SNS</b>
            <span>
              <a href="https://www.youtube.com/@forestgokr" target="_blank"><i class="fa-brands fa-youtube"></i></a>
              <a href="https://www.forest.go.kr/kfsweb/kfs/idx/Index.do" target="_blank"><i class="fa-brands fa-blogger"></i></a>
              <a href="https://www.instagram.com/forest_korea/" target="_blank"><i class="fa-brands fa-instagram"></i></a>
            </span>
          </div>
        </div>
        <div class="copyright">
          <div class="logo-footer">
            <a href="${contextPath}/"><img src="${contextPath}/resources/images/mountainLogo.png" alt=""></a>
          </div>
          <div class="policy">
            <span><a href="#none">ⓒ Copyright MyMountain corp. all rights reserved</a></span>
          </div>
          
        </div>
      </div>
    </footer>