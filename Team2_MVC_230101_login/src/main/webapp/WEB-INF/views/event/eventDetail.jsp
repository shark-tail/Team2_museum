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
  
  <!-- Page loading styles-->
  <style>
    .page-loading {
      position: fixed;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 100%;
      -webkit-transition: all .4s .2s ease-in-out;
      transition: all .4s .2s ease-in-out;
      background-color: #fff;
      opacity: 0;
      visibility: hidden;
      z-index: 9999;
    }

    .page-loading.active {
      opacity: 1;
      visibility: visible;
    }

    .page-loading-inner {
      position: absolute;
      top: 50%;
      left: 0;
      width: 100%;
      text-align: center;
      -webkit-transform: translateY(-50%);
      transform: translateY(-50%);
      -webkit-transition: opacity .2s ease-in-out;
      transition: opacity .2s ease-in-out;
      opacity: 0;
    }

    .page-loading.active>.page-loading-inner {
      opacity: 1;
    }

    .page-loading-inner>span {
      display: block;
      font-size: 1rem;
      font-weight: normal;
      color: #666276;
      ;
    }

    .page-spinner {
      display: inline-block;
      width: 2.75rem;
      height: 2.75rem;
      margin-bottom: .75rem;
      vertical-align: text-bottom;
      border: .15em solid #bbb7c5;
      border-right-color: transparent;
      border-radius: 50%;
      -webkit-animation: spinner .75s linear infinite;
      animation: spinner .75s linear infinite;
    }

    @-webkit-keyframes spinner {
      100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
      }
    }

    @keyframes spinner {
      100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
      }
    }
  </style>
  <!-- Page loading scripts-->
  <script>
    (function () {
      window.onload = function () {
        var preloader = document.querySelector('.page-loading');
        preloader.classList.remove('active');
        setTimeout(function () {
          preloader.remove();
        }, 2000);
      };
    })();

  </script>
  <!-- Vendor Styles-->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/simplebar.min.css" />
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/lightgallery-bundle.min.css" />
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/tiny-slider.css" />
  <!-- Main Theme Styles + Bootstrap-->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
  <!-- 채원 직접 작성한 Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
  <!-- 인화스타일시트 -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/event-detail.css">
  <!-- 인화아이콘 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<!-- Body-->

