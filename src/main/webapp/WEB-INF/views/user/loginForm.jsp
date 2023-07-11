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
    <link rel="stylesheet" href="${contextPath}/resources/css/loginForm.css">
    <script src="https://kit.fontawesome.com/53303b24c1.js" crossorigin="anonymous"></script>
    
    <%-- 카카오 로그인용 --%>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    
    <%-- 커스텀 커서 안먹는 곳을 이미지로 대체  --%>
    <style>
	.id,
	.pwd,
	.rememberId,
	.bottomInfo,
	.loginBtn{
	cursor: url(${contextPath}/resources/images/mouse-pointer.png), auto;
	}
	
	</style>
</head>
<body>
	
	<section>
		<h1>테스트</h1>
		<ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
          <span>카카오 로그인</span>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>
</ul>
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
	</section>

	<section>
    <form action="<c:url value='/login/login'/>" method="post" onsubmit="return formCheck(this);">
        <h3 id="title">Login</h3>
        <div id="msg">
	    <c:if test="${not empty param.msg}">
		<i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>            
	    </c:if>        
		</div>
        <input type="text" class="id" name="id" placeholder="이메일 입력" autofocus>
        <input type="password" class="pwd" name="pwd" placeholder="비밀번호">
        <input type="button" class="kakaoLogin" name="kakaoLogin">
	      <a href="javascript:void(0)" onclick="kakaoLogin();">
	          <span>카카오 로그인</span>
	      </a>
        
        
        <button class="loginBtn">로그인</button>
        <div class="bottomInfo">
            <label><input type="checkbox" class="rememberId" name="rememberId"> 아이디 기억</label> |
            <a href="">비밀번호 찾기</a> |
            <a href="register/add">회원가입</a>
        </div>
        <script>
            function formCheck(frm) {
                 let msg ='';
     
                 if(frm.id.value.length==0) {
                     setMessage('id를 입력해주세요.', frm.id);
                     return false;
                 }
     
                 if(frm.pwd.value.length==0) {
                     setMessage('password를 입력해주세요.', frm.pwd);
                     return false;
                 }

                 return true;
            }
     
            function setMessage(msg, element){
                 document.getElementById("msg").innerHTML = ` ${'${msg}'}`;
     
                 if(element) {
                     element.select();
                 }
            }
        </script>
    </form>
    
      <%-- 커서 전체화면 적용하기 --%>
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