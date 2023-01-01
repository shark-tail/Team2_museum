<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>테마별 문화재 투어</title>

  <!-- SEO Meta Tags-->
  <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
  <meta name="keywords"
    content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
  <meta name="author" content="Createx Studio">

  <!-- Viewport-->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Vendor Styles-->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/simplebar.min.css" />
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/tiny-slider.css" />
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/flatpickr.min.css" />
  <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/page-loading.css">
  <!-- 직접 작성한 Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/header-footer.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/tour-map.css">
  <!-- j쿼리-->
  <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>

</head>


<body>
  <!-- Page loading spinner-->
  <div class="page-loading active">
    <div class="page-loading-inner">
      <div class="page-spinner"></div><span>Loading...</span>
    </div>
  </div>

  <main class="page-wrapper">
    <!-- header -->
    <jsp:include page="../common/header.jsp" />

    <!-- 선택 안내 문구-->
    <section>
      <div class="container mt-5" style="padding:0px 150px; ">
        <div class="card border-0">
          <div class="card-body py-0">
            <h2 class="card-title mb-2 text-center">테마별 문화재 투어</h2>
            <p class="card-text fs-lg text-end">* 길을 선택하면 지도 아래 코스가 표시됩니다.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- 투어지도-->
    <section>
      <div class="container mb-5" style="padding:0px 150px;">
        <!-- 지도 이미지 -->
        <div class="card mt-2 big-map position-relative" style="border-radius: 80px !important;">
          <img src="${path}/resources/img/map/base-map.jpg" class="card-img" alt="tour-map"
            style="border-radius: 80px !important;">
          <div class="card-img-overlay p-5">
            <!-- 지도에서 선택 총 11개의 이미지 버튼. 인덱스 바꾸면 안됨 -->
            <div id="tm-btn">
              <!--예시 이미지, 스탬프 설명-->
              <div class="d-inline-block position-absolute active" style="bottom:-80px; left:50px;">
                <button class="btn btn-primary fs-4 border-3 rounded-4 py-2 px-3 " type="button">스템프예시</button>
              </div>
              <!-- item1-->
              <div class="d-inline-block rounded-pill bg-white bg-opacity-75 position-absolute"
                style="bottom:26%; left:65%;">
                <button class="btn btn-outline-primary border-3 py-2 px-3 rounded-pill" type="button">가야 문명의 길</button>
              </div>
              <!-- item2-->
              <div class="d-inline-block rounded-pill bg-white bg-opacity-75 position-absolute"
                style="top:10%; left:72%;">
                <button class="btn btn-outline-primary border-3 py-2 px-3 rounded-pill" type="button">관동 풍류의길</button>
              </div>
              <!-- item3-->
              <div class="d-inline-block rounded-pill bg-white bg-opacity-75 position-absolute"
                style="top:42%; left:26%;">
                <button class="btn btn-outline-primary border-3 py-2 px-3 rounded-pill " type="button">백제고도의 길</button>
              </div>
              <!-- item4-->
              <div class="d-inline-block rounded-pill bg-white bg-opacity-75 position-absolute"
                style="top:43%; left:55%;">
                <button class="btn btn-outline-primary border-3 py-2 px-3 rounded-pill " type="button">산사의 길</button>
              </div>
              <!-- item5-->
              <div class="d-inline-block rounded-pill bg-white bg-opacity-75 position-absolute"
                style="top:63%; left:24%;">
                <button class="btn btn-outline-primary border-3 py-2 px-3 rounded-pill " type="button">서원의 길</button>
              </div>
              <!-- item6-->
              <div class="d-inline-block rounded-pill bg-white bg-opacity-75 position-absolute"
                style="top:5%; left:28%;">
                <button class="btn btn-outline-primary border-3 py-2 px-3 rounded-pill " type="button">선사 지질의 길</button>
              </div>
              <!-- item7-->
              <div class="d-inline-block rounded-pill bg-white bg-opacity-75 position-absolute"
                style="top:85%; left:17%;">
                <button class="btn btn-outline-primary border-3 py-2 px-3 rounded-pill " type="button">설화와 자연의
                  길</button>
              </div>
              <!-- item8-->
              <div class="d-inline-block rounded-pill bg-white bg-opacity-75 position-absolute"
                style="top:52%; left:33%;">
                <button class="btn btn-outline-primary border-3 py-2 px-3 rounded-pill " type="button">소릿길</button>
              </div>
              <!-- item9-->
              <div class="d-inline-block rounded-pill bg-white bg-opacity-75 position-absolute"
                style="top:20%; left:25%;">
                <button class="btn btn-outline-primary border-3 py-2 px-3 rounded-pill " type="button">왕가의 길</button>
              </div>
              <!-- item10-->
              <div class="d-inline-block rounded-pill bg-white bg-opacity-75 position-absolute"
                style="top:36%; left:75%;">
                <button class="btn btn-outline-primary border-3 py-2 px-3 rounded-pill " type="button">천년 정신의 길</button>
              </div>
            </div>

            <!-- 설명글-->
            <div class="d-inline-block bg-white p-3 rounded-4 card position-absolute "
              style="bottom:-70px; right:-70px;">
              <img src="${path}/resources/img/map/투어설명글.jpg" style="width: auto; height: 270px;">
            </div>

          </div>
        </div>
      </div>
    </section>


    <!-- 선택된 경로 탭으로 연결, 스탬프 히든 상태로 넣기-->
    <section>
      <div class="container p-0">
        <div class="pt-3" style="margin: 80px 0px 5px 0px;">
          <hr class="border-1" />
        </div>

        <!-- 탭 내용칸 11개의 div 인덱스 주의-->
        <div id="tab-content0">
          <!-- 내용-예시 -->
          <div class="mt-3">
            <div>
              <h3 style="margin-left: 150px;">문화재를 방문하고 스탬프 찍자!</h3>
              <p style="margin-left: 150px;">해당 문화재투어를 방문을 인증하면 스탬프가 찍힘니다.</p>
            </div>
            <!--코스이미지-->
            <div class="my-3 position-relative">
              <img src="${path}/resources/img/map/백제고도의길-투어.jpg" class="card-img rounded-0">
              <!-- 스탬프 1행-->
              <div class="position-absolute card-img-overlay " style="top:12.7%; left:53.6%;">
                <span class="me-2 opacity-90"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-90"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
              <!-- 스탬프 2행-->
              <div class="position-absolute card-img-overlay" style="top:45.7%; left:60.3%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-90"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
            </div>
          </div>
          <!-- 내용1 -->
          <div style="display: none;">
            <!-- <div>
                <h3 style="margin-left: 150px;">가야 문명의 길</h3>
              </div> -->
            <!--코스이미지-->
            <div class="mt-3 mb-1 position-relative">
              <img src="${path}/resources/img/map/가야문명의길-투어.jpg" class="card-img rounded-0">
              <!-- 스탬프 1행-->
              <div class="position-absolute card-img-overlay " style="top:12.7%; left:53.6%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
              <!-- 스탬프 2행-->
              <div class="position-absolute card-img-overlay" style="top:45.7%; left:41.6%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
            </div>
            <!-- 설명그림-->
            <div class="">
              <img src="${path}/resources/img/map/가야.jpg" class="card-img rounded-0">
            </div>
          </div>
          <!-- 내용2 -->
          <div style="display: none;">
            <!-- <div>
                <h3 style="margin-left: 150px;">관동 풍류의 길</h3>
              </div> -->
            <!--코스이미지-->
            <div class="mt-3 mb-1 position-relative">
              <img src="${path}/resources/img/map/관동풍류의길-투어.jpg" class="card-img rounded-0">
              <!-- 스탬프 1행-->
              <div class="position-absolute card-img-overlay " style="top:12.7%; left:53.6%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
              <!-- 스탬프 2행-->
              <div class="position-absolute card-img-overlay" style="top:45.7%; left:64.2%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
            </div>
            <!-- 설명그림-->
            <div class="">
              <img src="${path}/resources/img/map/관동.jpg" class="card-img rounded-0">
            </div>
          </div>
          <!-- 내용3 -->
          <div style="display: none;">
            <div>
              <!-- <h3 style="margin-left: 150px;">백제고도의 길</h3> -->
            </div>
            <!--코스이미지-->
            <div class="my-3 mb-1 position-relative">
              <img src="${path}/resources/img/map/백제고도의길-투어.jpg" class="card-img rounded-0">
              <!-- 스탬프 1행-->
              <div class="position-absolute card-img-overlay " style="top:12.7%; left:53.6%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
              <!-- 스탬프 2행-->
              <div class="position-absolute card-img-overlay" style="top:45.7%; left:60.3%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
            </div>
            <!-- 설명그림-->
            <div class="">
              <img src="${path}/resources/img/map/백제.jpg" class="card-img rounded-0">
            </div>
          </div>
          <!-- 내용4 -->
          <div style="display: none;">
            <div>
              <!-- <h3 style="margin-left: 150px;">산사의 길</h3> -->
            </div>
            <!--코스이미지-->
            <div class="my-3 mb-1 position-relative">
              <img src="${path}/resources/img/map/산사의길-투어.jpg" class="card-img rounded-0">
              <!-- 스탬프 1행-->
              <div class="position-absolute card-img-overlay " style="top:12.7%; left:53.6%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
              <!-- 스탬프 2행-->
              <div class="position-absolute card-img-overlay" style="top:45.7%; left:41.5%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
            </div>
            <!-- 설명그림-->
            <div class="">
              <img src="${path}/resources/img/map/산사.jpg" class="card-img rounded-0">
            </div>
          </div>
          <!-- 내용5 -->
          <div style="display: none;">
            <div>
              <!-- <h3 style="margin-left: 150px;">서원의 길</h3> -->
            </div>
            <!--코스이미지-->
            <div class="my-3 mb-1 position-relative">
              <img src="${path}/resources/img/map/서원의길-투어.jpg" class="card-img rounded-0">
              <!-- 스탬프 1행-->
              <div class="position-absolute card-img-overlay " style="top:12.7%; left:53.6%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
              <!-- 스탬프 2행-->
              <div class="position-absolute card-img-overlay" style="top:45.7%; left:41.5%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
            </div>
            <!-- 설명그림-->
            <div class="">
              <img src="${path}/resources/img/map/서원.jpg" class="card-img rounded-0">
            </div>
          </div>
          <!-- 내용6 -->
          <div style="display: none;">
            <div>
              <!-- <h3 style="margin-left: 150px;">선사 지질의 길</h3> -->
            </div>
            <!--코스이미지-->
            <div class="my-3 mb-1 position-relative">
              <img src="${path}/resources/img/map/선사지질의길-투어.jpg" class="card-img rounded-0">
              <!-- 스탬프 1행-->
              <div class="position-absolute card-img-overlay " style="top:12.7%; left:53.6%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
              <!-- 스탬프 2행-->
              <div class="position-absolute card-img-overlay" style="top:45.7%; left:60.3%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
            </div>
            <!-- 설명그림-->
            <div class="">
              <img src="${path}/resources/img/map/선사.jpg" class="card-img rounded-0">
            </div>
          </div>
          <!-- 내용7 -->
          <div style="display: none;">
            <div>
              <!-- <h3 style="margin-left: 150px;">설화와 자연의 길</h3> -->
            </div>
            <!--코스이미지-->
            <div class="my-3 mb-1 position-relative">
              <img src="${path}/resources/img/map/설화와자연의길-투어.jpg" class="card-img rounded-0">
              <!-- 스탬프 1행-->
              <div class="position-absolute card-img-overlay " style="top:12.7%; left:53.6%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
              <!-- 스탬프 2행-->
              <div class="position-absolute card-img-overlay" style="top:45.7%; left:50.8%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
            </div>
            <!-- 설명그림-->
            <div class="">
              <img src="${path}/resources/img/map/설화.jpg" class="card-img rounded-0">
            </div>
          </div>
          <!-- 내용8 -->
          <div style="display: none;">
            <div>
              <!-- <h3 style="margin-left: 150px;">소릿길</h3> -->
            </div>
            <!--코스이미지-->
            <div class="my-3 mb-1 position-relative">
              <img src="${path}/resources/img/map/소릿길-투어.jpg" class="card-img rounded-0">
              <!-- 스탬프 1행-->
              <div class="position-absolute card-img-overlay " style="top:12.7%; left:53.6%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
              <!-- 스탬프 2행-->
              <div class="position-absolute card-img-overlay" style="top:45.7%; left:57.5%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
            </div>
            <!-- 설명그림-->
            <div class="">
              <img src="${path}/resources/img/map/소릿.jpg" class="card-img rounded-0">
            </div>
          </div>
          <!-- 내용9 -->
          <div style="display: none;">
            <div>
              <!-- <h3 style="margin-left: 150px;">왕가의 길</h3> -->
            </div>
            <!--코스이미지-->
            <div class="my-3 mb-1 position-relative">
              <img src="${path}/resources/img/map/왕가의길-투어.jpg" class="card-img rounded-0">
              <!-- 스탬프 1행-->
              <div class="position-absolute card-img-overlay " style="top:12.7%; left:49.6%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
              <!-- 스탬프 2행-->
              <div class="position-absolute card-img-overlay" style="top:45.5%; left:46.9%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
            </div>
            <!-- 설명그림-->
            <div class="">
              <img src="${path}/resources/img/map/왕가.jpg" class="card-img rounded-0">
            </div>
          </div>
          <!-- 내용10 -->
          <div style="display: none;">
            <div>
              <!-- <h3 style="margin-left: 150px;">천연 정신의 길</h3> -->
            </div>
            <!--코스이미지-->
            <div class="my-3 mb-1 position-relative">
              <img src="${path}/resources/img/map/천년정신의길-투어.jpg" class="card-img rounded-0">
              <!-- 스탬프 1행-->
              <div class="position-absolute card-img-overlay " style="top:12.7%; left:53.6%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
              <!-- 스탬프 2행-->
              <div class="position-absolute card-img-overlay" style="top:45.7%; left:50.8%;">
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
                <span class="me-2 opacity-15"><img src="${path}/resources/img/map/마패스탬프.png"
                    style="height: 80px" /></span>
              </div>
            </div>
            <!-- 설명그림-->
            <div class="">
              <img src="${path}/resources/img/map/천년.jpg" class="card-img rounded-0">
            </div>
          </div>

        </div>



      </div><!-- 탭 내용칸 종료-->

      </div>






      </div>
      </div>

      </div>
      </div>
      </div>

    </section>

  </main>

  <!-- Footer-->
  <jsp:include page="../common/footer.jsp" />

  <!-- Back to top button-->
  <a class="btn-scroll-top" href="#top" data-scroll><span
      class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i
      class="btn-scroll-top-icon fi-chevron-up"></i></a>

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
  <script src="${path}/resources/js/tour-map.js"></script>
</body>

</html>