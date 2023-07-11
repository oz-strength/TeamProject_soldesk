<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<c:set var="loginOutLink" value="${sessionScope.id==null ? '/login/login' : '/login/logout' }"/>
<c:set var="loginOut" value="${sessionScope.id==null ? '로그인' : '로그아웃' }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>TeamProject</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/list.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>    
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/modal.js"></script>
  	<script type="text/javascript">
  	$(document).ready(function(){
  		
  		if(${!empty msg}){
	  		$('.modal, .overlay').addClass('active');
	  		$('.btn-close, .overlay').click(function(){
	     	$('.modal, .overlay').removeClass('active');
	    });
	  	}
  		
  	// 페이지 번호 클릭시 이동하기
  		var pageFrm=$("#pageFrm");
  		$(".paginate_button a").on("click", function(e){
  			e.preventDefault(); // a 태그의 기능을 막는 부분
  			var page=$(this).attr("href"); // 페이지 번호
  			pageFrm.find("#page").val(page);
  			pageFrm.submit();
  		});
  		
  		// 상세보기 클릭시 이동하기
  		$(".move").on("click", function(e){
  			e.preventDefault(); // a 태그의 기능을 막는 부분
  			var idx = $(this).attr("href");
  			var tag = "<input type='hidden' name='idx' value='"+idx+"'/>";
  			pageFrm.append(tag); 
  			pageFrm.attr("action","${contextPath}/board/content");
  			pageFrm.attr("method","get");
  			pageFrm.submit();
  		});
  		
  		// 스크롤 내려갈 때 메뉴 고정
  		var header = $("header");
  		$(window).scroll(function(){
  			if($(this).scrollTop() > 0){
  				header.addClass('sticky');
  			}else{
  				header.removeClass('sticky');
  			}
  		});
  		
  	 });
  	
	
  	</script>
  	
</head>
<body>
<header>
		<div class="container">
            <div class="inner">
                <div class="head-container">
                    <div><a class="head-home" href="${contextPath}/"><img class="logo" src="${contextPath}/resources/images/mountain-solid.svg" alt="team logo" /></a></div>
                    <div><a class="head-board" href="list">동호회</a></div>
                    <div><a href="#">등산로 추천</a></div>
                    <div><a href="#">문의사항</a></div>
                    <div><a href=""><i class="fas fa-search small"></i></a></div>
                    <div>
                  		<a class="head-login" href="<c:url value='${loginOutLink }'/>">${loginOut }</a>
                        <a class="head-signup" href="<c:url value='register/add'/>">회원가입</a>
                    </div>
                </div>
            </div>
		</div>
</header>
<section>
<div class="boardlist">
	<div>
		<table>
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
			<c:forEach var="vo" items="${list }">
			<tr>
				<td>${vo.idx }</td>
				<td><a class="move" id=${vo.idx } href="${vo.idx }">${vo.title }</a></td>
				<td>${vo.writer }</td>
				<td>${vo.indate }</td>
				<td>${vo.view_cnt}</td>
			</tr>
			</c:forEach>
		</table>
		<a href="write">글쓰기</a>
	</div>

	<br>
	<h1>시작페이지 : ${pageMaker.startPage }</h1>
	<h1>끝페이지 : ${pageMaker.endPage }</h1>
	<!-- 페이징 시작-->
	<div class="pagenumber">
		<div>
			<ul>
		<!-- 이전 처리 -->
				<c:if test="${pageMaker.prev}">
					<li class="paginate_button">
						<a href="${pageMaker.startPage-1}">◀</a>
					</li>
				</c:if>
		<!-- 페이지번호 처리 -->
				<c:forEach var="pageNum" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					<li class="paginate_button"><a href="${pageNum}">${pageNum}</a></li>
				</c:forEach>
		<!-- 다음 처리 -->
				<c:if test="${pageMaker.next}">
					<li class="paginate_button">
						<a href="${pageMaker.endPage+1}">▶</a>
					</li>
				</c:if>
			</ul>
		</div>
	</div>
	<!-- 페이징 끝 -->
	
	<form id="pageFrm" action="${contextPath}/board/list" method="post">
	<!-- 게시물 번호(idx)추가 -->
	<input type="hidden" id="page" name="page" value="${pageMaker.cri.page}"/>		
	<input type="hidden" name="perPageNum" value="${pageMaker.cri.perPageNum}"/>	
	<input type="hidden" name="type" value="${pageMaker.cri.type}"/>		
	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}"/>		
</form>
</div>

</section>
<footer>
</footer>

	<a id="backtotop" ></a>
	<script type="text/javascript" src="${contextPath}/resources/js/list.js"></script>
	
	<script>
		$('.btn-mode').click(function(){
		    $('.profile').toggleClass('dark');
		})
		$('.btn-like').click(function(){
		    $(this).toggleClass('active')
		})
	</script>


<!-- The Modal -->
<div class="modal">
	<div class="modal-content">
		<div class="desc">
			<div class="desc-header">
				<button class="btn-close">&times;</button>
			</div>
			
			<div class="desc-content">
				<div class="msg">${msg}</div>
			</div>
		</div>
	</div>
</div>
<div class="overlay"></div>


</body>
</html>









