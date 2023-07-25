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
<link rel="stylesheet" href="${contextPath}/resources/css/mountainDetail.css">
<style>
	.mountain_info,
	a,
	#namoowiki,
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e482edbfbe6fe2c270c178df868185c5"></script>
<script>

$(document).ready(function() {
	// ID를 이용하여 요소를 가져옴
	var kakaoMapClick = document.getElementById('KakaoMapClick');

	// display 속성을 'none'으로 설정하여 숨김
	kakaoMapClick.style.display = 'none';
	
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
	var iwContent = '<div style="padding:5px;">이미지 맵 클릭!</div>',  // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
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
	
	
	// 정적 이미지 지도
	
	var staticMapContainer  = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
	staticMapOption = { 
	    center: new kakao.maps.LatLng(y, x), // 이미지 지도의 중심좌표
	    level: 3 // 이미지 지도의 확대 레벨
	};

	//이미지 지도를 표시할 div와 옵션으로 이미지 지도를 생성합니다
	var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
	
	// id가 click인 div를 보이게 처리
    $("#KakaoMapClick").show();
}
</script>
</head>
<body>
	<%-- 헤더 컴포넌트 가져오기 --%>
	<%@ include file="/WEB-INF/views/header.jsp" %>

	<!-- 산 디테일 컨텐츠 -->
		<section class="main-container">
			<div class="detailMountain-container">
				<div class="mountain-container" id="mountainData"></div>	
			</div>
			
		<div class="map-container" style="text-align:center;">
			<div>
				<input type="text" readonly id="address"/>
				<button id="mapBtn">FIND</button>
			</div>
			
			<div class="mapImg-container"> 
				<!-- 산 지도를 표시할 div 입니다 -->
				<div id="map" style="width: 100%; height:350px;"></div>
			
				
				<div  class="map-image" style="padding-top:10px; display:flex; justify-content:center;">
				
					<!-- 산 이미지 지도를 표시할 div 입니다 -->
					<div id="KakaoMapClick">Kakao Map ▶</div>
					<div id="staticMap" style="width:600px;height:350px;"></div>
				</div>	
			</div>
		</div>
	
	
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
      var m_no = '<%= (String) request.getAttribute("m_no") %>';
      $.getJSON("${contextPath}/mountain.getMountainDetailJSON?m_no=" + m_no, function(data) {
    	  var mountainDataDiv = document.getElementById('mountainData');
    	  var html = '';
    	  
    	  data.mountain.forEach(function(mountain) {
    		  
    	    html += '<div class="detail-container">';
    	    if (mountain.m_photo) {
      	      html += '<div class="m_photo"><img src="' + mountain.m_photo + '" alt="' + mountain.m_name + '"></div>';
      	    }
    	    html += '<div class="mountain_info">';
    	    html += '<div class="m_name">' + mountain.m_name +'</div><br>';
    	    html += '<div> 높이: ' + mountain.m_height +'m</div>';
    	    html += '<div> 지역: ' + mountain.m_location +'</div>';
    	    html += '<div> 주소: ' + mountain.m_address +'</div>';
    	    html += '<div><a target="_blank" href="https://namu.wiki/w/'+ mountain.m_name +'"><img id="namoowiki" src="${contextPath}/resources/images/namoowiki.png"/></a></div>';
    	   
    	 // JavaScript를 이용하여 <input> 요소에 JSON에서 받은 m_address 값을 넣습니다.
            var addressInput = document.getElementById('address');
            addressInput.value = mountain.m_address;
    	    
    	    html += '</div>'; 
    	    html += '</div>';
    			    
    	  });
    	
    	 mountainDataDiv.innerHTML = html;
        });
    });
  </script>
</body>
</html>