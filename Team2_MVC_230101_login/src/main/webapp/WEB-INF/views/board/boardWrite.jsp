<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <link rel="stylesheet" media="screen" href="${path}/resources/css/search-main.css">
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
    
    <!-- 게시글 시작 -->
	  <div class="board">
	    <div class="board-name"><span>글 쓰기</span></div>
	    
	    <div class="board-container">
	      <!-- 게시판 네비(사이드) -->
		      <div class="board-list">
		      	<ul>
		          <li><a href="${path}/board?type=notice">공지사항</a></li>
		          <li><a href="${path}/board?type=free">자유게시판</a></li>
		          <li><a href="${path}/board?type=question">질문게시판</a></li>
		          <li><a href="${path}/board?type=customer">고객센터</a></li>
		      	</ul>
		      </div>
	      
	      <!-- 게시글 메인 -->
	      <div class="board-main">
	      	<form action="${path}/board-write" method="post" enctype="multipart/form-data">
	      		<!-- 게시글 종류 -->
						<div style="text-align: center;">
							<label>
								<input type="radio" name="type" value="notice" ${type=='notice' ? 'checked':''}> 공지사항&nbsp;&nbsp;&nbsp;&nbsp;
							</label>
							<label>
								<input type="radio" name="type" value="free" ${type=='free' ? 'checked':''}> 자유게시판&nbsp;&nbsp;&nbsp;&nbsp;
							</label>
							<label>
								<input type="radio" name="type" value="question" ${type=='question' ? 'checked':''}> 질문게시판&nbsp;&nbsp;&nbsp;&nbsp;
							</label>
							<label>
								<input type="radio" name="type" value="customer" ${type=='customer' ? 'checked':''}> 고객센터
							</label>
						</div>
		
		        <!-- 게시판 내용 -->
						<div class="boder-wrting-ttl" >
							<p>제목</p><input type="text" name="title" placeholder="글의 제목을 적는 곳입니다.">
						</div>
						<div class="boder-wrting-ttl" >
							<p>작성자</p><input type="text" name="writerId" value="${loginMember.id}" readonly>
						</div>
						<div class="boder-wrting-ttl" >
						  <p>첨부파일</p><input type="file" name="upfile">
						</div>
						 <div class="boder-wrting-context" >
							<p>내용</p><textarea placeholder="글의 내용을 적는 곳입니다." class="" name="content" cols="50" rows="15"></textarea>
						<div class="btns">
						  <button type="submit" class="btn_add">등록</button>
						  <button type="reset" class="btn_del">지우기</button>
						</div>
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