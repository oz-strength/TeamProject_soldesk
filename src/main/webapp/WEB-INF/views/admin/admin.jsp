<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>TeamProject</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/admin.css">
    <script src="https://kit.fontawesome.com/53303b24c1.js" crossorigin="anonymous"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<style>
   		
	.container {
	  display: grid;
	  grid-template-columns: 200px 1fr; /* 좌측 사이드바의 너비와 우측 콘텐트의 너비를 지정 */
	}
        /* 좌측 메뉴 스타일 */
        .sidebar {
            width: 200px;
            background-color: #333;
            color: #fff;
            padding-top: 20px;
        }

        .sidebar a {
            display: block;
            padding: 10px;
            color: #fff;
            text-decoration: none;
            border-bottom: 1px solid #555;
        }

        .sidebar a:hover {
            background-color: #444;
        }
        #nft,
        #users,
        #mountainList,
        #board{
        	display:none;
        }

        /* 우측 콘텐츠 스타일 */
        .content {
            flex: 1;
            padding: 20px;
        }

        h1 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

	<%-- 헤더 컴포넌트 가져오기 --%>
	<%@ include file="/WEB-INF/views/header.jsp" %>
	<div class="container">
    <div class="sidebar">
        <!-- 각 메뉴를 클릭하면 해당 섹션을 보이도록 onclick 이벤트 추가 -->
        <a href="#" onclick="toggleSection('nft')">nft사진 업로드</a>
        <a href="#" onclick="toggleSection('users')">사용자 관리</a>
        <a href="#" onclick="toggleSection('mountainList')">산 리스트 관리</a>
        <a href="#" onclick="toggleSection('board')">게시판 관리</a>
    </div>
    <div class="content">
        <!-- 기본적으로 보여질 섹션 (예: 대시보드) -->
        <section id="nft">
            <h2>nft</h2>
            <p>nft 내용을 여기에 표시합니다.</p>
        </section>
        <section id="users">
            <h2>사용자 관리</h2>
            <p>사용자 관리 내용을 여기에 표시합니다.</p>
        </section>
        <section id="mountainList">
            <h2>산 리스트 관리</h2>
            <p>산 리스트 관리 내용을 여기에 표시합니다.</p>
        </section>
        <section id="board">
            <h2>게시판 관리</h2>
            <p>게시판 관리 내용을 여기에 표시합니다.</p>
        </section>
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
	
	
	
   <script>
   function toggleSection(sectionId, url) {
       var section = document.getElementById(sectionId);
       if (section.style.display === "none") {
           // AJAX 요청을 보내서 데이터를 받아옵니다.
           if (sectionId === 'board') {
               $.ajax({
                   url: url, // 서버 요청 URL
                   type: "GET",
                   dataType: "html",
                   success: function(data) {
                       // 서버로부터 받은 데이터를 섹션에 적용합니다.
                       section.innerHTML = data;
                       section.style.display = "block"; // 섹션을 보이도록 설정합니다.
                   },
                   error: function(xhr, status, error) {
                       console.error(error);
                   }
               });
           } else {
               section.style.display = "block"; // 섹션을 보이도록 설정합니다.
           }
       } else {
           section.style.display = "none"; // 섹션을 숨기도록 설정합니다.
       }
   }
    </script>
	<script type="text/javascript">
	 // 초기 로딩 시 대시보드 섹션만 보이도록 설정
    document.getElementById('nft').style.display = 'block';
    
    // 섹션을 토글하는 함수
    function toggleSection(sectionId) {
        // 모든 섹션 숨기기
        var sections = document.getElementsByTagName('section');
        for (var i = 0; i < sections.length; i++) {
            sections[i].style.display = 'none';
        }
        
        // 클릭한 섹션만 보이도록 설정
        document.getElementById(sectionId).style.display = 'block';
    }
	</script>
		
	
	
	<a id="backtotop" ></a>
	<script type="text/javascript" src="${contextPath}/resources/js/backtotop.js"></script>
	
	
	<%-- footer 컴포넌트 가져오기 --%> 
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	
</body>
</html>