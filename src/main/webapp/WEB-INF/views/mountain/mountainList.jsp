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
<link rel="stylesheet" href="${contextPath}/resources/css/mountainList.css">
<style>
	.grid-item,
	.sns a,
	.policy a,
	.button-in-header,
	.button-in-header a,
	.btn-explore,
	.logo-footer a,
	#mapBtn{
	cursor: url(${contextPath}/resources/images/mouse-pointer.png), auto;}
</style>
<script src="https://kit.fontawesome.com/53303b24c1.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<%-- 헤더 컴포넌트 가져오기 --%>
	<%@ include file="/WEB-INF/views/header.jsp" %>


	<section class="main-container"> 
		<div id="location"></div>
		
		<div class="grid-container" id="mountainData"></div>	
		
		
	
	
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
		
		
		<%-- footer 컴포넌트 가져오기 --%> 
		<%@ include file="/WEB-INF/views/footer.jsp" %>
	</section>
	<script>
    $(function() {
      var m_loc = '<%= (String) request.getAttribute("m_loc") %>';
      $.getJSON("${contextPath}/mountain.getLocalMountainJSON?m_location=" + m_loc, function(data) {
    	  var mountainDataDiv = document.getElementById('mountainData');
    	  var html = '';
    	  
    	  data.mountain.forEach(function(mountain) {
    		  var m_no = mountain.m_no;
    		html += '<div class="grid-item" data-m_no="' + mountain.m_no + '">';
    	    html += '<ul>';
    	    html += '<li>';
    	    html += 'Mountain No: ' + mountain.m_no + '</a><br>';
    	    html += 'Name: ' + mountain.m_name + '<br>';
    	    html += 'Height: ' + mountain.m_height + 'm<br>';
    	    html += 'Location: ' + mountain.m_location + '<br>';
    	    html += 'Address: ' + mountain.m_address + '<br>';
    	    
    	 	// JavaScript를 이용하여 <input> 요소에 JSON에서 받은 m_address 값을 넣습니다.
            var location = document.getElementById('location');
            location.innerHTML = mountain.m_location;
    	    
    	    html += '</li>';
    	    html += '</ul>';
    	    html += '</div>';
    	    
    	  });
    	  
    	  mountainDataDiv.innerHTML = html; 
    	  // 모든 .grid-item 요소에 클릭 이벤트를 추가합니다.
    	  document.querySelectorAll(".grid-item").forEach(function(item) {
    	    item.addEventListener("click", function() {
    	      var m_no = item.getAttribute("data-m_no");
    	      location.href = "${contextPath}/mountain/detail?m_no=" + m_no;
    	    });
    	  });
        });
    });
  </script>
</body>
</html>