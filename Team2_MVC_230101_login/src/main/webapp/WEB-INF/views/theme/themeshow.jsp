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
  <link rel="stylesheet" media="screen" href="/${path}/resources/css/board.css">
  <link rel="stylesheet" href="${path}/resources/css/search-main.css">
  <link rel="stylesheet" href="${path}/resources/css/search-detail.css">
  <link rel="stylesheet" href="${path}/resources/css/theme-show.css">
</head>


<body>
  <!-- Page loading spinner-->
  <div class="page-loading active">
    <div class="page-loading-inner">
      <div class="page-spinner"></div><span>Loading...</span>
    </div>
  </div>
  
  <main class="page-wrapper">
    <!-- header-->
    <jsp:include page="../common/header.jsp"/>

    <section class="section-1">
    <p class="section-ttl">문화재 종목별</p>
    <div class="themeshow">
      <div class="themeshow-img-container">
        <div class="themeshow-img-1">
          <div class="themeshow-img-txt">국보</div>
          <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-1.png" alt="" ></a>
        </div>
        <img src="${path}/resources/img/thema/route-on-1.png" alt="" class="themeshow-img-2">
      </div>
      <div class="themeshow-img-container">
        <div class="themeshow-img-1">
          <div class="themeshow-img-txt">국보</div>
          <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-2.png" alt="" ></a>
        </div>
        <img src="${path}/resources/img/thema/route-on-2.png" alt="" class="themeshow-img-2">
      </div>
      <div class="themeshow-img-container">
        <div class="themeshow-img-1">
          <div class="themeshow-img-txt">국보</div>
          <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-3.png" alt="" ></a>
        </div>
        <img src="${path}/resources/img/thema/route-on-2.png" alt="" >
      </div>
      <div class="themeshow-img-container">
        <div class="themeshow-img-1">
          <div class="themeshow-img-txt">국보</div>
          <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-4.png" alt="" ></a>
        </div>
        <img src="${path}/resources/img/thema/route-on-2.png" alt="" >
      </div>

      <div class="themeshow-img-container">
        <div class="themeshow-img-1">
          <div class="themeshow-img-txt">국보</div>
          <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-5.png" alt="" ></a>
        </div>
        <a href="search-main.html"><img src="${path}/resources/img/thema/route-on-2.png" alt="" ></a>
      </div>
    </div>
  </section>
  <section class="section-2">
    <p class="section-ttl">문화재 지역별</p>
    <div class="themeshow">
      <div class="themeshow-img-container">
        <div class="themeshow-img-1">
          <div class="themeshow-img-txt">서울</div>
          <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-10.png" alt="" ></a>
        </div>
        <img src="${path}/resources/img/thema/route-on-1.png" alt="" class="themeshow-img-2">
      </div>
      <div class="themeshow-img-container">
        <div class="themeshow-img-1">
          <div class="themeshow-img-txt">경기도</div>
          <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-5.png" alt="" ></a>
        </div>
        <img src="${path}/resources/img/thema/route-on-2.png" alt="" class="themeshow-img-2">
      </div>
      <div class="themeshow-img-container">
        <div class="themeshow-img-1">
          <div class="themeshow-img-txt">강원도</div>
          <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-6.png" alt="" ></a>
        </div>
        <img src="${path}/resources/img/thema/route-on-3.png" alt="" class="themeshow-img-2">
      </div>
      <div class="themeshow-img-container">
        <div class="themeshow-img-1">
          <div class="themeshow-img-txt">충청도</div>
          <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-2.png" alt="" ></a>
        </div>
        <img src="${path}/resources/img/thema/route-on-4.png" alt="" class="themeshow-img-2">
      </div>
      <div class="themeshow-img-container">
        <div class="themeshow-img-1">
          <div class="themeshow-img-txt">경상도</div>
          <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-7.png" alt="" ></a>
        </div>
        <img src="${path}/resources/img/thema/route-on-5.png" alt="" class="themeshow-img-2">
      </div>
    </div>
    </div>
  </section>
  <section class="section-3">
  <p class="section-ttl">문화재 시대별</p>
  <div class="themeshow">
    <div class="themeshow-img-container">
      <div class="themeshow-img-1">
        <div class="themeshow-img-txt">선사시대</div>
        <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-6.png" alt="" ></a>
      </div>
      <img src="${path}/resources/img/thema/route-on-6.png" alt="" class="themeshow-img-2">
    </div>
    <div class="themeshow-img-container">
      <div class="themeshow-img-1">
        <div class="themeshow-img-txt">삼국시대</div>
        <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-7.png" alt="" ></a>
      </div>
      <img src="${path}/resources/img/thema/route-on-7.png" alt="" class="themeshow-img-2">
    </div>
    <div class="themeshow-img-container">
      <div class="themeshow-img-1">
        <div class="themeshow-img-txt">고구려</div>
        <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-8.png" alt="" ></a>
      </div>
      <img src="${path}/resources/img/thema/route-on-8.png" alt="" class="themeshow-img-2">
    </div>
    <div class="themeshow-img-container">
      <div class="themeshow-img-1">
        <div class="themeshow-img-txt">통일신라</div>
        <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-9.png" alt="" ></a>
      </div>
      <img src="${path}/resources/img/thema/route-on-9.png" alt="" class="themeshow-img-2">
    </div>
    <div class="themeshow-img-container">
      <div class="themeshow-img-1">
        <div class="themeshow-img-txt">조선시대</div>
        <a href="search-main.html"><img src="${path}/resources/img/thema/route-off-10.png" alt="" ></a>
      </div>
      <img src="${path}/resources/img/thema/route-on-10.png" alt="" class="themeshow-img-2">
    </div>
  </div>
