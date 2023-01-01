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
  <link rel="stylesheet" media="screen" href="${path}/resources/css/collection-main.css">
</head>


<body>

  <main class="page-wrapper">
    
    <jsp:include page="../common/header.jsp"/>

    <!-- 컬렉션 검색칸-->
    <section class="mb-3">
      <!-- 배경이미지, 불투명도-->

      <!-- 배경이미지, 크기, 불투명도-->
      <div class="jarallax bg-dark" data-jarallax data-speed="0.5" style="height: 270px;">
        <span class="img-overlay bg-transparent opacity-80"
          style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"></span>
        <div class="jarallax-img" style="background-image: url(${path}/resources//img/경복궁_근정전_내부_어좌.jpg);"></div>
        <div class="row content-overlay d-flex justify-content-center align-items-end"
          style="height: 170px; padding-top: 140px;">
          <!-- 배경박스-->
          <div class="content-overlay d-block justify-content-center text-center bg-white border-top"
            style="width: 1200px; height: 140px; border-radius: 40px;">
            <!-- 입력박스-->
            <div class="d-block justify-content-center text-center my-2 pt-3 pb-1">
              <div class="row d-flex justify-content-center">
                <div class="col-11 d-flex align-items-center justify-content-end p-0">
                  <div class="col-4 d-flex align-items-center justify-content-center">
                    <h1 class=" text-center m-0 pe-5">컬렉션 검색</h1>
                  </div>
                  <div class="col-7 d-flex justify-content-between">
                    <form class="bg-white d-flex position-relative rounded-md-pill p-1 col-sch-form"
                      style="border: 1px solid rgba(126, 126, 126, 0.521);">
                      <div class="input-group input-group-lg ">
                        <span class="input-group-text text-muted rounded-pill border-0 ms-3 p-1 ">
                          <i class="fi-search"></i>
                        </span>
                        <!-- 컬렉션 입력창-->
                        <input class="form-control border-0 ms-3 p-1 col-sch-input" type="text" placeholder="컬렉션 입력">
                      </div>
                      <div class="d-sm-flex">
                        <button
                          class="btn btn-primary btn-lg rounded-pill w-100 w-md-auto ms-sm-3 col-sch-btn px-4 py-0"
                          type="button">검색하기</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>


    </section>


    <!-- 월간 베스트 컬렉션 -->
    <section class="container mb-lg-4 mt-3" style="padding: 0px 100px;">
      <div class="d-flex align-items-center justify-content-between mb-2 pb-2">
        <h2 class="h2 mb-0 ps-1">베스트 컬렉션</h2>
      </div>
      <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2 px-2">
        <div class="tns-carousel-inner"
          data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:2,&quot;nav&quot;:false}}}">
          <!-- item 1-->
          <div class="position-relative">
            <div class="position-relative mb-2 col-main-box">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="rounded-4" src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="collection-detail.html">문화재컬렉션 1</a>
            </h3>
          </div>
          <!-- item 2-->
          <div class="position-relative">
            <div class="position-relative mb-2 col-main-box">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="rounded-4" src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="collection-detail.html">문화재컬렉션 2</a>
            </h3>
          </div>
          <!-- item 3-->
          <div class="position-relative">
            <div class="position-relative mb-2 col-main-box">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="rounded-4" src="${path}/resources/img/행사3.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="collection-detail.html">문화재컬렉션 3</a>
            </h3>
          </div>
          <!-- item 4-->
          <div class="position-relative">
            <div class="position-relative mb-2 col-main-box">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="rounded-4" src="${path}/resources/img/경주_불국사_다보탑.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="collection-detail.html">문화재컬렉션 4</a>
            </h3>
          </div>
          <!-- item 5-->
          <div class="position-relative">
            <div class="position-relative mb-2 col-main-box">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="rounded-4" src="${path}/resources/img/경복궁_근정전_전경.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="collection-detail.html">문화재컬렉션 5</a>
            </h3>
          </div>
        </div>
      </div>
    </section>


    <!-- 이달의 수집가 -->
    <section>
      <div class="container mt-2" style="padding: 0px 100px;">
        <div class="d-sm-flex align-items-center justify-content-between pb-2 mb-sm-2">
          <h2 class="h3 mb-sm-0 ">이달의 인기 수집가</h2>
        </div>
        
		<!-- 1행 -->
        <div class="d-flex col-sm mt-1">
        
        <!-- 왼쪽 컨텐츠 -->
          <div class="col card mb-2 me-1">
            <div class="card-body p-2">
              <div class="d-flex flex-row justify-content-between">
                <div class="flex-row align-items-center">
                  <div class="flex-row align-items-center month-pp">
                    <a href="collection-list.html">
                      <img class="d-sm-block rounded-circle mt-5 ms-4" src="/mvc/resources/img/행사2.JPG">
                    </a>
                  </div>
                  <div class="ps-sm-3">
                    <h3 class="h6 card-title text-center mt-2">
                      <a class="text-nav text-decoration-none mt-1" href="collection-list.html">
						<span class="ms-2 h5">이름1</span>
                      </a>
                    </h3>
                  </div>
                </div>
                <div class="col-8 d-flex align-items-center justify-content-end ">
                  <!--리스트1-->
                  <div class="month-col-list d-flex align-items-center me-3">
                    <div class="position-relative text-center me-3 align-items-center">
                      <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 " type="button" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-original-title="Add to Favorites">
                        <i class="fi-heart"></i>
                      </button>
                      <img class="mt-1" src="/mvc/resources/img/경복궁_근정전_내부_어좌.jpg">
                      <h4 class="h4 mt-1">
                        <a class="nav-link stretched-link" href="collection-detail.html">컬렉션1</a>
                      </h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <!-- 오른쪽 컨텐츠 -->
          <div class="col card mb-2 ms-1">
            <div class="card-body p-2">
              <div class="d-flex flex-row justify-content-between">
                <div class="flex-row align-items-center">
                  <div class="flex-row align-items-center month-pp">
                    <a href="collection-list.html">
                      <img class="d-sm-block rounded-circle mt-5 ms-4" src="/mvc/resources/img/행사2.JPG">
                    </a>
                  </div>
                  <div class="ps-sm-3">
                    <h3 class="h6 card-title text-center mt-2">
                      <a class="text-nav text-decoration-none mt-1" href="collection-list.html">
						<span class="ms-2 h5">이름2</span>
                      </a>
                    </h3>
                  </div>
                </div>
                <div class="col-8 d-flex align-items-center justify-content-end ">
                  <!--리스트1-->
                  <div class="month-col-list d-flex align-items-center me-3">
                    <div class="position-relative text-center me-3 align-items-center">
                      <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 " type="button" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-original-title="Add to Favorites">
                        <i class="fi-heart"></i>
                      </button>
                      <img class="mt-1" src="/mvc/resources/img/경복궁_근정전_내부_어좌.jpg">
                      <h4 class="h4 mt-1">
                        <a class="nav-link stretched-link" href="collection-detail.html">컬렉션2</a>
                      </h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        
        
        
        
      
      </div>
    </section>


    <!--이달의 컬렉션 -->
    <section class="container mb-5 mt-5" style="padding: 0px 100px;">
      <div class="d-sm-flex align-items-center justify-content-between pb-2 mb-sm-2">
        <h2 class="h3 mb-sm-0">주간 베스트 컬렉션</h2>
      </div>
      <div class="row">
        <!-- item 1 -->
        <div class="col-md-3 " style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <button
              class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
              type="button" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-original-title="Add to Favorites">
              <i class="fi-heart"></i>
            </button>
            <a class="card-img-top overflow-hidden position-relative " href="collection-detail.html">
              <img class="d-block col-top-img" src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg" alt="Image"></a>
            <div class="card-body pb-3">
              <h3 class="fs-base pt-1 mb-2"><a class="nav-link" href="collection-detail.html">반가사유사유사유사유상</a></h3>
            </div><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-0 mb-1"
              href="collection-list.html">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/행사2.JPG">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">Bessie Cooper</h6>
              </div>
            </a>
          </article>
        </div>
       

      </div>
    </section>

    <!--지금뜨는 컬렉션 -->
    <section class="container mb-2 mt-3" style="padding: 0px 100px;">
      <div class="d-sm-flex align-items-center justify-content-between pb-2 mb-sm-2">
        <h2 class="h3 mb-sm-0">지금 뜨는 컬렉션</h2>
      </div>
      <div class="row">
        <!-- item 1 -->
        <div class="col-md-3" style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <button
              class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
              type="button" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-original-title="Add to Favorites">
              <i class="fi-heart"></i>
            </button>
            <a class="card-img-top overflow-hidden position-relative " href="collection-detail.html">
              <img class="d-block col-top-img" src="img/경복궁_근정전_내부_어좌.jpg" alt="Image"></a>
            <div class="card-body pb-3">
              <h3 class="fs-base pt-1 mb-2"><a class="nav-link" href="collection-detail.html">반가사유사유사유사유상</a></h3>
            </div><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-0 mb-1"
              href="collection-list.html">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="img/행사2.JPG">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">Bessie Cooper</h6>
              </div>
            </a>
          </article>
        </div>
        

      </div>
    </section>

  </main>

  
    <jsp:include page="../common/footer.jsp"/>


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
</body>

</html>