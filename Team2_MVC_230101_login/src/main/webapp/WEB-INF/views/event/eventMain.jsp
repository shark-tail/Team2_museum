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
  <!-- Main Theme Styles + Bootstrap-->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
  <!-- 채원 직접 작성한 Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
  <!-- 인화스타일시트 -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/event-main.css">
</head>


<body class="bg-secondary">
  <!-- Page loading spinner-->
  <div class="page-loading active">
    <div class="page-loading-inner">
      <div class="page-spinner"></div><span>Loading...</span>
    </div>
  </div>
  <main>

    <jsp:include page="../common/header.jsp"/>

    <!-- Page container-->
    <!-- 배경이미지 -->
    <div class="jarallax bg-dark bg-1" data-jarallax data-speed="0.5" style="height: 400px; ">
      <span class="img-overlay bg-transparent opacity-80"
        style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"></span>
      <div class="jarallax-img" style="background-image: url(${path}/resources/img/판굿\(문화재청\).JPG);"></div>
    </div>

    <div class="page-wrapper bg-2">
      <div class="container mb-md-4 ">
        <!-- Page content-->
        <div class="card card-body p-4 p-md-5 shadow-sm">

          <!-- Search form-->
          <form class="form-group rounded-pill" action="${path}/event-main" >
            <input class="form-control" type="text" name="searchValue" value="${searchValue}" placeholder="What are you looking for?">
            <button class="btn btn-lg btn-primary rounded-pill px-sm-4 px-3" type="submit"><i
                class="fi-search me-sm-2"></i><span class="d-sm-inline d-none">Search</span></button>
          </form>

          <!-- 행사 목록 -->
          <div class="row row-cols-lg-3 row-cols-sm-2 row-cols-1 gy-4 gx-3 gx-lg-4 mb-4">
            <!-- Item-->
          
          	<c:forEach var="item" items="${list}">
            <div class="col pt-2">
              <div class="position-relative1" onclick="location.href='${path}/event-detail?no=${item.e_no}'" style="cursor:pointer;">
                <div class="position-relative mb-3">
                  <img class="" src="${path}/resources/img/event/event${item.e_no}.jpg" alt="${item.e_no}">
                </div>
                <h3 class="mb-2 fs-lg bih-p-1"><a class="nav-link">${item.subTitle}</a>
                </h3>
                <ul class="list-inline mb-0 bih-p-1">
                  <li class="list-inline-item pe-1"><b>${item.sdate} ~ ${item.edate}</b></li><br>
                  <li class="list-inline-item pe-1"><b>${item.sido} ${item.gogun} ${item.subDesc}</b></li><br>
                  <li class="list-inline-item pe-1"><b>무료</b></li><br>
                  <li class="list-inline-item pe-1"><b>${item.subDesc1}</b></li><br><br>
                  <li class="list-inline-item pe-1 bih-m-1"><span class="text-muted">더보기<i
                        class="fi-arrow-long-right"></i></span></li>
                </ul>
              </div>
            </div>
          	</c:forEach>

            <!-- 페이지 넘버링, 더보기로 교체-->
            
          </div>
        </div>
      </div>
    </div>
  </main>

  <jsp:include page="../common/footer.jsp"/>


  <!-- Vendor scrits: js libraries and plugins-->
  <script src="${path}/resources/js/vendor/bootstrap.bundle.min.js"></script>
  <script src="${path}/resources/js/vendor/simplebar.min.js"></script>
  <script src="${path}/resources/js/vendor/smooth-scroll.polyfills.min.js"></script>
  <!-- Main theme script-->
  <script src="${path}/resources/js/theme.js"></script>
</body>

</html>