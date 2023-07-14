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
    <link rel="stylesheet" href="${contextPath}/resources/css/signupForm.css">
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">

	$(function() {
		$("#login-btn").css({"pointer-events": "none", "opacity": "0.3"});
		checkSignUp();
		
	});
	

	function checkSignUp() {
		$("input:not(#login-btn)").on("input", function() {
			checkInputNullSignUp();
		});
		
		$("#u_id").keyup(function() {
			checkId();
		});

		$("#u_pw").keyup(function() {
			checkPw();
		});
		
		$("#u_pw_chk").keyup(function() {
			checkPwCk();
		});
		
		$("#u_name").keyup(function() {
			checkName();
		});
		
		$("#u_birth").keyup(function() {
			checkBirth();
		});
	}

	function checkInputNullSignUp() {
		let m_id = $("#u_id").val();
		let inputFilled = $("input:not(#login-btn)").filter(function() { return !this.value }).length == 0;
		let	ckId = rtnCkId();
 		let	ckPw = rtnCkPw();
		let ckPwCk = rtnCkPwCk();
		let ckName = rtnCkName();
		let ckBirth = rtnCkBirth();

	/*
	 * checkIdDpctd(m_id, function(dpctd) { if (inputFilled && ckId && ckPw &&
	 * ckPwCk && ckName && ckPN && !dpctd) {
	 * $("#login-btn").css({"pointer-events": "auto", "opacity": "1"}); } else {
	 * $("#login-btn").css({"pointer-events": "none", "opacity": "0.3"}); } }
	 */
		
		if (inputFilled && ckId && ckPw && ckPwCk && ckName && ckBirth) {
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

	function checkPwCk() {
		let m_pw = $("#u_pw").val();
		let pw_chk = $("#u_pw_chk").val();
		if (m_pw !== pw_chk) {
			let u_pw_chk_p = $("<p id='u_pw_chk_err' class='er_p'></p>").text("비밀번호가 일치하지 않습니다.");
			$("#u_pw_chk_err_div").empty();
			$("#u_pw_chk_err_div").append(u_pw_chk_p);
			$("#u_pw_chk_err").css("color", "red");
		} else {
			$("#u_pw_chk_err_div").empty();
		}
	}

	function rtnCkPwCk() {
		let m_pw = $("#u_pw").val();
		let pw_ck = $("#u_pw_chk").val();
		if (m_pw !== pw_ck) {
			return false;
		} else {
			return true;
		}
	}

	function checkName() {
		let ck_name = /^[가-힣a-zA-Z]{2,10}$/;
		let m_name = $("#u_name").val();
		if (m_name.match(ck_name) == null) {
			let u_name_p = $("<p id='u_name_err' class='er_p'></p>").text("이름을 입력해주세요. (2-10자)");
			$("#u_name_err_div").empty();
			$("#u_name_err_div").append(u_name_p);
			$("#u_name_err").css("color", "red");
		} else {
			$("#u_name_err_div").empty();
		}
	}	

	function rtnCkName() {
		let ck_name = /^[가-힣a-zA-Z]{2,10}$/;
		let m_name = $("#u_name").val();
		if (m_name.match(ck_name) == null) {
			return false;
		} else {
			return true;
		}
	}

	function checkBirth() {
		let ck_birth = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
		let m_birth = $("#u_birth").val();
		if (m_birth.match(ck_birth) == null) {
			let u_birth_p = $("<p id='u_birth_err' class='er_p'></p>").text("숫자만 입력하세요 ( 8자리 | ex> 19971105 )");
			$("#u_birth_err_div").empty();
			$("#u_birth_err_div").append(u_birth_p);
			$("#u_birth_err").css("color", "red");
		} else {
			$("#u_birth_err_div").empty();
		}
	}

	function rtnCkBirth() {
		let ck_birth = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
		let m_birth = $("#u_birth").val();
		if (m_birth.match(ck_birth) == null) {
			return false;
		} else {
			return true;
		}
	}

	
</script>
   
   
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
        <div class="input-field">
          <input
            type="password"
            name="u_pw_chk"
            id="u_pw_chk"
            required
            maxlength="12"
            minlength="8"
          /><span>PASSWORD CHECK</span>
        </div>
        <div id="u_pw_chk_err_div" class="err-field"></div>
        <div class="input-field">
          <input
            type="text"
            name="u_name"
            id="u_name"
            autocomplete="off"
            required
            maxlength="10"
            minlength="2"
          /><span>NAME</span>
        </div>
        <div id="u_name_err_div" class="err-field"></div>
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
        <div id="u_birth_err_div" class="err-field"></div>
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