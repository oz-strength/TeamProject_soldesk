<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("newLineChar", "\n"); %> <!-- 현재 페이지(pageContext)에서 \n 을 newLineChar 변수에 저장 -->
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>TeamProject</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/view.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script
	  src="https://code.jquery.com/jquery-3.7.0.js"
	  integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	  crossorigin="anonymous">
	 </script>
    <script type="text/javascript">
    $(document).ready(function () {
    	  const urlParams = new URLSearchParams(window.location.search);
    	  const b_no = urlParams.get('b_no');

    	  $.getJSON("getFreeBoardDetailJSON?b_no=" + b_no , function (data) {
    	    let td1 = $('<td></td>').text(data.freeboard[0].b_title);
    	    

    	    let td2 = $('<td></td>').text(data.freeboard[0].b_writer);
   
    	    let td3 = $('<td></td>').text(data.freeboard[0].b_indate);
    	    
    	    let td4 = $('<td></td>').text(data.freeboard[0].b_detail);
    	    let tr = $('<tr></tr>').append(td1, td2, td3, td4);
  	      	$('#detailTBL').append(tr);

    	  });
    	});
	</script>
    <script type="text/javascript">
		$(document).ready(function(){
			$("button").on("click", function(e){
				var formData = $("#frm");
				var btn=$(this).data("btn"); // data-btn=""
				if(btn=='delete'){
					formData.attr("action", "${contextPath}/board/delete");
				}else if (btn=='modify'){
					formData.attr("action", "${contextPath}/board/updateForm");
				}else if(btn=='list'){
					formData.find("#idx").remove();
					formData.attr("action", "${contextPath}/board/list");
				}
				formData.submit();
			});
		});
	</script>
</head>
<body>

	
		<section class="board-table">
			<div class="boardTable">
				<table id="detailTBL" class="member" style="border: 1px solid #000;">
						<tr>
							<th class="">제목</th>
							<th class="">작성자</th>
							<th>작성일</th>
							<th>내용</th>
						</tr>	
				</table>
				<div>
					<span>
						<button id="modifyBtn" class="modify">수정하기</button>
					</span>
					<span>
						<button id="deleteBtn" class="delete">삭제하기</button>
					</span>
					<span>
						<button id="deleteBtn" class="delete">목록으로</button>
					</span>
				</div>
			</div>
		</section>
	

</body>
</html>
