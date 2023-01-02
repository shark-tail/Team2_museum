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
        <h1 class="mb-5 text-white">전이만갑오개혁님의 컬렉션</h1>
        <div class="btn-group d-flex justify-content-between">
          <a class="btn btn-primary btn-sm rounded-pill" href="/mvc/collection_view" role="button">전체모드로 보기</a>
        </div>
    </section>

    <!-- 컬렉션 내 문화재 -->
    <section class="container col-xl-10 mx-auto mt-5 mb-5" >
      <div class="pb-3 pe-sm-3 border-bottom border-dark d-flex justify-content-between align-items-center">
        <h3 class="h3" style="margin-bottom: 0;">문화재 목록</h3>
        <!-- '관리하기' 버튼 클릭하면 나타남 -->
        <div class="d-none del-btn">
          <button class="btn btn-primary me-3" type="button">선택 삭제</button>
          <button class="btn btn-primary" type="button">전체 삭제</button>
        </div>
      </div>
      

     <!-- 문화재 목록 -->
      <div class="pt-4 d-flex justify-content-center align-content-start flex-wrap">
        
        <!-- Item 1 -->
        <div class="result-item1 shadow">
          <!-- '관리하기' 버튼 클릭하면 나타남 -->
          <div class="d-none del-check">
            <input type="checkbox"/>
            <span class="img-overlay bg-transparent opacity-75" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"> </span>
          </div>
          <!-- 문화재 -->
          <div class="re-card-img">
            <a href="search-detail.html"><img src="${path}/resources/img/ex/ex01.jpg" alt="Image"></a>
          </div>
          <div class="d-flex justify-content-between sn-box1">
            <div class="mt-1"><span class="fs-5"><a class="nav-link" href="collection-detail.html">청자 기린모양 연적</a></span></div>
            <div class="pt-3 pe-3 fs-xs"><span class="text-muted"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울특별시 종로구</span></div>
          </div>
          <!--좋아요, 컬렉션-->
          <div class="d-flex justify-content-evenly b2-box">
            <div class="b2-box-ch ps-4">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="좋아요 +1"><i class="fi-heart"></i></button><span
                class="fw-bold align-middle">1165</span>
            </div>
            <div class="b2-box-ch">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="내 컬렉션에 추가"><i class="fi-bookmark align-bottom"></i></button><span
                class="fw-bold align-middle">컬렉션</span>
            </div>
          </div>
        </div>

        <!-- Item 2 -->
        <div class="result-item1 shadow ">
          <div class="d-none del-check">
            <input type="checkbox"/>
            <span class="img-overlay bg-transparent opacity-75" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"> </span>
          </div>
          <div class="re-card-img">
            <a href="collection-detail.html">
              <img src="${path}/resources/img/ex/ex02.jpg" alt="Image"></a>
          </div>
          <div class="d-flex justify-content-between sn-box1">
            <div class="mt-1">
              <span class="fs-5"><a class="nav-link" href="collection-detail.html">청자 퇴화점문 나한좌상</a></span>
            </div>
            <div class="pt-3 pe-3 fs-xs">
              <span class="text-muted"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울특별시 강남구</span>
            </div>
          </div>
          <!--좋아요, 컬렉션-->
          <div class="d-flex justify-content-evenly b2-box">
            <div class="b2-box-ch ps-4">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="Add from Favorites"><i class="fi-heart"></i></button><span
                class="fw-bold align-middle">565</span>
            </div>
            <div class="b2-box-ch">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="Remove from Favorites"><i class="fi-bookmark align-bottom"></i></button><span
                class="fw-bold align-middle">컬렉션</span>
            </div>
          </div>
        </div>
        <!-- Item 3 -->
        <div class="result-item1 shadow ">
          <div class="d-none del-check">
            <input type="checkbox"/>
            <span class="img-overlay bg-transparent opacity-75" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"> </span>
          </div>
          <div class="re-card-img">
            <a href="collection-detail.html">
              <img src="${path}/resources/img/ex/ex03.jpg" alt="Image"></a>
          </div>
          <div class="d-flex justify-content-between sn-box1">
            <div class="mt-1">
              <span class="fs-5"><a class="nav-link" href="collection-detail.html">청자 양각죽절문 병</a></span>
            </div>
            <div class="pt-3 pe-3 fs-xs">
              <span class="text-muted"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울특별시 용산구</span>
            </div>
          </div>
          <!--좋아요, 컬렉션-->
          <div class="d-flex justify-content-evenly b2-box">
            <div class="b2-box-ch ps-4">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="Add from Favorites"><i class="fi-heart"></i></button><span
                class="fw-bold align-middle">114</span>
            </div>
            <div class="b2-box-ch">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="Remove from Favorites"><i class="fi-bookmark align-bottom"></i></button><span
                class="fw-bold align-middle">컬렉션</span>
            </div>
          </div>
        </div>
        <!-- Item 4 -->
        <div class="result-item1 shadow ">
          <div class="d-none del-check">
            <input type="checkbox"/>
            <span class="img-overlay bg-transparent opacity-75" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"> </span>
          </div>
          <div class="re-card-img">
            <a href="collection-detail.html">
              <img src="${path}/resources/img/ex/ex04.jpg" alt="Image"></a>
          </div>
          <div class="d-flex justify-content-between sn-box1">
            <div class="mt-1">
              <span class="fs-5"><a class="nav-link" href="collection-detail.html">청자 인물형 주전자</a></span>
            </div>
            <div class="pt-3 pe-3 fs-xs">
              <span class="text-muted"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울특별시 용산구</span>
            </div>
          </div>
          <!--좋아요, 컬렉션-->
          <div class="d-flex justify-content-evenly b2-box">
            <div class="b2-box-ch ps-4">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="Add from Favorites"><i class="fi-heart"></i></button><span
                class="fw-bold align-middle">46</span>
            </div>
            <div class="b2-box-ch">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="Remove from Favorites"><i class="fi-bookmark align-bottom"></i></button><span
                class="fw-bold align-middle">컬렉션</span>
            </div>
          </div>
        </div>
        <!-- Item 5 -->
        <div class="result-item1 shadow">
          <!-- '관리하기' 버튼 클릭하면 나타남 -->
          <div class="d-none del-check">
            <input type="checkbox"/>
            <span class="img-overlay bg-transparent opacity-75" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"> </span>
          </div>
          <!-- 문화재 -->
          <div class="re-card-img">
            <a href="search-detail.html"><img src="${path}/resources/img/ex/ex05.jpg" alt="Image"></a>
          </div>
          <div class="d-flex justify-content-between sn-box1">
            <div class="mt-1"><span class="fs-5"><a class="nav-link" href="collection-detail.html">청자 동화연화문 표주박모양 주전자</a></span></div>
            <div class="pt-3 pe-3 fs-xs"><span class="text-muted"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울특별시 용산구</span></div>
          </div>
          <!--좋아요, 컬렉션-->
          <div class="d-flex justify-content-evenly b2-box">
            <div class="b2-box-ch ps-4">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="좋아요 +1"><i class="fi-heart"></i></button><span
                class="fw-bold align-middle">3774</span>
            </div>
            <div class="b2-box-ch">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="내 컬렉션에 추가"><i class="fi-bookmark align-bottom"></i></button><span
                class="fw-bold align-middle">컬렉션</span>
            </div>
          </div>
        </div>

        <!-- Item 6 -->
        <div class="result-item1 shadow ">
          <div class="d-none del-check">
            <input type="checkbox"/>
            <span class="img-overlay bg-transparent opacity-75" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"> </span>
          </div>
          <div class="re-card-img">
            <a href="collection-detail.html">
              <img src="${path}/resources/img/ex/ex06.jpg" alt="Image"></a>
          </div>
          <div class="d-flex justify-content-between sn-box1">
            <div class="mt-1">
              <span class="fs-5"><a class="nav-link" href="collection-detail.html">청자 상감모란문 표주박모양 주전자</a></span>
            </div>
            <div class="pt-3 pe-3 fs-xs">
              <span class="text-muted"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울특별시 용산구</span>
            </div>
          </div>
          <!--좋아요, 컬렉션-->
          <div class="d-flex justify-content-evenly b2-box">
            <div class="b2-box-ch ps-4">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="Add from Favorites"><i class="fi-heart"></i></button><span
                class="fw-bold align-middle">973</span>
            </div>
            <div class="b2-box-ch">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="Remove from Favorites"><i class="fi-bookmark align-bottom"></i></button><span
                class="fw-bold align-middle">컬렉션</span>
            </div>
          </div>
        </div>
        <!-- Item 7 -->
        <div class="result-item1 shadow ">
          <div class="d-none del-check">
            <input type="checkbox"/>
            <span class="img-overlay bg-transparent opacity-75" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"> </span>
          </div>
          <div class="re-card-img">
            <a href="collection-detail.html">
              <img src="${path}/resources/img/ex/ex07.jpg" alt="Image"></a>
          </div>
          <div class="d-flex justify-content-between sn-box1">
            <div class="mt-1">
              <span class="fs-5"><a class="nav-link" href="collection-detail.html">청자 구룡형 주전자</a></span>
            </div>
            <div class="pt-3 pe-3 fs-xs">
              <span class="text-muted"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울특별시 용산구</span>
            </div>
          </div>
          <!--좋아요, 컬렉션-->
          <div class="d-flex justify-content-evenly b2-box">
            <div class="b2-box-ch ps-4">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="Add from Favorites"><i class="fi-heart"></i></button><span
                class="fw-bold align-middle">439</span>
            </div>
            <div class="b2-box-ch">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="Remove from Favorites"><i class="fi-bookmark align-bottom"></i></button><span
                class="fw-bold align-middle">컬렉션</span>
            </div>
          </div>
        </div>
        <!-- Item 8 -->
        <div class="result-item1 shadow ">
          <div class="d-none del-check">
            <input type="checkbox"/>
            <span class="img-overlay bg-transparent opacity-75" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"> </span>
          </div>
          <div class="re-card-img">
            <a href="collection-detail.html">
              <img src="${path}/resources/img/ex/ex08.jpg" alt="Image"></a>
          </div>
          <div class="d-flex justify-content-between sn-box1">
            <div class="mt-1">
              <span class="fs-5"><a class="nav-link" href="collection-detail.html">청자 투각칠보문뚜껑 향로</a></span>
            </div>
            <div class="pt-3 pe-3 fs-xs">
              <span class="text-muted"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울특별시 용산구</span>
            </div>
          </div>
          <!--좋아요, 컬렉션-->
          <div class="d-flex justify-content-evenly b2-box">
            <div class="b2-box-ch ps-4">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="Add from Favorites"><i class="fi-heart"></i></button><span
                class="fw-bold align-middle">294</span>
            </div>
            <div class="b2-box-ch">
              <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                data-bs-original-title="Remove from Favorites"><i class="fi-bookmark align-bottom"></i></button><span
                class="fw-bold align-middle">컬렉션</span>
            </div>
          </div>
        </div>
      </div>
	          
	          
	          
	          
	        </div>
   		
      </div>
      
     
		
		
		
    <!-- 컬렉션 댓글 -->
    <section class="reply container col-xl-9 mx-auto mt-5 mb-5">
    

      <!-- 댓글 입령창 -->
      <div class="card shadow-sm mb-4">
        <div class="card-body">
          <form class="needs-validation" novalidate>
            <textarea class="form-control mb-3" rows="3" placeholder="댓글 내용 입력..." style="resize: none; min-height: calc(7.5rem + 1.15rem + 2px);"></textarea>
            <div class="d-flex justify-content-end">
              <button class="btn btn-primary btn-lg rounded-pill fs-sm" type="submit"><i class="fi-pencil me-2"></i>댓글 등록</button>
            </div>
          </form>
        </div>
      </div>
      
      <!-- 댓글 목록 -->
      <!-- item 1 -->
      <div class="mb-4 p-4 border-bottom">
        <div class="d-flex justify-content-between mb-3">
          <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-3" src="${path}/resources/img/avatars/06.jpg" width="48" alt="Avatar">
            <h6 class="fs-base mb-0">청자덕후</h6><span class="star-rating"></span>
          </div><span class="text-muted fs-base">2023.01.02</span>
        </div>
        <p>헐~~ 청자 매니아시네요 </p>
        <div class="d-flex justify-content-end align-items-center">
          <button class="btn btn-primary rounded-pill" type="button"><i class="fi-edit me-2"></i>수정</button>
          <div class="border-end mx-2"></div>
          <button class="btn btn-primary rounded-pill" type="button"><i class="fi-trash me-2"></i>삭제</button>
        </div>
      </div>
      
      
      <!-- 댓글 더 보기 버튼 -->
      <div class="d-flex justify-content-center mt-5 mb-5">
        <button class="more-reply" type="button">더 보기</button>
      </div>
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