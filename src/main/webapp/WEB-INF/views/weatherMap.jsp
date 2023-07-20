<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
	$(function() {
		$.getJSON("weatherMap.getJSON", function(wi) {
			let f_when = new Date(wi.weatherItem[0].w_fcstDate);
			let f_w_fcstDate = formatDate(f_when);
			let fcstDate = f_w_fcstDate.substring(11, 17);
			// alert(fcstDate + "시 기준");
			let fcstTime = fcstDate + "시 기준";
			$(".baseTime").append(fcstTime);
			$.each(wi.weatherItem, function(i, w) {
/* 				alert("지역 : " + w.w_loc);
				alert("현재온도 : " + w.w_tmp);
				alert("습도 : " + w.w_reh);
				alert("하늘상태 : " + formatSky(w.w_sky)); */
				let w_loc = $("<h1></h1>").append("지역 : " + w.w_loc.toUpperCase());
				let w_tmp = $("<h3></h3>").append("온도 : " + w.w_tmp + "℃");
				let w_reh = $("<h3></h3>").append("습도 : " + w.w_reh + "%");
				let w_pop = $("<h3></h3>").append("강수확률 : " + w.w_pop + "%");
				let w_sky = $("<h3></h3>").append("하늘상태 : " + formatSky(w.w_sky));
				let w_sky_img = $("<img src='resources/img/" + w.w_sky + ".gif>");
				let hr = $("<hr>");
				let w_sky_div = $("<div></div>").append(w_loc, w_tmp, w_reh, w_pop, w_sky, w_sky_img, hr);
				
				$(".icon_test").append(w_sky_div);
			});
		});
	});
	
	function formatDate(when) {
	    let year = when.getFullYear();
	    let month = ("0" + (when.getMonth() + 1)).slice(-2);
	    let day = ("0" + when.getDate()).slice(-2);
	    let hours = ("0" + when.getHours()).slice(-2);
	    let minutes = ("0" + when.getMinutes()).slice(-2);
	    
	    return year + "/" + month + "/" + day + " " + hours + ":" + minutes;
	}
	
	function formatSky(sky) {
		switch (sky) {
		case 1:
			return "맑음";
			break;
		case 3:
			return "흐림";
		case 4:
			return "비";
		default:
			return "알수없음";
			break;
		}
	}
</script>
</head>
<body>
	<div class="baseTime"></div>
	<div class="icon_test"></div>
</body>
</html>