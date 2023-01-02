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
    
    <!-- Vendor styles-->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/around-swiper-bundle.min.css"/>
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/around-theme.min.css">
    <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
    <!-- 직접 작성한 styles -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/collection-view-all.css?after">
  </head>
  
  <body>
    <!-- Page wrapper-->
    <main class="page-wrapper">
      
      <!-- Clients (Logos autoplay slider)-->
      <section class="pt-sm-1 pt-lg-3 pt-xl-5">
        <div class="container text-center" style="margin-top:90px;">
          <h2 class="h1" style="color: #ffc107">문화재 한 눈에 보기</h2>
          <p class="pb-1 pb-sm-2 pb-md-3 pb-lg-4 mb-3" style="color: #fff; font-size: 1.25rem;">해당 문화재가 궁금하신가요? 클릭해보세요!</p>
        </div>

        <!-- 1행 -->
        <div class="swiper pb-3 pb-sm-4 mb-xl-2" data-swiper-options="{
      &quot;loop&quot;: true,
      &quot;grabCursor&quot;: true,
      &quot;centeredSlides&quot;: true,
      &quot;autoplay&quot;: {
        &quot;delay&quot;: 0,
        &quot;disableOnInteraction&quot;: false
      },
      &quot;freeMode&quot;: true,
      &quot;speed&quot;: 10000,
      &quot;freeModeMomentum&quot;: false,
      &quot;breakpoints&quot;: {
        &quot;0&quot;: { &quot;slidesPerView&quot;: 2 },
        &quot;600&quot;: { &quot;slidesPerView&quot;: 3 },
        &quot;800&quot;: { &quot;slidesPerView&quot;: 4 },
        &quot;1200&quot;: { &quot;slidesPerView&quot;: 5 },
        &quot;1400&quot;: { &quot;slidesPerView&quot;: 6 },
        &quot;1600&quot;: { &quot;slidesPerView&quot;: 7 }
      }
    }">		
          <div class="swiper-wrapper" style="transition-timing-function: linear !important;">
            <div class="swiper-slide">
              <a href="search-detail.html"><img class="d-block mx-auto" src="${path}/resources/img/ex/ex01.jpg"></a>
            </div>
            <div class="swiper-slide">
              <a href="search-detail.html"><img class="d-block mx-auto" src="${path}/resources/img/ex/ex02.jpg"></a>
            </div>
            <div class="swiper-slide">
              <a href="search-detail.html"><img class="d-block mx-auto" src="${path}/resources/img/ex/ex03.jpg"></a>
            </div>
            <div class="swiper-slide">
              <a href="search-detail.html"><img class="d-block mx-auto" src="${path}/resources/img/ex/ex04.jpg"></a>
            </div>
            <div class="swiper-slide">
              <a href="search-detail.html"><img class="d-block mx-auto" src="${path}/resources/img/ex/ex05.jpg"></a>
            </div>
            <div class="swiper-slide">
              <a href="search-detail.html"><img class="d-block mx-auto" src="${path}/resources/img/ex/ex06.jpg"></a>
            </div>
            <div class="swiper-slide">
              <a href="search-detail.html"><img class="d-block mx-auto" src="${path}/resources/img/ex/ex07.jpg"></a>
            </div>
            <div class="swiper-slide">
              <a href="search-detail.html"><img class="d-block mx-auto" src="${path}/resources/img/ex/ex08.jpg"></a>
            </div>
          </div>
        </div>

       
      </section>

    </main>

  
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="${path}/resources/js/vendor/around-smooth-scroll.polyfills.min.js"></script>
    <script src="${path}/resources/js/vendor/around-swiper-bundle.min.js"></script>
    <!-- Main theme script-->
    <script src="${path}/resources/js/vendor/around-theme.min.js"></script>
  </body>
</html>