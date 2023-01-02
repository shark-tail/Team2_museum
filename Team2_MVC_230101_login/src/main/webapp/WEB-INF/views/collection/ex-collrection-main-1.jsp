<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

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
  <link rel="stylesheet" media="screen" href="${path}/resources/css/collection-main.css?after">
</head>


<body>

  <main class="page-wrapper">
    
    <jsp:include page="../common/header.jsp"/>

    <!-- 컬렉션 검색칸-->
    <section class="mb-3">
      <div class="jarallax bg-dark" data-jarallax data-speed="0.5" style="height: 270px;">
        <!-- 배경 이미지 -->
        <span class="img-overlay bg-transparent opacity-80" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"></span>
        <div class="jarallax-img" style="background-image: url(${path}/resources/img/경복궁_근정전_내부_어좌.jpg);"></div>
        <div class="row content-overlay d-flex justify-content-center align-items-end" style="height: 170px; padding-top: 140px;">
        <!-- 배경 박스 -->
        <div class="content-overlay d-block justify-content-center text-center bg-white border-top rounded-top" style="width: 1200px; height: 140px;">
          <div id="search-collection">
            <div class="col-4 d-flex align-items-center justify-content-center"><h1 class="text-center m-0 pe-5">컬렉션 검색</h1></div>
            <div class="radio-group">
              <label><input type="radio" name="searchType" value="nickname" checked/>닉네임</label>
              <label><input type="radio" name="searchType" value="heritage" />문화재</label>
            </div>
            <form class="bg-white d-flex position-relative rounded-md-pill p-1 col-sch-form" style="border: 1px solid rgba(126, 126, 126, 0.521);">
              <div class="input-group input-group-lg ">
                <span class="input-group-text text-muted rounded-pill border-0 ms-3 p-1 "><i class="fi-search"></i></span>
                <input class="form-control border-0 ms-3 p-1 col-sch-input" type="text" placeholder="컬렉션 입력">
              </div>
              <div class="d-sm-flex"><button class="btn btn-primary btn-lg rounded-pill w-100 w-md-auto ms-sm-3 col-sch-btn px-4 py-0" type="button">검색하기</button></div>
            </form>
          </div>
        </div>
      </div>
    </section>


    <!-- 베스트 컬렉션 (좋아요) -->
    <section class="container mb-lg-4 mt-5" style="padding: 0px 100px;">
      <div class="d-flex align-items-center justify-content-between mb-2 pb-2"><h2 class="h2 mb-0 ps-1">베스트 컬렉션</h2></div>
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
              <img class="rounded-4" src="${path}/resources/img/ex/베스트컬렉션1.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="collection-detail.html">백범힝구님의 컬렉션</a>
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
              <img class="rounded-4" src="${path}/resources/img/ex/베스트컬렉션2.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="collection-detail.html">맥모닝불여일견님의 컬렉션</a>
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
              <img class="rounded-4" src="${path}/resources/img/ex/베스트컬렉션3.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="collection-detail.html">이쑤신장군님의 컬렉션</a>
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
              <img class="rounded-4" src="${path}/resources/img/ex/베스트컬렉션4.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="collection-detail.html">백번구운김님의 컬렉션</a>
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
              <img class="rounded-4" src="${path}/resources/img/ex/베스트컬렉션5.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="collection-detail.html">자축인묘진샤오미님의 컬렉션</a>
            </h3>
          </div>
        </div>
      </div>
    </section>


    <!-- 이달의 수집가 -->
    <section class="mt-5">
      <div class="container mt-2" style="padding: 0px 100px;">
        <div class="d-sm-flex align-items-center justify-content-between pb-2 mb-sm-2"><h2 class="h3 mb-sm-0 ">이달의 수집가</h2></div>
        
		    <!-- 1행 -->
        <div class="d-flex col-sm mt-1">
          <!-- 왼쪽 컨텐츠 -->
            <div class="col card mb-2 me-1">
              <div class="card-body p-2">
                <div class="d-flex flex-row justify-content-between">
                  <div class="flex-row align-items-center">
                    <div class="flex-row align-items-center month-pp">
                      <a href="collection-list.html">
                        <img class="d-sm-block rounded-circle mt-5 ms-4" src="${path}/resources/img/avatars/49.png">
                      </a>
                    </div>
                    <div class="ps-sm-3">
                      <h3 class="h6 card-title text-center mt-2">
                        <a class="text-nav text-decoration-none mt-1" href="collection-list.html">
                          <span class="ms-2 h5">문화재홀릭남님</span>
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
                        <img class="mt-1" src="${path}/resources/img/ex/이달의수집가1.jpg">
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
                        <img class="d-sm-block rounded-circle mt-5 ms-4" src="${path}/resources/img/avatars/48.png">
                      </a>
                    </div>
                    <div class="ps-sm-3">
                      <h3 class="h6 card-title text-center mt-2">
                        <a class="text-nav text-decoration-none mt-1" href="collection-list.html">
                          <span class="ms-2 h5">명륜진사오미님</span>
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
                        <img class="mt-1" src="${path}/resources/img/ex/이달의수집가2.jpg">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>

        <!-- 2행 -->
        <div class="d-flex col-sm mt-1">
          <!-- 왼쪽 컨텐츠 -->
            <div class="col card mb-2 me-1">
              <div class="card-body p-2">
                <div class="d-flex flex-row justify-content-between">
                  <div class="flex-row align-items-center">
                    <div class="flex-row align-items-center month-pp">
                      <a href="collection-list.html">
                        <img class="d-sm-block rounded-circle mt-5 ms-4" src="${path}/resources/img/avatars/47.png">
                      </a>
                    </div>
                    <div class="ps-sm-3">
                      <h3 class="h6 card-title text-center mt-2">
                        <a class="text-nav text-decoration-none mt-1" href="collection-list.html">
                          <span class="ms-2 h5">태정태세문단속님</span>
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
                        <img class="mt-1" src="${path}/resources/img/ex/이달의수집가3.jpg">
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
                        <img class="d-sm-block rounded-circle mt-5 ms-4" src="${path}/resources/img/avatars/46.png">
                      </a>
                    </div>
                    <div class="ps-sm-3">
                      <h3 class="h6 card-title text-center mt-2">
                        <a class="text-nav text-decoration-none mt-1" href="collection-list.html">
                          <span class="ms-2 h5">왕건이님</span>
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
                        <img class="mt-1" src="${path}/resources/img/ex/이달의수집가4.jpg">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
      
      </div>
    </section>


    <!-- 조회수가 많은 -->
    <section class="container mb-5 mt-5" style="padding: 0px 100px;">
      <div class="d-sm-flex align-items-center justify-content-between pb-2 mb-sm-2">
        <h2 class="h3 mb-sm-0">조회수가 많은</h2>
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
              <img class="d-block col-top-img" src="${path}/resources/img/ex/조회수1.jpg" alt="Image"></a>
            <a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-3 mb-1" href="collection-list.html">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/avatars/11.jpg">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">양반집규수님의 컬렉션</h6>
              </div>
            </a>
          </article>
        </div>
        <!-- item 2 -->
        <div class="col-md-3 " style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <button
              class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
              type="button" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-original-title="Add to Favorites">
              <i class="fi-heart"></i>
            </button>
            <a class="card-img-top overflow-hidden position-relative " href="collection-detail.html">
              <img class="d-block col-top-img" src="${path}/resources/img/ex/조회수2.jpg" alt="Image"></a><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-3 mb-1"
              href="collection-list.html">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/avatars/02.jpg">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">문화재청대변인님의 컬렉션</h6>
              </div>
            </a>
          </article>
        </div>
        <!-- item 3 -->
        <div class="col-md-3 " style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <button
              class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
              type="button" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-original-title="Add to Favorites">
              <i class="fi-heart"></i>
            </button>
            <a class="card-img-top overflow-hidden position-relative " href="collection-detail.html">
              <img class="d-block col-top-img" src="${path}/resources/img/ex/조회수3.jpg" alt="Image"></a><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-3 mb-1"
              href="collection-list.html">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/avatars/03.jpg">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">각이살아있다님의 컬렉션</h6>
              </div>
            </a>
          </article>
        </div>
        <!-- item 4 -->
        <div class="col-md-3 " style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <button
              class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
              type="button" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-original-title="Add to Favorites">
              <i class="fi-heart"></i>
            </button>
            <a class="card-img-top overflow-hidden position-relative " href="collection-detail.html">
              <img class="d-block col-top-img" src="${path}/resources/img/ex/조회수4.jpg" alt="Image"></a><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-3 mb-1"
              href="collection-list.html">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/avatars/04.jpg">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">8동구라미8님의 컬렉션</h6>
              </div>
            </a>
          </article>
        </div>
       

      </div>
    </section>

    <!--지금뜨는 컬렉션 -->
    <section class="container mb-2 mt-3" style="padding: 0px 100px;">
      <div class="d-sm-flex align-items-center justify-content-between pb-2 mb-sm-2">
        <h2 class="h3 mb-sm-0">댓글이 많은</h2>
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
              <img class="d-block col-top-img" src="${path}/resources/img/ex/댓글1.jpg" alt="Image"></a><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-3 mb-1"
              href="collection-list.html">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/avatars/05.jpg">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">hahaha님의 컬렉션</h6>
              </div>
            </a>
          </article>
        </div>
        <!-- item 2 -->
        <div class="col-md-3" style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <button
              class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
              type="button" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-original-title="Add to Favorites">
              <i class="fi-heart"></i>
            </button>
            <a class="card-img-top overflow-hidden position-relative " href="collection-detail.html">
              <img class="d-block col-top-img" src="${path}/resources/img/ex/댓글2.jpg" alt="Image"></a><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-3 mb-1"
              href="collection-list.html">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/avatars/06.jpg">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">잘먹는두루미님의 컬렉션</h6>
              </div>
            </a>
          </article>
        </div>
        <!-- item 3 -->
        <div class="col-md-3" style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <button
              class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
              type="button" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-original-title="Add to Favorites">
              <i class="fi-heart"></i>
            </button>
            <a class="card-img-top overflow-hidden position-relative " href="collection-detail.html">
              <img class="d-block col-top-img" src="${path}/resources/img/ex/댓글3.jpg" alt="Image"></a><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-3 mb-1"
              href="collection-list.html">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/avatars/07.jpg">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">king름다움님의 컬렉션</h6>
              </div>
            </a>
          </article>
        </div>
        <!-- item 4 -->
        <div class="col-md-3" style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <button
              class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
              type="button" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-original-title="Add to Favorites">
              <i class="fi-heart"></i>
            </button>
            <a class="card-img-top overflow-hidden position-relative " href="collection-detail.html">
              <img class="d-block col-top-img" src="${path}/resources/img/ex/댓글4.jpg" alt="Image"></a><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-3 mb-1"
              href="collection-list.html">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/avatars/08.jpg">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">벌써12시님의 컬렉션</h6>
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