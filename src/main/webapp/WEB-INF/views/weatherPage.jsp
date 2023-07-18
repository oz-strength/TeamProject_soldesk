<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript">
	$(function() {
		// w_loc : 지역 이름
		var w_loc = '<%= (String) request.getAttribute("w_loc") %>';
			$.getJSON("weatherPage.getJSON?w_loc=" + w_loc, function(wi) {
				let w_loc_h = $("<h1></h1>").append(w_loc);		
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
					// $(".weather_content_fcstDate").append(w_fcstDate);
					
					let w_tmp = $("<div></div>").text("Temperature: " + w.w_tmp + "°C");
					// $(".weather").append(w_tmp);
					
					let w_reh = $("<div></div>").text("Humidity: " + w.w_reh + "%");
					// $(".weather").append(w_reh);
					
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
		            datasets: [{
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
		            }]
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
</head>
<body>
	<div class="weather_div">
		<div class="weather_title">
			<div class="weather_title_h"></div>
			<div class="weather_title_baseDate"></div>
		</div>
		<div class="weather_content">
			<div class="weather_content_fcstDate"></div>
		</div>
	</div>
	<div class="weather"></div>
	<canvas id="weatherChart" width="400" height="200"></canvas>
</body>
</html>