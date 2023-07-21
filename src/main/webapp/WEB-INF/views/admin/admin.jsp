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
   	/* 그리드 */
	.container {
	
	  display: grid;
	  grid-template-columns: 200px 1fr; /* 좌측 사이드바의 너비와 우측 콘텐트의 너비를 지정 */
	}
	.grid-container {
	  display: grid;
	  grid-template-columns: repeat(4, 1fr); /* 4 columns with equal width */
	  gap: 20px; 
	  padding: 50px;
	}
	.grid-item {
	  border: 1px solid #ccc;
	  padding: 10px;
	  text-align: center;
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
        <a href="#" onclick="toggleSection('users','${contextPath}/user/getAllUserJSON')">사용자 관리</a>
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

            <table id="userList">
            	<tr>
            		<th>Email</th>
            		<th>Password</th>
            		<th>Name</th>
            		<th>Birth</th>
            		<th>Gender</th>
            		<th>Delete</th>
            	</tr>
            </table>
            
        </section>
        
        <section id="mountainList">
            <h2>산 리스트 관리</h2>
            <p>산 리스트 관리 내용을 여기에 표시합니다.</p>
            
			<div class="grid-container" id="mountainData"></div>
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
	
	
							<!-- 유저정보 불러오기 -->
   <script>
  
   
    $(function() {
       $.getJSON("${contextPath}/user/getAllUserJSON?", function(data) {
           var userDataTable = document.getElementById('userList');

           data.user.forEach(function(user) {
               var row = document.createElement('tr');

               row.innerHTML += '<td>' + user.u_email + '</td>';
               row.innerHTML += '<td>' + user.u_pw + '</td>';
               row.innerHTML += '<td>' + user.u_name + '</td>';
               row.innerHTML += '<td>' + user.u_birth.split(' ')[0] + '</td>';
               row.innerHTML += '<td>' + user.u_gender + '</td>';
               row.innerHTML += '<td><a href="${contextPath}/admin/admin.deleteUser?u_email=' + user.u_email + '">삭제하기</a></td>'; 

               userDataTable.appendChild(row);
           });
       });
   }); 
    
    $(function() {
        $.getJSON("${contextPath}/mountain.getAllMountainJSON?", function(data) {
      	  var mountainDataDiv = document.getElementById('mountainData');
      	  var html = '';
      	  
      	  data.mountain.forEach(function(mountain) {
      		  var m_no = mountain.m_no;
      	    html += '<div class="grid-item">';
      	    html += '<ul>';
      	    html += '<li>';
      	    html += '<a href="${contextPath}/mountain/detail?m_no='+m_no+'">' + 'Mountain No: ' + mountain.m_no + '</a><br>';
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
    
    
	 // 초기 로딩 시 nft 섹션만 보이도록 설정
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
							<!-- 산 정보 불러오기 -->
	<script>
    
  </script>
	
	
	<a id="backtotop" ></a>
	<script type="text/javascript" src="${contextPath}/resources/js/backtotop.js"></script>
	
	
	<%-- footer 컴포넌트 가져오기 --%> 
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	
</body>
</html>