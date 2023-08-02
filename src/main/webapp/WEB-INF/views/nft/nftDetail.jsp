<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
canvas {
            position: absolute;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            z-index: -1; /* canvas를 맨 뒤로 보냄 */
            /* 출처 <a href="https://kr.freepik.com/free-vector/hand-drawn-flat-design-winter-landscape_20282224.htm#from_view=detail_alsolike">Freepik</a> */
            background-image: url(resources/images/snowImg.jpg);
             background-size: cover; /* 이미지를 화면에 꽉 차게 설정 */
         background-repeat: no-repeat; /* 이미지 반복 없이 설정 */
        }

 h1,
 #nft_div {
     /* 다른 컨텐츠의 스타일링 및 위치를 설정합니다. */
     position: relative;
     z-index: 1; /* 다른 컨텐츠를 canvas 위로 올림 */
     /* 추가적인 스타일링 작업을 수행할 수 있습니다. */
 }
</style>
<link rel="stylesheet" href="${contextPath}/resources/css/nftDetail.css">
<script src="https://kit.fontawesome.com/53303b24c1.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
   $(function() {
      var n_no = '<%= request.getAttribute("n_no") %>';
      var n_status = '<%= request.getAttribute("n_status") %>';
      var imgPath = '<c:url value="resources/images/nft/" />';
      $.getJSON("nft.Detail.getJSON?n_no=" + n_no + "&n_status=" + n_status, function(n) {
         let nft_title = $("<h1></h1>").append(n.n_name);
         let nft_img = $("<img class='nftImg' id='nftImg' src='" + imgPath + n.n_img + "' />");
         let nft_master = $("<h1></h1>").append("Master : " + n.n_master);
         
         $("#nft_div").append(nft_img);
         $("#nft_div").append(nft_title);
         $("#nft_div").append(nft_master);
         
         if (n_status == 0) {
            $("#auction_controller_btn").removeAttr("hidden");
            $("#n_no").attr("value", n.n_no);
         } else {
            $("#auction_nodejs_btn").removeAttr("hidden");
            $("#c_n_no").attr("value", n.n_no);
         }
         
         $("#auction_nodejs_btn").click(async function() {
            let check = confirm("경매장에 등록하시겠습니까?");
            if (check) {
                const nftData = {
                        n_no : n.n_no,
                        n_hash : n.n_hash,
                        n_master : n.n_master,
                        n_status : n.n_status,
                        n_name : n.n_name,
                      };

                try {
                     const response = await fetch("http://localhost:3000/nft.regist/", {
                       method: "POST",
                       body: JSON.stringify(nftData),
                       headers: {
                         "Content-Type": "application/json",
                       },
                     });

                     if (response.ok) {
                       const data = await response.json();

                       if (data.message == "success") {
                         alert("경매장에 등록하였습니다.");
                         document.getElementById("change_status_Controller").submit();
                       } else {
                         alert("경매장 등록 실패하였습니다 !");
                       }
                     } else {
                       alert("데이터 전송 실패!");
                     }
                   } catch (error) {
                     alert("서버 통신 중 에러 발생:", error);
                   } 
            }
         });
      });
      
   });
</script>
</head>
<body>
   
   <canvas></canvas>
   <div class="main-container">
   		<div class="backBtnDiv">
		   <a href="${contextPath}/nft/gallery" id="goBack" ><i class="fa-solid fa-left-long fa-2xl"></i></a>
	   </div>
	   <div id="nft_div"></div>
	</div>
   <c:if test="${sessionScope.user.u_admin == 1 }">
      <form action="nft.swap" method="post">
         <input id="n_no" name="n_no" hidden="true" readonly="readonly">
         <input id="n_status" name="n_status" hidden="true" value=1 readonly="readonly">
         <button id="auction_controller_btn" hidden="true">경매 전환</button>
      </form>
      <form id="change_status_Controller" action="nft.swap" method="post">
         <input id="c_n_no" name="n_no" hidden="true" readonly="readonly">
         <input id="c_n_status" name="n_status" hidden="true" value=2 readonly="readonly">
         <button id="auction_nodejs_btn" hidden="true">경매 등록</button>
      </form>
   </c:if>
   
   <!-- canvas javascript -->
   <script  src="${contextPath}/resources/js/nftDetail.js"></script>
   
