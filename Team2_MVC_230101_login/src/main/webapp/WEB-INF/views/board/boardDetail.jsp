<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

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
  <link rel="stylesheet" media="screen" href="${path}/resources/css/board.css?after">
  <link rel="stylesheet" href="${path}/resources/css/search-main.css">
  
  <!-- 제이쿼리 -->
  <script src="${path}/resources/js/jquery-3.6.0.min.js"></script>
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
	    <div class="board-name"><span>게시글 보기</span></div>
	    
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
	      
	      <!-- 게시판 메인 -->
	      <div class="board-detail">
	        <div class="board-detail_ttl">
	          <div class="detail_text-ttl">제목</div>
	          <div class="detail_text-content"><c:out value="${board.title}"/></div>
	          <div class="detail_text-ttl">글 번호</div>
	          <div class="detail_text-no"><c:out value="${board.no}"/></div>
	          <div class="detail_text-ttl">작성자</div>
	          <div class="detail_text-writer"><c:out value="${board.writerId}"/></div>
	          <div class="detail_text-ttl">조회수</div>
	          <div class="detail_text-readCount"><c:out value="${board.readCount}"/></div>
	          <div class="detail_text-ttl">작성 시간</div>
	          <div class="detail_text-date"><fmt:formatDate type="both" value="${board.createDate}"/></div>
	          <div class="detail_text-ttl">첨부파일</div>
	          <div class="detail_text-file">
	          	<c:if test="${ !empty board.originalFileName }">
								<a href="javascript:fileDownload('${board.originalFileName}', '${board.renamedFileName}')">
									<img src="${path}/resources/images/file.png" width="20" height="20"/><c:out value="${board.originalFileName}"></c:out>				
								</a>
								<script>
									function fileDownload(oriname, rename) {
										const url = "${path}/board/fileDown";
										let oName = encodeURIComponent(oriname);
										let rName = encodeURIComponent(rename);
										location.assign(url + "?oriname=" + oName + "&rename=" + rName);
									}
								</script>	
							</c:if>
							<c:if test="${empty board.originalFileName}">
								<span> - </span>
							</c:if>
	          </div>
	        </div>
	        
	        <!-- 게시글 내용 -->
	        <div class="board-detail-context">
	        	<c:out value="${board.content}"/>  
	        </div>
	        
	        <!-- 게시글 삭제/수정 -->
	        <div class="board-detail-list-like-modify">
	        	<c:if test="${not empty loginMember && (loginMember.id == board.writerId || loginMember.role == 'ROLE_ADMIN')}">
		          <button type="button" id="btnDelete" class="board-detail-list">삭제하기</button>
		          <button type="button" id="btnUpdate" class="board-detail-modify" onclick='${path}/board-update?no=${board.no}'>수정하기</button>
	        	</c:if>
	        </div>
	        
	        
	        <!-- 댓글 입력 -->
	        <form action="${path}/board-reply" method="post" class="board-detail-comment">
	          <div class="board-detail-comment-name">댓글 내용 입력</div>
	          <input type="hidden" name="boardNo" value="${board.no}" />
			    	<input type="hidden" name="writerId" value="${loginMember.id}" />
	          <div class="board-detail-comment-area"><textarea name="content" cols="210" rows="10"></textarea></div>
	          <div style="text-align: right;"><button type="submit" class="board-detail-comment-enroll">댓글 등록</button></div>
	        </form>
	        
	        <!-- 댓글 목록 -->
	        <table id="reply-container">
						<c:if test="${!empty replyList}">
							<c:forEach var="reply" items="${replyList}">
								<tr>
									<td class="reply-header">
										<div class="user-info"><img src="${path}/resources/img/avatars/01.jpg"/><sub>${reply.writerId}</sub></div>
										<sub class="reply-date"><fmt:formatDate type="both" value="${reply.createDate}"/></sub>
									</td>
								</tr>
								<tr>
									<td class="reply-main">
										<div class="reply-content"><c:out value="${reply.content}"/></div>
									</td>
								</tr>
								<tr>
									<td class="reply-footer">
										<c:if test="${ !empty loginMember && (loginMember.id == reply.writerId 	|| loginMember.role == 'ROLE_ADMIN') }">
											<div><button class="btn-delete" onclick="deleteReply('${reply.no}','${board.no}');" >삭제</button></div>
										</c:if>
									</td>
								</tr>
							</c:forEach>
						</c:if>
						
						<c:if test="${empty replyList}">
							<tr>
								<td colspan="3" style="text-align: center;">등록된 리플이 없습니다.</td>
							</tr>
						</c:if>
					</table>
	        
	        
	      </div>
	  	</div>
	  </div>
  </main>

  <jsp:include page="../common/footer.jsp"/>
  
  <!-- Back to top button-->
  <a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up"></i></a>


	<!-- 게시글 수정/삭제 + 댓글 삭제 js -->
	<script>
	$(document).ready(() => {
		$("#btnUpdate").on("click", (e) => {
			location.href = "${path}/board-update?no=${board.no}";
		});
		
		$("#btnDelete").on("click", (e) => {
			if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
				location.replace("${path}/board-delete?boardNo=${board.no}");
			}
		});
	});
	
	function deleteReply(replyNo, boardNo){
		var url = "${path}/board-replyDel?replyNo=";
		var requestURL = url + replyNo +"&boardNo=" + boardNo;
		location.replace(requestURL);
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