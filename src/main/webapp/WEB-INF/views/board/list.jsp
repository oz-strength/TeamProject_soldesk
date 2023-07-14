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
<link rel="stylesheet" href="${contextPath}/resources/css/list.css"> 
<script
  src="https://code.jquery.com/jquery-3.7.0.js"
  integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
  crossorigin="anonymous">
 </script>
<!-- <script type="text/javascript">
	$(document).ready(function(){
		$("#regBtn").click(function(){
			location.href="${contextPath}/board/register";
		});
		
		
	});
	function goMsg(){
		alert("삭제된 게시물입니다.");
	}
	
</script> -->
<script type="text/javascript">
$(document).ready(function () {
	  $.getJSON('getAllFreeBoardJSON', function (a) {
	    $.each(a.freeboard, function (i, e) {
	      let td1 = $('<td></td>').text(e.b_no);
	      let td2 = $('<td></td>').html(
	        "<a href='view?b_no=" + e.b_no + "'>" + e.b_title + '</a>'
	      );
	      let td3 = $('<td></td>').text(e.b_writer);
	      let td4 = $('<td></td>').text(e.b_indate);
	      let td5 = $('<td></td>').text(e.b_count);
	      let tr = $('<tr></tr>').append(td1, td2, td3, td4, td5);
	      $('#freeTBL').append(tr);
	
	    });
	  });
	});
</script>
</head>
<body>

	

	<table>
		<tr></tr>
	</table>

	<div class="board-container">
		<section class="board-search">
		<div class="homeLogo">
		<a href="${contextPath}/"><img src="${contextPath}/resources/images/mountainLogo.png" class="logo"></a>
		</div>
		
		
		
		
		<div class="search">
			<form action="${contextPath}/board/list" method="post">
				<div class="selectBox">
				<select name="type" class="select">
					<option value="writer" ${pageMaker.cri.type=='writer' ? 'selected' : '' }>이름</option>
					<option value="title" ${pageMaker.cri.type=='title' ? 'selected' : '' }>제목</option>
					<option value="content" ${pageMaker.cri.type=='content' ? 'selected' : '' }>내용</option>
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
		</section>
		
		<section class="board-table">
			<div class="boardTable">
				<table id="freeTBL" class="member">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>			
				</table>
				<div class="writerBtn">
					<a href='register' id="regBtn" class="write">글쓰기</a>
				</div>
			</div>
	
			
		
		</section>
	</div>
	
	<!-- <table id="freeTBL" style="border:1px solid #000;">
		<tr>
			
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>
	</table> -->
</body>
</html>