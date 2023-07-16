<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>TeamProject</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/temp.css">
    <script src="https://kit.fontawesome.com/53303b24c1.js" crossorigin="anonymous"></script>
	
</head>
<body>
	
	<div style="padding:100px 0;">
		 <h1>업로드 완료!</h1>
		 <h1>업로드 완료!</h1>
		 <h1>업로드 완료!</h1>
		 <h1>업로드 완료!</h1>
		 
  <label for="">아이디:</label>
  <input type="text" name="id" id="" value='${map.id}' readonly><br>
  <label for="">이름:</label>
  <input type="text" name='name' value='${map.name}' readonly><br>

  <div class="result-images">
    <c:forEach var='imageFileName' items='${map.fileList}'>
      <img src="${contextPath}/download?imageFileName=${imageFileName}">
      <br><br>
    </c:forEach>
  </div>
	</div>
	
	<a href="${contextPath }/upload">게시판 적용 확인하러 가기</a>
	
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