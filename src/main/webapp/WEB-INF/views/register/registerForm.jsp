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
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/registerForm.css">
    <script
      src="https://code.jquery.com/jquery-3.7.0.js"
      integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
      crossorigin="anonymous"
    ></script>
    <script src="https://kit.fontawesome.com/53303b24c1.js" crossorigin="anonymous"></script>
    
    <%-- 카카오 로그인용 --%>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <style>
    .login,
    .login a,
	.input-field,
	.input-field input,
	.button-field,
	.button-field input,
	.button-field a,
	.add-info,
	.add-info span,
	.add-info a,
	.add-info label{
	cursor: url(${contextPath}/resources/images/mouse-pointer.png), auto;
	}
	
	</style>
   
</head>
<body>
	
	
<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('e482edbfbe6fe2c270c178df868185c5'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>

	<section class="login">
		<a href="${contextPath}/"><img src="${contextPath}/resources/images/mountainLogo.png" alt="" /></a>
      <h1>Register</h1>
      <form action="user.register" method="post">
        <div class="input-field">
          <input type="email" name="u_email" id="u_id" autocomplete="off" required />
          <span>USER EMAIL</span>
        </div>
        <div class="input-field">
          <input
            type="password"
            name="u_pw"
            id="u_pw"
            required
            maxlength="12"
            minlength="8"
          /><span>PASSWORD</span>
        </div>
        </div>
        <div class="input-field">
          <input
            type="text"
            name="u_name"
            id="u_name"
            autocomplete="off"
            required
            maxlength="12"
            minlength="1"
          /><span>NAME</span>
        </div>
        <div class="input-field">
          <input
            type="text"
            name="u_birth"
            id="u_birth"
            autocomplete="off"
            required
            maxlength="8"
            minlength="8"
          /><span>BIRTH</span>
        </div>
        <div class="input-field">
          <input
            type="text"
            name="u_gender"
            id="u_gender"
            autocomplete="off"
            required
            maxlength="12"
            minlength="1"
          /><span>GENDER</span>
        </div>
        
        
        <div class="button-field">
          <input type="submit" value="Sing In" id="login-btn" />
       </div>
        
      </form>
    
    <script src="${contextPath}/resources/js/validCheck.js">
    </script>
     <%--  커서 전체화면 적용하기 --%>
      
    <div class="cursor">
    	<div class="cursor__default">
    		<span class="cursor__default__inner"></span>
    	</div>
    	<div class="cursor__trace">
    		<span class="cursor__trace__inner"></span>
    	</div>
    </div>
    </section>
    
    <script type="text/javascript" src="${contextPath}/resources/js/cursor.js"></script> 
    
    
    
</body>
</html>