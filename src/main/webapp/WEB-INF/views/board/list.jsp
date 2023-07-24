<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/css/list.css?d">
<style>
a,
li,
input,
select,
.paginate_button,
.btn,
.sns a,
.policy a,
.button-in-header,
.button-in-header a,
.btn-explore {
cursor: url(${contextPath}/resources/images/mouse-pointer.png), auto;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var r = '<%= request.getAttribute("r") %>';
		if (r !== "null") {
		  alert(r);
		}
		
		$("#regBtn").click(function(){
			location.href="${contextPath}/board/register";
		});
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
			var b_no = $(this).attr("href");
			var tag = "<input type='hidden' name='b_no' value='"+b_no+"'/>";
			pageFrm.append(tag);
			pageFrm.attr("action","${contextPath}/board/get");
			pageFrm.attr("method","get");
			pageFrm.submit();
		});
		
		
	});
	function goMsg(){
		alert("삭제된 게시물입니다.");
	}
	
</script>
</head>
<body>
									<!-- 홈 로고 -->
	<div class="homeLogo">
	<a href="${contextPath}/"><img src="${contextPath}/resources/images/mountainLogo.png" class="logo"></a>
	</div>

									<!-- 게시판 검색창 -->
	<div class="search">
	<form action="${contextPath}/board/free" method="post">
		<div class="selectBox">
		<select name="type" class="select">
			<option value="b_writer" ${pageMaker.cri.type=='b_writer' ? 'selected' : '' }>이름</option>
			<option value="b_title" ${pageMaker.cri.type=='b_title' ? 'selected' : '' }>제목</option>
			<option value="b_content" ${pageMaker.cri.type=='b_content' ? 'selected' : '' }>내용</option>
		</select>
		 <span class="icoArrow"><img src="https://freepikpsd.com/media/2019/10/down-arrow-icon-png-7-Transparent-Images.png" alt=""></span>
		 </div>
		<div class="searchBar">
			<input class="input" type="text" name="keyword" value="${pageMaker.cri.keyword}">
		</div>
		<div class="searchBtn">
		<button class="btn">Search</button>		
		</div>
	</form>
	</div>
	
									<!-- 게시판 테이블 -->
	<div class="boardTable">
	<table class="member">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		<c:forEach var="list" items="${list}">
			<tr>
				<td>${list.b_no}</td>
				<td>
					<c:if test="${list.boardLevel>0}">
						<c:forEach begin="1" end="${list.boardLevel}">
							<span style="padding-left:15px"></span>
						</c:forEach>
					</c:if>
					<c:if test="${list.boardLevel>0}">
						<c:if test="${list.boardAvailable==1}">
							<a class="move" href="${list.b_no}"><c:out value='[RE]${list.b_title}'/></a>
						</c:if>
						<c:if test="${list.boardAvailable==0}">
							<a href="javascript:goMsg()">[RE]삭제된 게시물입니다.</a>
						</c:if>
						
					</c:if>
					<c:if test="${list.boardLevel==0}">
						<c:if test="${list.boardAvailable==1}">
							<a class="move" href="${list.b_no}"><c:out value='${list.b_title}'/></a>
						</c:if>
						<c:if test="${list.boardAvailable==0}">
							<a href="javascript:goMsg()">삭제된 게시물입니다.</a>
						</c:if>
					</c:if>
				</td>
				
				<td>${list.b_writer}</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.b_indate}"/> </td>
				<td>${list.b_count}</td>
			</tr>
		</c:forEach>
		
								<!-- 로그인 상태에만 글쓰기 가능 -->
		<c:if test="${!empty user}">
		<tr>
			<td colspan="5">
				<button id="regBtn" class="write">글쓰기</button>
			</td>
		</tr>
		</c:if>
		
	</table>
	</div>
	
										<!-- 페이징 시작-->
	<div class="page">
		<ul class="pagination modal">
	<!-- 이전 처리 -->
			<c:if test="${pageMaker.prev}">
				<li class="paginate_button">
					<a class="arrow left" href="${pageMaker.startPage-1}">◀</a>
				</li>
			</c:if>
	<!-- 페이지번호 처리 -->
			<c:forEach var="pageNum" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				<li class=" paginate_button ${pageMaker.cri.page == pageNum ? 'active' : ''}"><a class="${pageMaker.cri.page == pageNum ? 'active' : ''} num" href="${pageNum}">${pageNum}</a></li>
			</c:forEach>
	<!-- 다음 처리 -->
			<c:if test="${pageMaker.next}">
				<li class="paginate_button">
					<a class="arrow right" href="${pageMaker.endPage+1}">▶</a>
				</li>
			</c:if>
		</ul>
	</div>
	<!-- 페이징 끝 -->
	<form id="pageFrm" action="${contextPath}/board/free" method="post">
		<!-- 게시물 번호(b_no)추가 -->
		<input type="hidden" id="page" name="page" value="${pageMaker.cri.page}"/>		
		<input type="hidden" name="perPageNum" value="${pageMaker.cri.perPageNum}"/>		
		<input type="hidden" name="type" value="${pageMaker.cri.type}"/>		
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}"/>		
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
	<script type="text/javascript" src="${contextPath}/resources/js/cursor.js"></script>
	
</body>
</html>