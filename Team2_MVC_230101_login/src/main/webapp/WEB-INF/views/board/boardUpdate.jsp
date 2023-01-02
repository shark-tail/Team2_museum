<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>나만의 박물관</title>
  
  <!-- Viewport-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  
  <!-- Vendor Styles-->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/simplebar.min.css"/>
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/tiny-slider.css"/>
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/flatpickr.min.css"/>
  <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/page-loading.css">
  <!-- 직접 작성한 Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/header-footer.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/index.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/board.css">
  <link rel="stylesheet" href="${path}/resources/css/search-main.css">
</head>


<body>
  <!-- Page loading spinner
  <div class="page-loading active">
    <div class="page-loading-inner">
      <div class="page-spinner"></div><span>Loading...</span>
    </div>
  </div>
  -->
  
  <main class="page-wrapper">

    <jsp:include page="../common/header.jsp"/>

    <section class="jarallax bg-dark main-section" data-jarallax data-speed="0.5">
      <span class="img-overlay bg-transparent opacity-75" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"></span>
      <div class="jarallax-img img-main" style="background-image: url(${path}/resources/img/경복궁_근정전_내부_어좌.jpg);"></div>
    </section>
    
    <!-- 게시판시작 -->
	  <div class="board">
	    <div class="board-name"><span>게시글수정</span></div>
	    
	    <div class="board-container">
	      <!-- 게시판 네비(사이드) -->
		      <div class="board-list">
		      	<ul>
		           <li><a href="${path}/board?type=notice">공지사항</a></li>
		          <li><a href="${path}/board?type=best">베스트게시판</a></li>
		          <li><a href="${path}/board?type=free">자유게시판</a></li>
		          <li><a href="${path}/board?type=question">질문게시판</a></li>
		          <li><a href="${path}/board?type=customer">FAQ</a></li>
		      	</ul>
		      </div>
	      
	      <!-- 게시판 메인 -->
	      <div class="board-detail">
		      <form action="${path}/board-update" method="post" enctype="multipart/form-data">
			      <input type="hidden" name="no" value="${board.no}" />
						<input type="hidden" name="originalFileName" value="${board.originalFileName}" />
						<input type="hidden" name="renamedFileName" value="${board.renamedFileName}" />
						
		        <div class="board-detail_ttl">
		          <div class="detail_text-ttl">제목</div>
		          <div class="detail_text-content"><input type="text" name="title" value="${board.title}"></div>
		          <div class="detail_text-ttl">작성자</div>
		          <div class="detail_text-writer"><input type="text" name="writerId" value="${board.nickname}" readonly></div>
		        </div>
		        <div class="board-detail_ttl">
		        <div class="detail_text-ttl">첨부파일</div>
		        <input type="file" name="reloadFile">
						<c:if test="${!empty board.originalFileName}"><br>
							현재 업로드 파일 :
							<a>
								${board.originalFileName}
							</a>
						</c:if>
		        </div>
		        <div class="board-detail-context">
		        <div class="detail_text-ttl">내용</div>
		        	<textarea name="content" cols="50" rows="15">${board.content}</textarea>
		        </div>
		        
		        <div class="board-detail-list-like-modify">
		        	<!-- (차후 loginMember 작업해야 함) -->
		          <button type="button" onclick="location.replace('${path}/board')">목록으로</button>
		          <button type="submit">수정하기</button>
		        </div>
		 
					</form>
	      </div>
	  </div>
	  </div>
  </main>

  <jsp:include page="../common/footer.jsp"/>
  
  <!-- Back to top button-->
  <a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up"></i></a>

	
  <!-- Vendor scrits: js libraries and plugins-->
  <script src="${path}/resources/js/vendor/bootstrap.bundle.min.js"></script>
  <script src="${path}/resources/js/vendor/simplebar.min.js"></script>
  <script src="${path}/resources/js/vendor/smooth-scroll.polyfills.min.js"></script>
  <script src="${path}/resources/js/vendor/tiny-slider.js"></script>
  <script src="${path}/resources/js/vendor/flatpickr.min.js"></script>
  <script src="${path}/resources/js/vendor/jarallax.min.js"></script>
  <!-- Main theme script + Page Loading script -->
  <script src="${path}/resources/js/theme.js"></script>
  <script src="${path}/resources/js/page-loading.js"></script>
  <script src="${path}/resources/js/board.js"></script>
</body>
</html>
