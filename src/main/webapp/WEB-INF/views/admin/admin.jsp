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
<style>
#n_no_chk,
#fileInput,
.custom-file-upload,
.nft-reg-form,
.nft-reg-form label,
.nft-reg-form #customRegBtn,
.sidebar a,
.sns a,
.policy a,
.button-in-header,
.button-in-header a,
.btn-explore,
.logo-footer a {
cursor: url(${contextPath}/resources/images/mouse-pointer.png), auto;
}

</style>
    <script src="https://kit.fontawesome.com/53303b24c1.js" crossorigin="anonymous"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
<<<<<<< HEAD
=======
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
>>>>>>> refs/remotes/origin/team_upload
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
		
		var imgPath = '<c:url value="resources/images/nft/" />';
		$.getJSON("../nft/nft.Board.getJSON?n_status=1", function(nft) {
			var nftDataDiv = document.getElementById('nftData');
			var html = '';

			$.each(nft.nft, function(i, n) {
	    		html += '<div class="grid-item">';
				html += '<ul onclick="goDetailNFT(' + n.n_no + ', ' + n.n_status + ')" class="menu align-center expanded text-center SMN_effect-5">';
				html += '<li>';
				// 이미지
				html += '<span><img id="nftImg" src="../' + imgPath + n.n_img + '" /></span>';
				
				html += '<span>'+ n.n_name +'</span>';
				
				html += '</li>'; 
				html += '</ul>'; 
				html += '</div>'; // 닫는 div 추가

			});
			nftDataDiv.innerHTML = html; 
		});
	});
	
	function goDetailNFT(n_no, n_status) {
		location.href = "../nft.DetailPage?n_no=" + n_no + "&n_status=" + n_status;
	}
	
</script>

 <style>
    /* 파일 업로드 버튼 숨기기 */
    .custom-file-upload input[type="file"] {
      display: none;
    }

    /* 이미지 미리보기 컨테이너 스타일 */
    .image-preview-container {
      display: flex;
      flex-wrap: wrap;
    }

    .image-preview {
      max-width: 150px;
      max-height: 150px;
      margin: 10px;
      border: 1px solid #ddd;
    }

    .image-preview img {
      width: 100%;
      height: 100%;
      object-fit: cover;
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
	        <a href="#" onclick="toggleSection('nft')">NFT 사진 업로드</a>
	        <a href="#" onclick="toggleSection('users','${contextPath}/user/getAllUserJSON')">사용자 관리</a>
	        <a href="#" onclick="toggleSection('mountainList')">산 리스트 관리</a>
	        <a href="#" onclick="toggleSection('board')">게시판 관리</a>
	    </div>
	    <div class="content">
	        <!-- 기본적으로 보여질 섹션 (예: 대시보드) -->
	        <section id="nft">
	        <div class="nft-upload-header">NFT Image Upload</div>
	        <div class="nft-main-container">
		        <div class="nft-reg-form">
					<form action="nft.regist" method="post" enctype="multipart/form-data">
						<input type="hidden" name="n_name" value="hashValue">
						
						<input type="hidden" name="n_master" value="admin">
						
						<div class="custom-file-upload">
							<label for="fileInput" class="button button--wapasha button--round-s">NFT UPLOAD</label>
							<input id="fileInput"  type="file" name="n_files" multiple="multiple">
						</div>
						<div id="fileCount"></div>
						
						<!-- 업로드 사진 미리보기 -->
						<div class="image-preview-container" id="imagePreviewContainer"></div>
						
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
	       
	       <!-- 추가한 부분 -->
	       <hr>
	       <div><h1>경매 등록하기</h1></div>
	       	<div class="grid-container" id="nftData">
				<div id="nftData"></div>
			</div>
	       <!--  -->
	       
	        </section>
	        <section id="users">
	            <div class="user-management-header">User Management</div>
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
                <div class="mountain-management-header">Mountain Management</div>
	            <div class="button_container">
	            	<a class="addMountainBtn" ><span>산 추가하기</span></a>
	            	<div class="dot"></div>
	            </div>
	            <div class="addMountainForm">
	            	<form action="${contextPath}/mountain.add" method="post">
	            		<table class="addMountainTbl">
	            			<thead>
		            			<tr>
		            				<th>산 이름</th>
		            				<th>산 높이</th>
		            				<th>산 지역</th>
		            				<th>산 주소</th>
		            				<th>산 사진</th>
		            				<th>산 상세설명</th>
		            			</tr>
	            			</thead>
	            			<tbody>
		            			<tr>
		            				<td><input name="m_name" type="text" placeholder="가리왕산" required/></td>
		            				<td><input name="m_height" type="text" placeholder="1562m" required/></td>
		            				<td><input name="m_location" type="text" placeholder="강원" required/></td>
		            				<td><input name="m_address" type="text" placeholder="강원특별자치도..." required/></td>
		            				<td><input name="m_photo" type="text" placeholder="사진url..." required/></td>
		            				<td><input name="m_detail" type="text" placeholder="상세설명..." required/></td>
		            			</tr>
	            			</tbody>
	            			<tr>
	            				<td colspan="6">
	            					<div class="addBox bg-2">
	            						<button class="addBtn button--ujarak button--border-medium button--round-s button--text-thick">추가하기</button>
	            					</div>
	            				</td>
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
  	
  	
  	/* 업로드 사진 미리보기 */
  	 // 파일 업로드 input 태그 이벤트 리스너 등록
    const fileInput = document.getElementById('fileInput');
    fileInput.addEventListener('change', handleFileSelect);

    function handleFileSelect(event) {
      const files = event.target.files;

      const previewContainer = document.getElementById('imagePreviewContainer');
      previewContainer.innerHTML = '';

      // 선택한 파일들을 미리보기로 생성하여 추가
      for (const file of files) {
        const reader = new FileReader();

        reader.onload = function (event) {
          const imagePreview = document.createElement('div');
          imagePreview.className = 'image-preview';

          const image = document.createElement('img');
          image.src = event.target.result;
          image.alt = file.name;

          imagePreview.appendChild(image);
          previewContainer.appendChild(imagePreview);
        };

        reader.readAsDataURL(file);
      }
    }
  	
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
      		  html += '<thead>'; 
      	      html += '<tr>';
        	  html += '<th> 번호 </th>';
        	  html += '<th> 이름 </th>';
        	  html += '<th> 높이 </th>';
        	  html += '<th> 지역 </th>';
        	  html += '<th> 주소 </th>';
        	  html += '</tr>';
        	  html += '</thead>';
        	  html += '<tbody>';
        	  html += '<tr>';
      	      html += '<td> <a href="${contextPath}/mountain/detail?m_no='+m_no+'">' + mountain.m_no + '</td>';
      	      html += '<td>' + mountain.m_name + '</td>';     	    
    	      html += '<td>' + mountain.m_height + 'm</td>';
    	      html += '<td>' + mountain.m_location + '</td>';
    	      html += '<td>' + mountain.m_address + '</td>';  	 
    	  	  html += '</tr>';
    	  	  html += '</tbody>';
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