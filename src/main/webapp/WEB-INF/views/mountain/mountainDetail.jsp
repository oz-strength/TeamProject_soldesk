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
<script src="https://kit.fontawesome.com/53303b24c1.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e482edbfbe6fe2c270c178df868185c5"></script>
<script>

$(document).ready(function() {
    $("#mapBtn").click(function(){
    	var address = $("#address").val();
    	if(address==''){
    		alert('주소를 입력하세요');
    		return false;
    	}
    	$.ajax({
    		url: "https://dapi.kakao.com/v2/local/search/address.json",
    		headers: {"Authorization" : "KakaoAK 81d9423e5ca3a071f4b7e8b39133820a"},
    		type: "get",
    		data : {"query": address},
    		dataType: "json",
    		success: mapView,
    		error: function() {alert("error");}
    		
    	});
        
    });
});

function mapView(data){
	var x = data.documents[0].x;
	var y = data.documents[0].y;
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(y, x), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(y, x); 

	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	
	// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
	var iwContent = '<div style="padding:5px;">Hello World!</div>',  // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
	    content : iwContent,
	    removable : iwRemoveable
	});

	// 마커에 클릭이벤트를 등록합니다
	kakao.maps.event.addListener(marker, 'click', function() {
	      // 마커 위에 인포윈도우를 표시합니다
	      infowindow.open(map, marker);  
	});
}

</script>
</head>
<body>
	<%-- 헤더 컴포넌트 가져오기 --%>
	<%@ include file="/WEB-INF/views/header.jsp" %>

	<h1>산 한개 디테일 페이지</h1>
	
	<div class="detailMountain-container">
		<div class="grid-container" id="mountainData"></div>	
		
		<div>
			<input type="text" placeholder="Search" id="address"/>
			<button id="mapBtn">FIND</button>
		</div>
		<!-- 지도를 표시할 div 입니다 -->
		<div id="map" style="width:100%;height:350px;"></div>
	</div>
	
	
		
	<a id="backtotop" ></a>
	<script type="text/javascript" src="${contextPath}/resources/js/backtotop.js"></script>
	
	
	<%-- footer 컴포넌트 가져오기 --%> 
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	
	<script>
    $(function() {
      var m_no = '<%= (String) request.getAttribute("m_no") %>';
      $.getJSON("${contextPath}/mountain.getMountainDetailJSON?m_no=" + m_no, function(data) {
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
        });
    });
  </script>
</body>
</html>