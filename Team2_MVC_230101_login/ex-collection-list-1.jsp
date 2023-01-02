<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>나만의 박물관</title>

<!-- Viewport-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Vendor Styles-->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/vendor/simplebar.min.css" />
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/vendor/tiny-slider.css" />
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/vendor/flatpickr.min.css" />
<!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/theme.css">
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/common/page-loading.css">
<!-- 직접 작성한 Styles -->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/common/common.css">
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/common/header-footer.css">
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/collection-list.css?after">
	
	<script type="text/javascript" >
	
	function count1(type)  {
  const resultElement = document.getElementById('result');
  
  let number = resultElement.innerText;
  
  if(type === 'plus') {
    number = parseInt(number) + 1;
  }
  resultElement.innerText = number;
 
}
  function count2(type)  {
  const resultElement = document.getElementById('result2');
  
  let number = resultElement.innerText;
  
  if(type === 'plus2') {
    number = parseInt(number) + 1;
  }
  resultElement.innerText = number;
 
}
  function count3(type)  {
  const resultElement = document.getElementById('result3');
  
  let number = resultElement.innerText;
  
  if(type === 'plus3') {
    number = parseInt(number) + 1;
  }
  resultElement.innerText = number;
 
}
  function count4(type)  {
  const resultElement = document.getElementById('result4');
  
  let number = resultElement.innerText;
  
  if(type === 'plus4') {
    number = parseInt(number) + 1;
  }
  resultElement.innerText = number;
 
}
  </script> 
  
</head>


