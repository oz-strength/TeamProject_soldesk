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
	
</head>
<body>

<div class="main-container">

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
  	/* 유저정보 가져오기  */
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
               row.innerHTML += '<td><button onclick="deleteUser(\'' + user.u_email + '\')">삭제하기</button></td>';

               userDataTable.appendChild(row);
           });
       });
   }); 
  	
  	/* 유저정보 삭제하기  */
    function deleteUser(u_email) {
  		console.log(u_email);
        $.ajax({
            type: "POST",
            url: "${contextPath}/admin/admin.deleteUser",
            data: { u_email: u_email },
            success: function() {
            	

                 // 사용자 삭제 후 페이지를 다시 로드합니다.
                 location.reload();
            },
            error: function(xhr, textStatus, errorThrown) {
            	 console.log("Error:", xhr, textStatus, errorThrown); // 에러 정보 확인
            	 // 삭제 요청이 실패한 경우 에러 처리를 합니다.
                if (xhr.status === 404) {
                    alert('서버에 요청한 페이지를 찾을 수 없습니다. 관리자에게 문의하세요.');
                } else if (xhr.status === 500) {
                    alert('서버에 오류가 발생했습니다. 잠시 후 다시 시도해주세요.');
                } else {
                    alert('삭제 요청이 실패했습니다. 다시 시도해주세요.');
                }
            }
        });
    }
	
  	/* 산 정보 가져오기 */
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
      	    html += '<div style="border-top:1px solid #eee; padding-top:10px;">';
      	    
      	    html += '<a href="#">수정하기</a>';
      	    
      	    html += '</div>';
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
							
	
	
	
	<a id="backtotop" ></a>
	<script type="text/javascript" src="${contextPath}/resources/js/backtotop.js"></script>
	
	
	<%-- footer 컴포넌트 가져오기 --%> 
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	
</body>
</html>