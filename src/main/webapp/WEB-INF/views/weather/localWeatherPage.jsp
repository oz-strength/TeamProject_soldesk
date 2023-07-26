<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/css/localWeatherPage.css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript">
/* $(document).ready(function() {
	var w_loc = $('#w_loc').val();
	
	  $.ajax({
	    url: '${contextPath}/weatherMap.getJSON',  
	    type: 'GET',
	    dataType: 'json',
	    data: {
	        parameter: w_loc,
	      },
	    success: function(data) {
	      displayWeatherData(data);
	    },
	    error: function() {
	      alert('Failed to fetch statistics.');
	    }
	  });
	});
} */
</script>
<style>
#backIcon,
	div {
cursor: url(${contextPath}/resources/images/mouse-pointer.png), auto;}
	</style>
</head>
<body>
<header class="header">
	<a href="${contextPath}/weather/weatherPage"><i id="backIcon" class="xi-angle-left"></i></a>
	<div class="weather_title_baseDate"></div>
  	<div class="weather_title_h"></div>
</header>
<section class="weather-section">
	
  <div class="weather_content_fcstDate"></div>
  <div class="weather"></div>
  <canvas id="weatherChart" width="400" height="200"></canvas>

</section>


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
	
  <script>
    $(function() {
      var w_loc = '<%= (String) request.getAttribute("w_loc") %>';
      $.getJSON("${contextPath}/weatherPage.getJSON?w_loc=" + w_loc, function(wi) {
        let w_loc_h = $("<h1></h1>").append(w_loc.toUpperCase());
        let b_when = new Date(wi.weatherItem[0].w_baseDate);
        let w_baseDate = formatDateEx(b_when);
        let w_baseDate_div = $("<div></div>").append(w_baseDate + " 기준");
        $(".weather_title_baseDate").append(w_baseDate_div);
        $(".weather_title_h").append(w_loc_h);

        // 밑에 그래프에서 사용할 배열
        let forecastDates = [];
        let temperatures = [];
        let humidities = [];

        $.each(wi.weatherItem, function(i, w) {
          // 값 정리
          // w.w_tmp : 현재온도
          // w.w_reh : 습도
          // w.w_pop : 강수확률
          // w.w_vec : 풍향
          // w.w_wsd : 풍속
          // w.w_sky : 하늘 상태(1, 3, 4)
          // 1 : 맑음
          // 3 : 흐림
          // 4 : 비
          let f_when = new Date(w.w_fcstDate);
          let f_w_fcstDate = formatDateEx(f_when);
          let w_fcstDate = $("<div></div>").append(f_w_fcstDate);

          let w_tmp = $("<div></div>").text("Temperature: " + w.w_tmp + "°C");
          let w_reh = $("<div></div>").text("Humidity: " + w.w_reh + "%");

          // Adding data to the arrays for the chart
          forecastDates.push(f_w_fcstDate);
          temperatures.push(w.w_tmp);
          humidities.push(w.w_reh);
        });

        var ctx = document.getElementById('weatherChart').getContext('2d');
        var weatherChart = new Chart(ctx, {
          type: 'line',
          data: {
            labels: forecastDates,
            datasets: [
              {
                label: 'Temperature (°C)',
                data: temperatures,
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
              },
              {
                label: 'Humidity',
                data: humidities,
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1
              }
            ]
          },
          options: {
            scales: {
              y: {
                beginAtZero: true
              }
            }
          }
        });
      });

      $(".weather_content_fcstDate").empty();
      $(".weather").empty();

      function formatDateEx(when) {
        let year = when.getFullYear();
        let month = ("0" + (when.getMonth() + 1)).slice(-2);
        let day = ("0" + when.getDate()).slice(-2);
        let hours = ("0" + when.getHours()).slice(-2);
        let minutes = ("0" + when.getMinutes()).slice(-2);

        return year + "/" + month + "/" + day + " " + hours + ":" + minutes;
      }
    });
  </script>
</body>
</html>