<body>


	<main class="page-wrapper">

		<jsp:include page="../common/header.jsp" />

		<!-- 상단 프로필-->
		<section class="mb-3">
			<!-- 배경이미지, 불투명도-->

			<!-- 배경이미지, 크기, 불투명도-->
			<div class="jarallax bg-dark" style="height: 270px;">
				<div class="jarallax-img"
					style="background-image: url(${path}/resources/img/svisual-2.jpg);"></div>
				<div
					class="row content-overlay d-flex justify-content-center align-items-end"
					style="height: 170px; padding-top: 140px;">
					<!-- 배경박스-->
					<div class="content-overlay d-block justify-content-center text-center bg-white border-top rounded-top" style="width: 1200px; height: 140px;">
          <div id="search-collection">
            <div class="col-4 d-flex align-items-center justify-content-center"><h1 class="text-center m-0 pe-5">컬렉션 검색</h1></div>
            <div class="radio-group">
              <label><input type="radio" name="searchType" value="nickname" checked/>닉네임</label>
              <label><input type="radio" name="searchType" value="heritage" />문화재</label>
            </div>
            <form action="${path}/ex-collection-list" class="bg-white d-flex position-relative rounded-md-pill p-1 col-sch-form" style="border: 1px solid rgba(126, 126, 126, 0.521);">
              <div class="input-group input-group-lg ">
                <span class="input-group-text text-muted rounded-pill border-0 ms-3 p-1 "><i class="fi-search"></i></span>
                <input class="form-control border-0 ms-3 p-1 col-sch-input" type="text" name="searchValue" placeholder="컬렉션 검색..." value="${param.searchValue}">
              </div>
              <div class="d-sm-flex">
              	<button class="btn btn-primary btn-lg rounded-pill w-100 w-md-auto ms-sm-3 col-sch-btn px-4 py-0" type="button">검색하기</button>
              </div>
            </form>
          </div>
        </div>
				</div>
			</div>
			</div>
		</section>

		<!-- 컬렉션 리스트-->
		<section>
			<div class="container" style="padding: 0 150px; margin-top: 30px;">
				<!-- item 1-->
				<div class="card card-horizontal my-3">
					<!-- 이미지-->
					<div class="col-list ">
						<img src="${path}/resources/img/ex/감지금니 대방광불화엄경 권15.jpg">
					</div>
					<!-- 컬렉션 리스트명, 버튼-->
					<div class="align-content-around p-2"
						style="width: 610px; height: 250px;">
						<div class="p-2 ps-5 position-absolute"
							style="width: 610px; height: 135px;">
							<h3 class="h3 pt-3 mb-2 mt-4">
								<a class="nav-link stretched-link" href="#">경주는또먹어님의 컬렉션</a>
							</h3>
						</div>
						<!-- 좋아고, 댓글 박스-->
						<div class="d-flex flex-row justify-content-around py-3 px-3"
							style="margin-top: 135px; border-top: 1px solid rgba(132, 132, 132, 0.395);">
							<div class="d-inline-block d-flex ps-4">
								<a
									class="icon-box card flex-row align-items-center border-0 rounded-pill py-2 ps-2 pe-4"
									style="width: 9rem;">
									<div class="icon-box-media bg-light rounded-circle me-2">
										<i class="fi-chat-circle"></i>
									</div>
									<h3 class="icon-box-title fs-4 ps-1 mb-0">0</h3>
								</a>
							</div>
							<div class="d-inline-block d-flex ">
								<a
									class="icon-box card flex-row align-items-center border-0 rounded-pill py-2 ps-2 pe-4"
									style="width: 10.5rem;">
									<div class="icon-box-media rounded-circle me-2">
										<button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
								              	onclick='count1("plus")'
								                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
								                data-bs-original-title="좋아요 +1"><i class="fi-heart-filled"></i></button>
									</div>
									<h3 class="icon-box-title fs-4 ps-1 mb-0" id='result'>19</h3>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- item 2-->
				<div class="card card-horizontal my-3">
					<!-- 이미지-->
					<div class="col-list ">
						<img src="${path}/resources/img/ex/부산 범어사 조계문.jpg">
					</div>
					<!-- 컬렉션 리스트명, 버튼-->
					<div class="align-content-around p-2"
						style="width: 610px; height: 250px;">
						<div class="p-2 ps-5 position-absolute"
							style="width: 610px; height: 135px;">
							<h3 class="h3 pt-3 mb-2 mt-4">
								<a class="nav-link stretched-link" href="#">경주에서경주해님의 컬렉션</a>
							</h3>
						</div>
						<!-- 좋아고, 댓글 박스-->
						<div class="d-flex flex-row justify-content-around py-3 px-3"
							style="margin-top: 135px; border-top: 1px solid rgba(132, 132, 132, 0.395);">
							<div class="d-inline-block d-flex ps-4">
								<a
									class="icon-box card flex-row align-items-center border-0 rounded-pill py-2 ps-2 pe-4"
									style="width: 9rem;">
									<div class="icon-box-media bg-light rounded-circle me-2">
										<i class="fi-chat-circle"></i>
									</div>
									<h3 class="icon-box-title fs-4 ps-1 mb-0">1</h3>
								</a>
							</div>
							<div class="d-inline-block d-flex ">
								<a
									class="icon-box card flex-row align-items-center border-0 rounded-pill py-2 ps-2 pe-4"
									style="width: 10.5rem;">
									<div class="icon-box-media rounded-circle me-2">
										<button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
								              	onclick='count2("plus2")'
								                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
								                data-bs-original-title="좋아요 +1"><i class="fi-heart-filled"></i></button>
									</div>
									<h3 class="icon-box-title fs-4 ps-1 mb-0" id="result2">55</h3>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- item 3-->
				<div class="card card-horizontal my-3">
					<!-- 이미지-->
					<div class="col-list ">
						<img src="${path}/resources/img/ex/봉사조선창화시권.jpg">
					</div>
					<!-- 컬렉션 리스트명, 버튼-->
					<div class="align-content-around p-2"
						style="width: 610px; height: 250px;">
						<div class="p-2 ps-5 position-absolute"
							style="width: 610px; height: 135px;">
							<h3 class="h3 pt-3 mb-2 mt-4">
								<a class="nav-link stretched-link" href="#">해뜨는경주님의 컬렉션</a>
							</h3>
						</div>
						<!-- 좋아고, 댓글 박스-->
						<div class="d-flex flex-row justify-content-around py-3 px-3"
							style="margin-top: 135px; border-top: 1px solid rgba(132, 132, 132, 0.395);">
							<div class="d-inline-block d-flex ps-4">
								<a
									class="icon-box card flex-row align-items-center border-0 rounded-pill py-2 ps-2 pe-4"
									style="width: 9rem;">
									<div class="icon-box-media bg-light rounded-circle me-2">
										<i class="fi-chat-circle"></i>
									</div>
									<h3 class="icon-box-title fs-4 ps-1 mb-0">2</h3>
								</a>
							</div>
							<div class="d-inline-block d-flex ">
								<a
									class="icon-box card flex-row align-items-center border-0 rounded-pill py-2 ps-2 pe-4"
									style="width: 10.5rem;">
									<div class="icon-box-media rounded-circle me-2">
										<button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
								              	onclick='count3("plus3")'
								                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
								                data-bs-original-title="좋아요 +1"><i class="fi-heart-filled"></i></button>
									</div>
									<h3 class="icon-box-title fs-4 ps-1 mb-0" id="result3">13</h3>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- item 4-->
				<div class="card card-horizontal my-3">
					<!-- 이미지-->
					<div class="col-list ">
						<img src="${path}/resources/img/ex/자치통감 권131~135, 246~250.jpg">
					</div>
					<!-- 컬렉션 리스트명, 버튼-->
					<div class="align-content-around p-2"
						style="width: 610px; height: 250px;">
						<div class="p-2 ps-5 position-absolute"
							style="width: 610px; height: 135px;">
							<h3 class="h3 pt-3 mb-2 mt-4">
								<a class="nav-link stretched-link" href="#">경주는경듀님의 컬렉션</a>
							</h3>
						</div>
						<!-- 좋아고, 댓글 박스-->
						<div class="d-flex flex-row justify-content-around py-3 px-3"
							style="margin-top: 135px; border-top: 1px solid rgba(132, 132, 132, 0.395);">
							<div class="d-inline-block d-flex ps-4">
								<a
									class="icon-box card flex-row align-items-center border-0 rounded-pill py-2 ps-2 pe-4"
									style="width: 9rem;">
									<div class="icon-box-media bg-light rounded-circle me-2">
										<i class="fi-chat-circle"></i>
									</div>
									<h3 class="icon-box-title fs-4 ps-1 mb-0">3</h3>
								</a>
							</div>
							<div class="d-inline-block d-flex ">
								<a
									class="icon-box card flex-row align-items-center border-0 rounded-pill py-2 ps-2 pe-4"
									style="width: 10.5rem;">
									<div class="icon-box-media rounded-circle me-2">
										<button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
								              	onclick='count4("plus4")'
								                data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
								                data-bs-original-title="좋아요 +1"><i class="fi-heart-filled"></i></button>
									</div>
									<h3 class="icon-box-title fs-4 ps-1 mb-0" id="result4">95</h3>
								</a>
							</div>
						</div>
					</div>
				</div>




			</div>
		</section>

		<!-- 
    페이지 넘기기
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

 -->
		</section>



	</main>

	<jsp:include page="../common/footer.jsp" />

	<!-- Back to top button-->
	<a class="btn-scroll-top" href="#top" data-scroll><span
		class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i
		class="btn-scroll-top-icon fi-chevron-up"></i></a>

	<!-- Vendor scrits: js libraries and plugins-->
	<script src="${path}/resources/js/vendor/bootstrap.bundle.min.js"></script>
	<script src="${path}/resources/js/vendor/simplebar.min.js"></script>
	<script
		src="${path}/resources/js/vendor/smooth-scroll.polyfills.min.js"></script>
	<script src="${path}/resources/js/vendor/tiny-slider.js"></script>
	<script src="${path}/resources/js/vendor/flatpickr.min.js"></script>
	<script src="${path}/resources/js/vendor/jarallax.min.js"></script>
	<!-- Main theme script + Page Loading script -->
	<script src="${path}/resources/js/theme.js"></script>
	<script src="${path}/resources/js/collection-list.js"></script>
</body>

</html>