</body>
=======
<%@page import="com.soldesk.entity.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
	$(function() {
		var n_no = '<%= request.getAttribute("n_no") %>';
		var n_status = '<%= request.getAttribute("n_status") %>';
		var imgPath = '<c:url value="resources/images/nft/" />';
		$.getJSON("nft.Detail.getJSON?n_no=" + n_no + "&n_status=" + n_status, function(n) {
			let nft_title = $("<h1></h1>").append(n.n_name);
			let nft_img = $("<img id='nftImg' src='" + imgPath + n.n_img + "' />");
			let nft_master = $("<h1></h1>").append("Master : " + n.n_master);
			
			$("#nft_div").append(nft_img);
			$("#nft_div").append(nft_title);
			$("#nft_div").append(nft_master);
			
			// Java 객체를 JSON 형식으로 변환하여 JavaScript 변수에 할당 (Jackson 사용)
			var user_session = JSON.parse('<%= (new com.fasterxml.jackson.databind.ObjectMapper()).writeValueAsString(session.getAttribute("user")) %>');
			
			if (user_session !== null && user_session !== undefined) {
			    // JavaScript에서 해당 객체의 프로퍼티에 접근하여 이메일 주소를 가져옴
				var u_email = user_session.u_email;
				
				if (u_email === n.n_master) {
					$("#auction_div").removeAttr("hidden");
				}
			} 
			
			if (n_status == 0) {
				$("#auction_controller_btn").removeAttr("hidden");
				$("#n_no").attr("value", n.n_no);
			} else {
				$("#auction_nodejs_btn").removeAttr("hidden");
				$("#c_n_no").attr("value", n.n_no);
			}
			
			$("#auction_nodejs_btn").click(async function() {
				let check = confirm("경매장에 등록하시겠습니까?");
				if (check) {
				    const nftData = {
						      n_no : n.n_no,
						      n_hash : n.n_hash,
						      n_master : n.n_master,
						      n_img : n.n_img,
						      n_status : n.n_status,
						      n_name : n.n_name,
						    };

				    try {
					      const response = await fetch("http://localhost:3000/nft.regist", {
					        method: "POST",
					        body: JSON.stringify(nftData),
					        headers: {
					          "Content-Type": "application/json",
					        },
					      });

					      if (response.ok) {
					        const data = await response.json();

					        if (data.message == "success") {
					          alert("경매장에 등록하였습니다.");
					          document.getElementById("change_status_Controller").submit();
					        } else {
					        	console.log("경매장 등록 실패하였습니다 !");
					        }
					      } else {
					    	  console.log("데이터 전송 실패!");
					      }
					    } catch (error) {
					      console.log("서버 통신 중 에러 발생:", error);
					    } 
				}
			});
		});
		
	});
</script>
</head>
<body>
	<h1>NFT Detail Page !!</h1>
	<div id="nft_div"></div> 
	<div id="auction_div" hidden="true">
		<form action="nft.swap" method="post">
			<input id="n_no" name="n_no" hidden="true" readonly="readonly">
			<input id="n_status" name="n_status" hidden="true" value=1 readonly="readonly">
			<button id="auction_controller_btn" hidden="true">경매 전환</button>
		</form>
		<form id="change_status_Controller" action="nft.swap" method="post">
			<input id="c_n_no" name="n_no" hidden="true" readonly="readonly">
			<input id="c_n_status" name="n_status" hidden="true" value=2 readonly="readonly">
			<button id="auction_nodejs_btn" hidden="true">경매 등록</button>
		</form>
	</div>
</body>
>>>>>>> refs/remotes/origin/team_upload
</html>