<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<c:set var="loginOutLink" value="${sessionScope.id==null ? '/login/login' : '/login/logout' }"/>
<c:set var="loginOut" value="${sessionScope.id==null ? '로그인' : '로그아웃' }"/>

	<footer>
      <div class="footer-inner">
        <div class="sns-outer">
          <div class="sns">
            <b>SNS</b>
            <span>
              <a href=""><i class="fa-brands fa-youtube"></i></i></a>
              <a href=""><i class="fa-brands fa-twitter"></i></i></a>
              <a href=""><i class="fa-brands fa-square-facebook"></i></a>
            </span>
          </div>
        </div>
        <div class="copyright">
          <div class="logo-footer">
            <a href="${contextPath}/"><img src="${contextPath}/resources/images/mountainLogo.png" alt=""></a>
          </div>
          <div class="policy">
            <a href="">개인정보 보호 및 약관</a>
            <a href="">정보</a>
            <a href="">서비스</a>
          </div>
          
        </div>
      </div>
    </footer>