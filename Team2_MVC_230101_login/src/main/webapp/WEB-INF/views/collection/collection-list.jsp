<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>컬렉션 리스트</title>

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
  <link rel="stylesheet" media="screen" href="${path}/resources/css/collection-list.css">

</head>


<body>


  <main class="page-wrapper">

    <jsp:include page="../common/header.jsp"/>

    <!-- 상단 프로필-->
    <section class="mb-3">
      <!-- 배경이미지, 불투명도-->

      <!-- 배경이미지, 크기, 불투명도-->
      <div class="jarallax bg-dark" style="height: 270px;">
        <span class="img-overlay bg-transparent opacity-80"
          style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"></span>
        <div class="jarallax-img" style="background-image: url(img/svisual-2.jpg);"></div>
        <div class="row content-overlay d-flex justify-content-center align-items-end"
          style="height: 170px; padding-top: 140px;">
          <!-- 배경박스-->
          <div class="content-overlay d-block justify-content-center text-center bg-white"
            style="width: 1200px; height:200px; border-top-left-radius:40px; border-top-right-radius:40px;">
            <!-- 검색하기-->
            <div class="d-block justify-content-center text-center my-2 pt-4">
              <div class="row d-flex justify-content-center">
                <div class="col-11 d-flex align-items-center flex-column p-0">
                  <div class="col-11 d-flex align-content-around flex-column pt-2" style="height: 65px;">
                    <div class="d-flex justify-content-between">
                      <div class="d-flex ms-4">
                        <h1 class="mt-2 mb-0">&nbsp; 컬렉션 리스트</h1>
                      </div>
                      <!-- 입력박스-->
                      <div class="d-flex justify-content-between ps-5">
                        <form class="bg-white d-flex position-relative rounded-md-pill p-1 col-sch-form"
                          style="border:1px solid rgba(126, 126, 126, 0.521);">
                          <div class="input-group input-group-lg" >
                            <span class="input-group-text text-muted rounded-pill border-0 ms-3 p-1" >
                              <i class="fi-search"></i>
                            </span>
                            <!-- 컬렉션 입력창-->
                            <input class="form-control border-0 ms-3 p-1 col-sch-input fs-5" type="text" style="width: 400px;"
                              placeholder="컬렉션 입력">
                          </div>
                          <div class="d-sm-flex">
                            <button
                              class="btn btn-primary btn-lg rounded-pill w-100 w-md-auto ms-sm-3 col-sch-btn px-4 py-0 border-0" style="background-color: var(--clr-orange);"
                              type="button">검색하기</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <div class="d-block d-flex pt-2 mt-4">
                    <hr class="mb-5" style="border: .5px solid rgba(138, 137, 137, 0.389); width:1100px;" />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </section>

    <!-- 컬렉션 리스트-->
    <section>
      <div class="container" style="padding: 0 150px; margin-top: 30px;">
        <!-- item-->
        <div class="card card-horizontal my-3">
          <!-- 이미지-->
          <div class="col-list ">
            <img src="img/국보_국보_청자_투각칠보문뚜껑_향로.jpg">
          </div>
          <!-- 컬렉션 리스트명, 버튼-->
          <div class="align-content-around p-2" style="width: 610px; height: 250px;">
            <div class="p-2 ps-4 position-absolute" style="width: 610px; height: 135px;">
              <h3 class="h3 pt-3 mb-2"><a class="nav-link stretched-link" href="#">경주빵 먹으면서 보는
                  코스</a></h3>
              <p class="fs-sm text-muted pt-3">경주빵 맛있어. 또 먹어</p>
            </div>
            <!-- 좋아고, 댓글 박스-->
            <div class="d-flex flex-row justify-content-around py-3 px-3 ms-2"
              style="margin-top: 135px; border-top:1px solid rgba(132, 132, 132, 0.395);">
              <div class="d-inline-block d-flex ps-4">
                <a class="icon-box card flex-row align-items-center border-0 rounded-pill py-2 ps-2 pe-4"
                   style="width:9rem;">
                  <div class="icon-box-media bg-light rounded-circle me-2"><i class="fi-chat-circle"></i>
                  </div>
                  <h3 class="icon-box-title fs-4 ps-1 mb-0">댓글</h3>
                </a>
              </div>
              <div class="d-inline-block d-flex ">
                <a class="icon-box card flex-row align-items-center border-0 rounded-pill py-2 ps-2 pe-4"
                  style="width:10.5rem;">
                  <div class="icon-box-media rounded-circle me-2"><i class="fi-heart-filled"></i>
                  </div>
                  <h3 class="icon-box-title fs-4 ps-1 mb-0">좋아요</h3>
                </a>
              </div>
            </div>
          </div>
        </div>





      </div>
    </section>


    <!-- 페이지 넘기기-->
    <section class="my-5">
      <div class="container d-flex justify-content-center">
        <nav aria-label="Page navigation example">
          <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#"><i class="fi-chevron-left me-2"></i>Prev</a></li>
            <li class="page-item d-sm-none"><span class="page-link page-link-static">2 / 5</span></li>
            <li class="page-item d-none d-sm-block"><a class="page-link" href="#">1</a></li>
            <li class="page-item active d-none d-sm-block" aria-current="page"><span class="page-link">2<span
                  class="visually-hidden">(current)</span></span></li>
            <li class="page-item d-none d-sm-block"><a class="page-link" href="#">3</a></li>
            <li class="page-item d-none d-sm-block"><a class="page-link" href="#">4</a></li>
            <li class="page-item d-none d-sm-block"><a class="page-link" href="#">5</a></li>
            <li class="page-item"><a class="page-link" href="#" aria-label="Next">Next<i
                  class="fi-chevron-right ms-2"></i></a></li>
          </ul>
        </nav>
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
  <script src="${path}/resources/js/collection-list.js"></script>
</body>

</html>