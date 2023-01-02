<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>나만의 박물관</title>

  <!-- Viewport-->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/page-loading.css">
  <!-- 직접 작성한 Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/header-footer.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/collection-detail.css">
</head>

<body>
  <main class="page-wrapper">
    
    <jsp:include page="../common/header.jsp"/>

    <!-- 컬렉션 헤더 -->
    <section class="jarallax bg-dark zindex-1 main-section" data-jarallax data-speed="0.5" style="height: 400px;">
      <!-- 컬렉션 헤더 배경 -->
      <span class="img-overlay bg-transparent opacity-75" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"> </span>
      <div class="jarallax-img img-main" style="background-image: url(${path}/resources/img/경복궁_근정전_전경.jpg);"></div>
      <!-- 컬렉션 제목 및 기타 버튼 -->
      <div class="colltection-title content-overlay">
        <h1 class="mb-5 text-white">${nick}님의 컬렉션</h1>
        <div class="btn-group d-flex justify-content-between">
          <a class="btn btn-primary btn-sm rounded-pill" href="/mvc/collection_view" role="button">전체모드로 보기</a>
        </div>
       </div>
    </section>

    <!-- 컬렉션 내 문화재 -->
    <section class="container col-xl-10 mx-auto mt-5 mb-5">
      <div class="pb-3 pe-sm-3 border-bottom border-dark d-flex justify-content-between align-items-center">
        <h3 class="h3" style="margin-bottom: 0;">문화재 목록</h3>
        <!-- '관리하기' 버튼 클릭하면 나타남 -->
        <div class="d-none del-btn">
          <button class="btn btn-primary me-3" type="button">선택 삭제</button>
          <button class="btn btn-primary" type="button">전체 삭제</button>
        </div>
      </div>
    </section>

      <!-- 문화재 목록 -->
      <div class="pt-4 d-flex justify-content-center align-content-start flex-wrap">
   		<c:forEach var="item" items="${list}">
	   		     <!-- Item 1 -->
	        <div class="result-item1 shadow">
	          <!-- '관리하기' 버튼 클릭하면 나타남 -->
	          <div class="d-none del-check">
	            <input type="checkbox"/>
	            <span class="img-overlay bg-transparent opacity-75" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"> </span>
	          </div>
	          <!-- 문화재 -->
	          <div class="re-card-img">
	            <a href="${path}/searchDetail?hno=${item.hno}"><img src="${item.imageUrl}" alt="Image"></a>
	          </div>
	          <div class="d-flex justify-content-between sn-box1">
	            <div class="mt-1"><span class="fs-5"><a class="nav-link" href="${path}/searchDetail?hno=${item.hno}">${item.ccbaMnm1}</a></span></div>
	            <div class="pt-3 pe-3 fs-xs"><span class="text-muted"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>${item.ccbaLcad }</span></div>
	          </div>
	          <!--좋아요, 컬렉션-->
	          <div class="d-flex justify-content-evenly b2-box" style="margin-top:10px">
	            <div class="b2-box-ch ps-4">
	              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
	                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
	                data-bs-original-title="좋아요 +1"><i class="fi-heart"></i></button><span
	                class="fw-bold align-middle">1165</span>
	            </div>
	            <div class="b2-box-ch">
	              <button 
	               onclick="location.href = '${path}/deleteCollection?hno=${item.hno}&uno=1'"
	              class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
	                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
	                data-bs-original-title="내 컬렉션에 추가"><i class="fi-bookmark align-bottom"
	        
	                ></i></button><span class="fw-bold align-middle">삭제</span>
	            </div>
	          </div>
	        </div>
   		
   		</c:forEach>
      </div>
      
     
		
		
		
    <!-- 컬렉션 댓글 -->
    <section class="reply container col-xl-9 mx-auto mt-5 mb-5">
    

      <!-- 댓글 입령창 -->
      <div class="card shadow-sm mb-4">
        <div class="card-body">
          <form action="${path}/Co_reply" class="needs-validation" novalidate  method="post">
          <input type="hidden" name="uno" value="0"/>
            <textarea name="hrContent" id="replyContent" class="form-control mb-3" rows="3" placeholder="댓글 내용 입력..."
             style="resize: none; min-height: calc(7.5rem + 1.15rem + 2px);"></textarea>
            <div class="d-flex justify-content-end">
              <button class="btn btn-primary btn-lg rounded-pill fs-sm" type="submit"><i class="fi-pencil me-2"></i>댓글 등록</button>
            </div>
          </form>
        </div>
      </div>
      
      <!-- 댓글 목록 -->
      <!-- item 1 -->
       <!-- 리뷰 리스트 -->
        <div class="col-md-bih2">
          <span class="fs-5 fw-bold ps-3">리뷰</span>
          <div class="" style="margin-top: 30px;">
         <c:if test="${!empty replyList}">
          <c:forEach var="reply" items="${replyList}">
            <div class="mb-3 pb-1 border-bottom ps-3">
              <div class="d-flex justify-content-between mb-3 ps-2">
                <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1" src="${path}/resources/img/avatars/13.png"
                    width="48" alt="Avatar">
                  <div class="ps-2">
                    <h6 class="fs-5 mb-0">${reply.nickName}</h6>
                  </div>
                </div>
                <span class="text-muted fs-sm">${reply.hrCreateDate}
                <c:if test="${ !empty loginMember && (loginMember.no == reply.uno || loginMember.role == 'ROLE_ADMIN') }">
				<button class="btn-delete" onclick="deleteReply('${reply.hrno}','${reply.hno}');" >삭제</button>
				</c:if>
                <%-- <i class="text-danger ms-2 fi-trash mt-n1" style="cursor:pointer;" onclick="deleteReply('${reply.hrno}','${reply.hno}');"></i> --%>
                </span>
              </div>
              <p>${reply.hrContent}</p>
            </div>
            </c:forEach>
           </c:if>
      
      
      <!-- 댓글 더 보기 버튼 -->
      
    </section>
  </main>

 	
    <jsp:include page="../common/footer.jsp"/>
 	

  <!-- Back to top button-->
  <a class="btn-scroll-top" href="#top" data-scroll>
    <span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i
      class="btn-scroll-top-icon fi-chevron-up"></i>
  </a>

  <!-- Vendor scrits: js libraries and plugins-->
  <script src="${path}/resources/js/vendor/bootstrap.bundle.min.js"></script>
  <script src="${path}/resources/js/vendor/smooth-scroll.polyfills.min.js"></script>
  <script src="${path}/resources/js/vendor/jarallax.min.js"></script>
  <!-- Main theme script + Page Loading script -->
  <script src="${path}/resources/js/theme.js"></script>
  <script src="${path}/resources/js/page-loading.js"></script>
  <script src="${path}/resources/js/collection-detail.js"></script>
</body>

</html>