<body>
  <!-- Page loading spinner-->
  <div class="page-loading active">
    <div class="page-loading-inner">
      <div class="page-spinner"></div><span>Loading...</span>
    </div>
  </div>
  <main class="page-wrapper">

    <jsp:include page="../common/header.jsp"/>
    
    <!-- Page content-->
    <section class="container pt-5 mt-5">
      <!-- Home>행사일정>행사상세 -->
      <nav class="mb-3 pt-md-3" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item"><a href="evevt-main.html">행사 일정</a></li>
          <li class="breadcrumb-item active">행사 상세</li>
        </ol>
        <hr>
      </nav>
    </section>

    <!-- 행사사진, 행사 정보 -->
    <section class="container mb-md-4">
      <div class="row">
        <div class="mb-md-0 mb-3">
          <!-- 행사 사진 -->
          <div class="pic">
            <img src="${path}/resources/img/공연1.png">
          </div>
          <!-- 행사 정보 -->
          <div class="ps-2 ms-1">
            <h3 class="h5 mb-2 bih-f-1"> 외규장각 의궤, 그 고귀함의 의미</h3>
          </div>
          <hr><br>
          <div class="card py-2 px-sm-4 px-3 shadow-sm bih-s-1">
            <div class="card-body mx-n2">
              <h3 class="h5 mb-2 bih-f-2"> 국립중앙박물관</h3>
              <hr><br><br><br>
              <div class="mb-3 pb-3">
                <ul class="nav row  row-cols-1 gy-1 bih-f-3 bih-s-2">
                  <li class="col"><a class="nav-link p-0 fw-normal d-flex align-items-start"><i
                        class="fi-map-pin mt-1 me-2 align-middle opacity-70"></i>국립중앙박물관 특별전시실</a></li>
                  <li class="col"><a class="nav-link d-inline-block p-0 fw-normal d-inline-flex align-items-start"
                      ><i class="fi-phone mt-1 me-2 align-middle opacity-70"></i>1688-0361</a></li>
                  <li class="col"><a class="nav-link p-0 fw-normal d-flex align-items-start bih-m-1"><i
                        class="bi bi-bank"></i>국립박물관재단</a></li>
                </ul>
                <hr>
              </div>
              <div class="mb-3 pb-3 ">
                <div class="row row-cols-sm-2 row-cols-1">
                  <div class="col mb-sm-0 mb-3 bih-s-3">
                    <h4 class="h5 mb-0"><span class="fs-4">&nbsp;관람료 5,000원</span></h4>
                  </div>
                  <div class="col bih-s-4"><a class="btn btn-primary btn-lg rounded-pill"
                      href="#">&nbsp;&nbsp;&nbsp;결제&nbsp;&nbsp;&nbsp;<i class="fi-chevron-right fs-sm ms-2"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 행사 안내 -->
    <section class="container pb-5 mb-md-4">
      <div class="row">
        <div class="mb-md-0 mb-3">
          <hr>
          <div class="bih-f-4">행사안내</div>
          <div class="bih-f-5">
            2022년 11월 1일(화) ~ 2023년 3월 19일(일)<br>
            월,화,목,금,일요일 10:00~18:00(발권마감 17:20 입장마감 17:30)/ 수,토요일 10:00~21:00(발권마감 20:20 입장마감 20:30)<br>
            *관람 시간 내 관람 원하시는 시간대에 입장 가능합니다.<br>
            *휴관일 1.1.(신정), 1.22.(설날 당일)<br>
            *외규장각 의궤의 존재를 세상에 알리고 연구에 헌신하다 2011년 11월 23일 타계하신 고故 박병선 박사를 기리며 추모기간 동안 무료로 전시장을 개방합니다. (추모기간: 2022. 11.
            21.(월) ~ 11. 27.(일) / 1주일
          </div>
        </div>

      </div>
    </section>

    <!-- 지도 -->
    <section class="container pb-5 mb-md-4">
      <div class="map">
        <i class="bi bi-geo-alt-fill"></i>&nbsp;국립중앙박물관 특별전시실
      </div>
      <div class="row">
        <div class="position-relative bg-size-cover bg-position-center bg-repeat-0 h-100 rounded-3"
          style="background-image: url(img/city-guide/single/map.jpg); min-height: 250px;">
          <div class="d-flex h-100 flex-column align-items-center justify-content-center"><a class="btn btn-primary rounded-pill stretched-link"
              href="#"
              data-iframe="true" data-bs-toggle="lightbox"><i class="fi-route me-2"></i>Get directions</a></div>
        </div>
      </div>
    </section>

    <!-- 유사 행사 -->
    <section class="container pb-5 mb-lg-4">
      <hr>
      <div class="d-flex align-items-center justify-content-between mb-4 pb-2 bih-f-6">
        <h2 class="h3 mb-0">이런 행사는 어때요?</h2><a class="btn btn-link fw-normal ms-sm-3 p-0"
          href="#">더보기<i class="fi-arrow-long-right ms-2"></i></a>
      </div>
      <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2">
        <div class="tns-carousel-inner"
          data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:3,&quot;nav&quot;:false}}}">
          <!-- Item-->
          <div>
            <div class="position-relative">
              <div class="position-relative mb-3">
                <img class="rounded-3 bih-s-5" src="${path}/resources/img/121526_한국문화재재단_풍류_공연_64_국가무형_서도소리_2017_기록화_국립무형유산원.jpg"
                  alt="Article img">
              </div>
              <h3 class="mb-2"><a class="nav-link stretched-link" href="event-detail.html">서도소리</a></h3>
              <h3 class="mb-2"><a class="nav-link bih-f-7">2022.12.1-2023.3.4</a></h3>
              <h3 class="mb-2"><a class="nav-link bih-f-7">서울시 광화문 샤롯데시어터</a></h3>
            </div>
          </div>
          <!-- Item-->
          <div>
            <div class="position-relative">
              <div class="position-relative mb-3">
                <img class="rounded-3 bih-s-5" src="${path}/resources/img/8579_사자춤_앉아서_모래기_치기_국가무형_북청사자놀음_2001_서울_기록화_국립무형유산원__.jpg"
                  alt="Article img">
              </div>
              <h3 class="mb-2"><a class="nav-link stretched-link" href="event-detail.html">북청사자놀음</a></h3>
              <h3 class="mb-2"><a class="nav-link bih-f-7">2023.7.4-2023.9.23</a></h3>
              <h3 class="mb-2"><a class="nav-link bih-f-7">서울특별시</a></h3>
            </div>
          </div>
          <!-- Item-->
          <div>
            <div class="position-relative">
              <div class="position-relative mb-3">
                <img class="rounded-3 bih-s-5" src="${path}/resources/img/82876_정전_뒤에서_본_전경_국가무형_종묘제례악_2008_서울_기록화_국립무형유산원.jpg"
                  alt="Article img">
              </div>
              <h3 class="mb-2"><a class="nav-link stretched-link" href="event-detail.html">김천금릉빗내농악</a></h3>
              <h3 class="mb-2"><a class="nav-link bih-f-7">2023.6.4-2023.8.9</a></h3>
              <h3 class="mb-2"><a class="nav-link bih-f-7">경상북도 김천시</a></h3>
            </div>
          </div>
          <!-- Item-->
          <div>
            <div class="position-relative">
              <div class="position-relative mb-3">
                <img class="rounded-3 bih-s-5" src="${path}/resources/img/판굿(문화재청).JPG" alt="Article img">
              </div>
              <h3 class="mb-2"><a class="nav-link stretched-link" href="event-detail.html">판굿</a></h3>
              <h3 class="mb-2"><a class="nav-link bih-f-7">2023.6.1-2023.7.4</a></h3>
              <h3 class="mb-2"><a class="nav-link bih-f-7">서울시 광화문 광장</a></h3>
            </div>
          </div>

        </div>
      </div>
    </section>
  </main>

  <jsp:include page="../common/footer.jsp"/>

  <!-- Vendor scrits: js libraries and plugins-->
  <script src="${path}/resources/js/vendor/bootstrap.bundle.min.js"></script>
  <script src="${path}/resources/js/vendor/simplebar.min.js"></script>
  <script src="${path}/resources/js/vendor/smooth-scroll.polyfills.min.js"></script>
  <script src="${path}/resources/js/vendor/lightgallery.min.js"></script>
  <script src="${path}/resources/js/vendor/lg-fullscreen.min.js"></script>
  <script src="${path}/resources/js/vendor/lg-zoom.min.js"></script>
  <script src="${path}/resources/js/vendor/lg-thumbnail.min.js"></script>
  <script src="${path}/resources/js/vendor/flatpickr.min.js"></script>
  <script src="${path}/resources/js/vendor/tiny-slider.js"></script>

  <!-- Main theme script-->
  <script src="${path}/resources/js/theme.js"></script>
</body>

</html>