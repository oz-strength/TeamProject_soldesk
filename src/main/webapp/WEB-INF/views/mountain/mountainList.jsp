<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	  $.ajax({
	    url: '${contextPath}/mountain.getAllMountainJSON', // Replace this with the actual URL of your JSON data source
	    type: 'GET',
	    dataType: 'json',
	    success: function(data) {
	      displayMountainData(data);
	    },
	    error: function() {
	      alert('Failed to fetch mountain data.');
	    }
	  });
	});

	function displayMountainData(data) {
	  var mountainDataDiv = document.getElementById('mountainData');
	  var html = '';
	  
	  data.mountain.forEach(function(mountain) {
		  
	    html += '<div class="grid-item">';
	    html += '<ul>';
	    html += '<li>';
	    html += 'Mountain No: ' + mountain.m_no + '<br>';
	    html += 'Name: ' + mountain.m_name + '<br>';
	    html += 'Height: ' + mountain.m_height + 'm<br>';
	    html += 'Location: ' + mountain.m_location + '<br>';
	    html += 'Address: ' + mountain.m_address + '<br>';
	    
	    if (mountain.m_photo) {
	      html += '<img src="' + mountain.m_photo + '" alt="' + mountain.m_name + '">';
	    }
	    
	    html += '</li>';
	    html += '</ul>';
	    html += '</div>';
			    
	  });
	  
	 mountainDataDiv.innerHTML = html;
	}
</script>
</head>
<body>
	<%-- 헤더 컴포넌트 가져오기 --%>
	<%@ include file="/WEB-INF/views/header.jsp" %>


	
	
	<div class="grid-container" id="mountainData"></div>	
	
	
	
	
		
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
	
	<%-- footer 컴포넌트 가져오기 --%> 
	<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>