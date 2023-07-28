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
  /* 테이블 보더 스타일 설정 */
  table.grid-item {
    border-collapse: collapse; /* 인접한 셀의 보더를 합칩니다. */
    width: 100%;
  }

  table.grid-item th, table.grid-item td {
    border: 1px solid #000; /* 보더 두께와 스타일 설정 */
    padding: 8px; /* 셀의 내용과 보더 사이의 여백 설정 */
  }
</style>
<script type="text/javascript">
$(document).ready(function() {
	  $('#fileInput').change(function() {
	    var fileCount = this.files.length;
	    $('#fileCount').text('선택된 파일: ' + fileCount + '개');
	  });
	});

	$(function() {
	    // "산 추가하기" 버튼 클릭 이벤트
	    $('.addMountainBtn').click(function(event) {
	        event.preventDefault(); // 기본 동작 방지 (a 태그의 링크 이동 방지)
	        $('.addMountainForm').toggleClass('show'); // show 클래스 토글
	    });
	});

	$(function() {
		
		$("#n_no_chk").click(function() {
			$.getJSON("nft.Count.getJSON", function(n_no) {
				alert(n_no + 1 + ".png 값부터 순서대로 넣어주세요 ~");
			});
		});
	});
	
	
</script>
<style>
	.addMountainForm {
    display: none; /* 초기에는 폼을 숨김 */
	}

	.addMountainForm.show {
	    display: block; /* show 클래스가 적용되면 폼을 보여줌 */
	}
    /* 공통 버튼 스타일 */
    .addMountainBtn{
        display: inline-block;
        padding: 10px 20px;
        background-color: #007BFF; /* 원하는 배경색을 지정하세요 */
        color: #fff; /* 버튼 글자 색상 */
        text-decoration: none;
        border: none;
        border-radius: 5px; /* 버튼 둥글기 조정 */
        cursor: pointer;
    }

    /* 버튼에 호버 효과 주기 */
    .addMountainBtn:hover {
        background-color: #0056b3; /* 호버 시 배경색 변경 */
    }
</style>
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
	        <div class="nft-header">NFT Image 등록하기</div>
	        <div class="nft-main-container">
		        <div class="nft-reg-form">
					<form action="nft.regist" method="post" enctype="multipart/form-data">
						<input type="hidden" name="n_name" value="hashValue">
						
						<input type="hidden" name="n_master" value="admin">
						
						<div class="custom-file-upload">
							<label for="fileInput" class="button button--wapasha button--round-s">NFT UPLOAD</label>
							<input id="fileInput"  type="file" name="n_files" multiple="multiple" >
						</div>
						<div id="fileCount"></div>
						
						<div>
							<input id="customRegBtn" type="submit" value="등록" class="regBtn" >
						</div>
					</form>
				</div>
				<div class="check-value">
					<hr>
						<button id="n_no_chk">값 확인하기</button>
					<hr>
		       </div>
	       </div>
	       
	        </section>
	        <section id="users">
	            <h2>사용자 관리</h2>
	            <div class="user-container">
		            <table id="userList" class="board-table">
		            	<tr>
		            		<th>Email</th>
		            		<th>Password</th>
		            		<th>Name</th>
		            		<th>Birth</th>
		            		<th>Gender</th>
		            		<th>Delete</th>
		            	</tr>
		            </table>
		        </div>
	        </section>
	        
	        <section id="mountainList">
	            <h2>산 리스트 관리</h2>
	            <div>
	            	<a class="addMountainBtn" >산 추가하기</a>
	            </div>
	            <div class="addMountainForm">
	            	<form action="${contextPath}/mountain.add" method="post">
	            		<table>
	            			<tr>
	            				<th>산 이름</th>
	            				<th>산 높이</th>
	            				<th>산 지역</th>
	            				<th>산 주소</th>
	            				<th>산 사진</th>
	            				<th>산 상세설명</th>
	            			</tr>
	            			<tr>
	            				<td><input name="m_name" type="text" placeholder="가리왕산" required/></td>
	            				<td><input name="m_height" type="text" placeholder="1562m" required/></td>
	            				<td><input name="m_location" type="text" placeholder="강원" required/></td>
	            				<td><input name="m_address" type="text" placeholder="강원특별자치도..." required/></td>
	            				<td><input name="m_photo" type="text" placeholder="사진url..." required/></td>
	            				<td><input name="m_detail" type="text" placeholder="상세설명..." required/></td>
	            			</tr>
	            			<tr>
	            				<td colspan="6"><button>추가하기</button></td>
	            			</tr>
	            		</table>
	            	</form>
	            </div>
				<div class="grid-container" id="mountainData"></div>
	        </section>
	        
	        <section id="board">
	            <h2>게시판 관리</h2>
	            
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
               row.innerHTML += '<td><button class="deleteBtn" onclick="deleteUser(\'' + user.u_email + '\')">삭제하기</button></td>';

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
      		  html += '<table class="grid-item">';
      	      html += '<tr>';
        	  html += '<th> Mountain No </th>';
        	  html += '<th> Mountain Name </th>';
        	  html += '<th> Mountain Height </th>';
        	  html += '<th> Mountain Location </th>';
        	  html += '<th> Mountain Address </th>';
        	  html += '</tr>';
      	      html += '<tr>';
      	      html += '<td> <a href="${contextPath}/mountain/detail?m_no='+m_no+'">' + mountain.m_no + '</td>';
      	      html += '<td>' + mountain.m_name + '</td>';     	    
    	      html += '<td>' + mountain.m_height + 'm</td>';
    	      html += '<td>' + mountain.m_location + '</td>';
    	      html += '<td>' + mountain.m_address + '</td>';  	 
    	  	html += '</tr>';
      	   /*  html += '<tr>';
      	  	html += '<td colspan="5"><a href="#">수정하기</a></td>';
      	    html += '</tr>'; */
      	    html += '</table>';
      			    
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