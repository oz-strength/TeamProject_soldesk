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

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">

$(function() {
	$("#login-btn").css({"pointer-events": "none", "opacity": "0.3"});
	checkLogin();
	
});


function checkLogin() {
	$("input:not(#login-btn)").on("input", function() {
		checkInputNullSignUp();
	});
	
	$("#u_id").keyup(function() {
		checkId();
	});

	$("#u_pw").keyup(function() {
		checkPw();
	});

}

function checkInputNullSignUp() {
	let m_id = $("#u_id").val();
	let inputFilled = $("input:not(#login-btn)").filter(function() { return !this.value }).length == 0;
	let	ckId = rtnCkId();
	let	ckPw = rtnCkPw();

	if (inputFilled && ckId) {
		$("#login-btn").css({"pointer-events": "auto", "opacity": "1"});
	} else {
		$("#login-btn").css({"pointer-events": "none", "opacity": "0.3"});
	}
}

// 아이디 중복 시에 유효성 검사 추가하기

function checkId() {
	let ck_id = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	let m_id = $("#u_id").val();
	if (m_id.match(ck_id) == null) {
		let u_email_p = $("<div id='u_email_err' class='er_p'></div>").text("이메일 형식으로 입력해주새요.");
		$("#u_email_err_div").empty();
		$("#u_email_err_div").append(u_email_p);
		$("#u_email_err").css("color", "red");
	} else {
		$("#u_email_err").empty();
	}
}

function rtnCkId() {
	let ck_id = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	let m_id = $("#u_id").val();
	if (m_id.match(ck_id) == null) {
		return false;
	} else {
		return true;
	}
}

function checkPw() {
	let ck_pw = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{1,50}).{8,50}$/;
	let m_pw = $("#u_pw").val();
	if (m_pw.match(ck_pw) == null) {
		let u_pw_p = $("<p id='u_pw_err' class='er_p'></p>").text("영문, 숫자, 특수문자를 조합하여 입력해주세요. (8-12자)");
		$("#u_pw_err_div").empty();
		$("#u_pw_err_div").append(u_pw_p);
		$("#u_pw_err").css("color", "red");
	} else {
		$("#u_pw_err_div").empty();
	}
}

function rtnCkPw() {
		let ck_pw = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{1,50}).{8,50}$/;
		let m_pw = $("#u_pw").val();
		if (m_pw.match(ck_pw) == null) {
			return false;
		} else {
			return true;
		}
}

</script>


	<section class="login">
		<a href="${contextPath}/"><img src="${contextPath}/resources/images/mountainLogo.png" alt="" /></a>
      <h1>Login</h1>
      <form action="user.login">
        <div class="input-field">
          <input type="email" name="u_email" id="u_id" autocomplete="off" required/>
          <span>USER EMAIL</span>
        </div>
        <div id="u_email_err_div" class="err-field"></div>
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
        <div id="u_pw_err_div" class="err-field"></div>
        <div class="button-field">
          <input type="submit" value="Login" id="login-btn" />
          
        </div>
        <div class="add-info">
          <label>
            <input type="checkbox" name="" id="save-email" />
            <em></em>
            <span>Save your Email?</span>
          </label>
          <a href="#none">Forgot Password?</a>
          <a href="signup">Sign Up</a>
        </div>
      </form>
<!--       <input type="submit" value="KAKAO" id="kakao-btn" onclick="kakaoLogin();" />
 -->    
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