</section>

  <section class="container pb-5 mb-lg-4" style="margin-top: 10rem;">
    <div class="d-flex align-items-center justify-content-between mb-4 pb-2 bih-mg">
      <h2 class="h3 mb-0">이런 문화재는 어때요?</h2><a class="btn btn-link fw-normal ms-sm-3 p-0"
        href="search-main.html">더보기<i class="fi-arrow-long-right ms-2"></i></a>
    </div>
    <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2">
      <div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: 
          {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:4,&quot;nav&quot;:false}}}">
        <!-- Item-->
        <div>
          <div class="position-relative">
            <div class="position-relative mb-3">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i
                  class="fi-heart"></i></button><img class="rounded-3 size-bih" src="${path}/resources/img/경복궁_근정전_전경.jpg"
                alt="Article img">
            </div>
            <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="search-detail.html">국보</a></h3>
            <h4 class="mb-2 fs-lg2"><a class="nav-link stretched-link" href="search-detail.html">경복궁</a></h3>
          </div>
        </div>
        <!-- Item-->
        <div>
          <div class="position-relative">
            <div class="position-relative mb-3">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i
                  class="fi-heart"></i></button><img class="rounded-3 size-bih" src="${path}/resources/img/경주_불국사_다보탑.jpg"
                alt="Article img">
            </div>
            <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="search-detail.html">국보</a></h3>
            <h4 class="mb-2 fs-lg2"><a class="nav-link stretched-link" href="search-detail.html">경주 불국사 다보탑</a></h3>
          </div>
        </div>
        <!-- Item-->
        <div>
          <div class="position-relative">
            <div class="position-relative mb-3">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i
                  class="fi-heart"></i></button><img class="rounded-3 size-bih" src="${path}/resources/img/국보_계유명전씨아미타불비상(2014년_국보_동산_앱사진)005.jpg"
                alt="Article img">
            </div>
            <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="search-detail.html">국보</a></h3>
            <h4 class="mb-2 fs-lg2"><a class="nav-link stretched-link" href="search-detail.html">계유명전씨아미타불비상</a></h3>
          </div>
        </div>
        <!-- Item-->
        <div>
          <div class="position-relative">
            <div class="position-relative mb-3">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i
                  class="fi-heart"></i></button><img class="rounded-3 size-bih" src="${path}/resources/img/국보_제70호_훈민정음(2014년_국보_동산_앱사진).jpg"
                alt="Article img">
            </div>
            <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="search-detail.html">국보</a></h3>
            <h4 class="mb-2 fs-lg2"><a class="nav-link stretched-link" href="search-detail.html">훈민정음</a></h3>
          </div>
        </div>
        <!-- Item-->
        <div>
          <div class="position-relative">
            <div class="position-relative mb-3">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i
                  class="fi-heart"></i></button><img class="rounded-3 size-bih" src="${path}/resources/img/부여_정림사지_오층석탑_정면_(촬영년도___2015년).jpg"
                alt="Article img">
            </div>
            <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="search-detail.html">국보</a></h3>
            <h4 class="mb-2 fs-lg2"><a class="nav-link stretched-link" href="search-detail.html">정림사지_오층석탑</a></h3>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- footer -->
  <jsp:include page="../common/footer.jsp" />
  
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