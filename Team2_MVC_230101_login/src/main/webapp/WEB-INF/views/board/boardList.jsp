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
    
   	<!-- 게시판시작 -->
		<div class="board">
		    <div class="board-name"><span>
		    <c:if test="${param.type == null}">
		    	공지사항
		    </c:if>
		    <c:if test="${param.type == 'notice'}">
		    	공지사항
		    </c:if>
		    <c:if test="${param.type == 'free'}">
		    	자유게시판
		    </c:if>
		    <c:if test="${param.type == 'question'}">
		    	질문게시판
		    </c:if>
		    <c:if test="${param.type == 'customer'}">
		    	고객센터
		    </c:if>
		    </span></div>
		    
		    <div class="board-container">
		    	<!-- 게시판 네비(사이드) -->
		      <div class="board-list">
		      	<ul>
		          <li><a href="${path}/board?type=notice">공지사항</a></li>
		          <li><a href="${path}/board?type=free">자유게시판</a></li>
		          <li><a href="${path}/board?type=question">질문게시판</a></li>
		          <li><a href="${path}/board?type=customer">FAQ</a></li>
		      	</ul>
		      </div>
		      
		      <!-- 게시판 메인 -->
		      <div class="board-main">
		        <!-- 게시글 검색 -->
		        <div class="board-search">
		        		<c:set var="searchType" value="${param.searchType}"/>
								<c:if test="${empty searchType}">
									<c:set var="searchType" value="${'title'}"/>
								</c:if>
		        
				        <form action="" class="board-search-form">
				        	<input type="hidden" name="type" value="${param.type}" />
				        	<label><input type="radio" name="searchType" value="title" ${searchType=='title' ? 'checked':''}> 제목</label>
									<label><input type="radio" name="searchType" value="content" ${searchType=='content' ? 'checked':''}> 내용</label>
				          <input type="text" id="searchValue" name="searchValue" class="board-search-input" value="${param.searchValue}"/>
				          <button type="submit" class="board-search-icon" ><i class="bi bi-search"></i></button>
			          </form>
		        </div>
		      
			      <!-- 게시글 목록 -->
		        <table class="board-table">
		          <thead>
		            <tr class="board-tr">
	                <th class="board-no" >번호</th>
	                <th class="board-ttl">제목</th>
	                <th class="board-writer">작성자</th>
	                <th class="board-reg">등록일</th>
	                <th class="board-look">조회</th>
		            </tr>
		          </thead>
		          
		          <tbody>
		          	<c:if test="${empty list}">
									<tr class="board-content">
										<td colspan="6" class="text-center">조회된 글이 없습니다.</td>
									</tr>
								</c:if>
								
								<c:if test="${not empty list}">
									<c:forEach var="board" items="${list}">
									
										<tr class="board-content">
											<td class="td-no text-center"><c:out value="${board.no}"/></td>
											<td class="td-ttl text-center"><a href="${path}/board-detail?no=${board.no}"><c:out value="${board.title}"/></a></td>
											<td class="td-wrter text-center"><c:out value="${board.nickname}"/></td>
											<td class="td-reg text-center"><fmt:formatDate type="date" value="${board.createDate}"/> </td>
											<td class="td-look text-center"><c:out value="${board.readCount}"/></td>
										</tr>
										
									</c:forEach>
								</c:if>
		        </tbody>  
		    	</table>
		      
					<!-- 게시글 작성 -->				
		      <div class="create-board">
		      	<c:if test="${loginMember.role == 'ROLE_ADMIN'}">
      				<span><button type="button" onclick="location.href='${path}/board-write?type=${param.type}'">작성하기</button></span>
	      		</c:if>
	      		<c:if test="${loginMember.role == 'ROLE_USER' && (param.type == 'free' || param.type == 'question')}">
      				<span><button type="button" onclick="location.href='${path}/board-write?type=${param.type}'">작성하기</button></span>
	      		</c:if>
		      </div>
			    
	
					
		      <!-- 페이징 -->
	        <ul class="pagination my-5 d-flex justify-content-center">
	        	<li class="page-item">
	        		<button class="page-link" onclick="movePage('${path}/board?type=${param.type}&page=1');"><i class="fi-chevron-left"></i><i class="fi-chevron-left"></i></button>
	          </li>
	          <li class="page-item">
	          	<button class="page-link" onclick="movePage('${path}/board?type=${param.type}&page=${pageInfo.prevPage}');"><i class="fi-chevron-left me-2"></i></button>
	          </li>
	          
	          <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
							<c:if test="${status.current == pageInfo.currentPage}">
								<li class="page-item active">
									<button class="page-link" disabled>${status.current}</button>
								</li>
							</c:if>
							<c:if test="${status.current != pageInfo.currentPage}">
								<li class="page-item">
									<button class="page-link" onclick="movePage('${path}/board?type=${param.type}&page=${status.current}');">${status.current}</button>
								</li>
							</c:if>
						</c:forEach>
	          
	          <li class="page-item">
	          	<button class="page-link" onclick="movePage('${path}/board?type=${param.type}&page=${pageInfo.nextPage}');"><i class="fi-chevron-right ms-2"></i></button>
	          </li>
	          <li class="page-item">
	          	<button class="page-link" onclick="movePage('${path}/board?type=${param.type}&page=${pageInfo.maxPage}');"><i class="fi-chevron-right"></i><i class="fi-chevron-right"></i></button>
	          </li>
	        </ul>		      
		  	</div>
		 </div>
  	</div>
  </main>
  
  
  <jsp:include page="../common/footer.jsp"/>
  
  <!-- Back to top button-->
  <a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up"></i></a>

  
  <!-- 페이징 처리 js -->
  <script type="text/javascript">
		function movePage(pageUrl){
			var searchValue = document.getElementById("searchValue"); // 갤럭시
			var searchTypes = document.getElementsByName("searchType"); // title
			var searchType = 'title';
			if(searchValue.value.length > 0){
				for(var i = 0; i <searchTypes.length; i++){
					if(searchTypes[i].checked == true){
						searchType = searchTypes[i].value;
					}
				}
				pageUrl = pageUrl + '&searchType=' + searchType + '&searchValue=' + searchValue.value; 
			}
			location.href = encodeURI(pageUrl);	
		}
	</script>
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
