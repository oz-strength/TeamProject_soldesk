<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>TeamProject</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/gallery.css">
    <style>
	.sns a,
	.policy a,
	.button-in-header,
	.button-in-header a,
	.btn-explore,
	.logo-footer a {
	cursor: url(${contextPath}/resources/images/mouse-pointer.png), auto;
}
</style>
<script src="https://kit.fontawesome.com/53303b24c1.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
	$(function() {
		// 이미지 경로 변수에 저장
		var imgPath = '<c:url value="resources/images/nft/" />';
		$.getJSON("nft.Board.getJSON", function(nft) {
			var nftDataDiv = document.getElementById('nftData');
			var html = '';

			$.each(nft.nft, function(i, n) {
	    		html += '<div class="grid-item">';
				html += '<ul class="menu align-center expanded text-center SMN_effect-5">';
				html += '<li>';
				// 이미지
				html += '<span><img id="nftImg" src="../' + imgPath + n.n_img + '" /></span>';
				
				html += '<span>'+ n.n_name +'</span>';
				
				html += '</li>'; 
				html += '</ul>'; 
				html += '</div>'; // 닫는 div 추가

			});
			nftDataDiv.innerHTML = html; 
		});
	});
	

</script>

<script type="text/javascript">
	function checkMakingWallet() {
		let check = confirm("지갑을 생성하시겠습니까?");
		if (check) {
			location.href = "../user/make.wallet";
		}
	}
	
	async function goAuctionPage() {
		let check = confirm("경매장 페이지로 이동하시겠습니까?");
		if (check) {
			const userData = {
				u_email : "${sessionScope.user.u_email}",
				u_name : "${sessionScope.user.u_name}",
			};

			try {
				const response = await
				fetch("http://localhost:3000/user.regist/", {
					method : "POST",
					body : JSON.stringify(userData),
					headers : {
						"Content-Type" : "application/json",
					},
				});

				if (response.ok) {
					alert("경매장 페이지로 이동합니다.");
					window.location.href = "http://localhost:3000/wallet.go";
				} else {
					alert("데이터 전송 실패!");
				}
			} catch (error) {
				alert("서버 통신 중 에러 발생:", error);
			}
		}
	}
</script>

</head>
<body>



	<div class="main-container">
	<%-- 헤더 컴포넌트 가져오기 --%>
	<%@ include file="/WEB-INF/views/header.jsp" %>
	
	<div>
		<c:if test="${sessionScope.user != null}">
			<!-- user_db 에 wallet 변수 추가하기 -->
			<!-- wallet_cash 를 wallet으로 바꾸기 -->
			<c:if test="${sessionScope.user.u_wallet_cash == 0 }">
				<a onclick="checkMakingWallet()">지갑 생성</a>
			</c:if>
			<a onclick="goAuctionPage()">경매장 페이지</a>
			<hr>
		</c:if>
	</div>
	
	<section>
	<!-- nft 그리드 -->
	<div id="nft_div"></div>
	
	
	<div class="grid-container" id="nftData">
		<div id="nftData"></div>
	</div>
	
	<div class="auction">
		<a href="http://localhost:8010">Auction!</a>
	</div>
	
	</section>
	</div>
	
	<%-- footer 컴포넌트 가져오기 --%> 
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	
	
	 <%-- 커서 전체화면 적용하기 --%>
    <div class="cursor">
    	<div class="cursor__default">
    		<span class="cursor__default__inner"></span>
    	</div>
    	<div class="cursor__trace">
    		<span class="cursor__trace__inner"></span>
    	</div>
    </div>
	<script type="text/javascript" src="${contextPath}/resources/js/cursor.js"></script>
	
	
	
	
	
	
	<a id="backtotop" ></a>
	<script type="text/javascript" src="${contextPath}/resources/js/backtotop.js"></script>
	
	<script>
		$('.btn-mode').click(function(){
		    $('.profile').toggleClass('dark');
		})
		$('.btn-like').click(function(){
		    $(this).toggleClass('active')
		})
	</script>
	
	
	
</body>
</html>