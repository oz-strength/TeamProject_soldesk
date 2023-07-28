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
		var imgPath = '<c:url value="resources/images/nft/" />';
		$.getJSON("nft.Detail.getJSON?n_no=" + n_no, function(n) {
			let nft_title = $("<h1></h1>").append(n.n_name);
			let nft_img = $("<img id='nftImg' src='" + imgPath + n.n_img + "' />");
			let nft_master = $("<h1></h1>").append("Master : " + n.n_master);
			
			$("#nft_div").append(nft_img);
			$("#nft_div").append(nft_title);
			$("#nft_div").append(nft_master);
			
			$("#auctionBtn").click(function() {
				// 수정하기 (실패 !)
			      $.ajax({
			          url: "/nft.swap", // Spring 컨트롤러로 요청 보낼 URL
			          method: "GET",
			          data: { 
			        	  n_no : n.n_no,
			        	  n_hash : n.n_hash,
			        	  n_master : n.n_master,
			        	  n_status : n.n_status,
			        	  n_name : n.n_name,
			        	  },
			          success: function(data) {
			            // 요청 성공 시 node.js 서버로 이동
			            window.location.href = "http://localhost:3000/nft.get";
			          },
			          error: function(xhr, status, error) {
			            console.error(error);
			          }
			        });
			});
		});
	});
</script>
</head>
<body>
	<h1>NFT Detail Page !!</h1>
	<div id="nft_div"></div>
	<c:if test="${sessionScope.user.u_admin == 1 }">
		<button id="auctionBtn">경매장 올리기</button>
	</c:if>
</body>
</html>