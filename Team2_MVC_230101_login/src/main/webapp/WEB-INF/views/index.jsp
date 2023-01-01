<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	href="${path}/resources/css/index.css">
</head>

<body>

	<jsp:include page="/WEB-INF/views/common/header.jsp" />


	<!-- 메인 슬라이더 -->
	<section>
		<div class="content-overlay container py-md-0 p-0"
			style="max-width: 100%;">
			<div class="mb-md-5">
				<div class="tns-carousel-wrapper">
					<div class="tns-carousel-inner "
						data-carousel-options='{"gutter": 16, "autoplay": true, "autoplayTimeout":3000}'>
						<div class="main-slide one"
							style="background-image: url(${path}/resources/img/슬라이더배경1.png);">
							<div
								class="slide-item d-flex flex-row justify-content-between col-xl-8 col-lg-8 col-md-10 mx-auto mb-sm-0 mb-5 px-0 ">
								<div class="text-area">
									<!-- 차례대로 text-light, test-white 였음 -->
									<p class="fs-lg text-dark">
										문화재 검색하고, <br /> 컬렉션에 추가하고, <br /> 사람들한테 자랑하자!
									</p>
									<h1 class="display-5 text-dark mt-sm-0 my-4">나만의 컬렉션 만들기</h1>
									<a class="btn btn-primary btn-sm rounded-pill order-lg-3"
										href="/mvc/Collection">컬렉션 구경하기</a>
								</div>
								<div class="card-area">
									<!-- <h1>문화재 이미지 들어올 공간. <br/> 만드는 중...</h1> -->
								</div>
							</div>
						</div>
						<div class="main-slide"
							style="background-image: url(${path}/resources/img/행사1.jpg);">
							<div
								class="slide-item col-xl-8 col-lg-8 col-md-10 mx-auto mb-sm-5 mb-4 px-0"
								style="text-align: right;">
								<p class="fs-lg text-white">당신의 곁으로 찾아가는 문화재</p>
								<h1 class="display-5 text-light mt-sm-0 my-4">직접 보고 느끼는 문화재
									체험</h1>
								<a class="btn btn-primary btn-sm rounded-pill order-lg-3"
									href="/mvc/eventMain">행사 더 보러가기</a>
							</div>
						</div>
						<div class="main-slide"
							style="background-image: url(${path}/resources/img/행사3.jpg);">
							<div
								class="slide-item col-xl-8 col-lg-8 col-md-10 mx-auto mb-sm-5 mb-4 px-0">
								<p class="fs-lg text-white">
									우리의 것을 찾아가는 여정 <br /> 나도 발걸음을 남기고 싶다면,
								</p>
								<h1 class="display-5 text-light mt-sm-0 my-4">테마별 문화재 투어</h1>
								<a class="btn btn-primary btn-sm rounded-pill order-lg-3"
									href="#">더 알아보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- 컬렉션 추천 -->
	<section class="container mb-5 pb-md-4">
		<div
			class="d-flex flex-column align-items-center justify-content-between mb-3">
			<span class="category h5 mb-2">컬렉션 추천</span>
			<h2 class="h2 mb-0 mx-auto">이런 문화재는 어때요?</h2>
		</div>

		<div
			class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside tns-nav-outside-flush mx-n2">

			<div class="tns-carousel-inner row gx-4 mx-0 pt-3 pb-4"
				data-carousel-options="{&quot;items&quot;: 4, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;500&quot;:{&quot;items&quot;:2},&quot;768&quot;:{&quot;items&quot;:3},&quot;992&quot;:{&quot;items&quot;:5}}}">
				<c:forEach var="item" items="${list}">
					<!-- Item -->
					<div class="col">
						<div class="card shadow-sm card-hover border-0">
							<div class="card-img-top card-img-hover">
								<a class="img-overlay" href="search-detail.html"></a>
								<div class="content-overlay end-0 top-0 pt-3 pe-3"></div>
								<a href="${path}/search-detail?hno=${item.imageUrl }"><img
									src="${item.imageUrl }" alt="Image"></a>
							</div>
							<div class="card-body position-relative pb-2">
								<div class="mb-2">
									<span class="d-table badge bg-success">${item.ccmaName}</span>
								</div>
								<h3 class="h6 mb-2 fs-base">
									<a class="nav-link stretched-link" href="search-detail.html">${item.ccbaMnm1}</a>
								</h3>
							</div>
						</div>
					</div>
				</c:forEach>


			</div>

		</div>

	</section>


	<!-- 행사 및 기획전 -->
	<section class="container mb-5 pb-lg-3">
		<div
			class="d-flex flex-column align-items-start justify-content-between mb-3">
			<span class="event category h5 mb-2">행사 및 기획전</span>
			<div class="w-100 d-flex align-items-center justify-content-between">
				<h2 class="h2 mb-0">우리 문화재, 직접 보고 느껴요!</h2>
				<a class="event more btn btn-link ms-md-3 ms-auto p-0 fw-bold"
					href="evevt-main.html">더 보러가기<i
					class="fi-arrow-long-right ms-2"></i></a>
			</div>
		</div>
		<!-- Carousel-->
		<div
			class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside tns-center">
			<div class="tns-carousel-inner"
				data-carousel-options="{&quot;items&quot;: 1, &quot;edgePadding&quot;: true, &quot;responsive&quot;: {&quot;0&quot;:{&quot;controls&quot;: false, &quot;gutter&quot;: 16},&quot;500&quot;:{&quot;controls&quot;: true, &quot;gutter&quot;: 16}, &quot;768&quot;: {&quot;gutter&quot;: 24}}}">
				<!-- Item-->
				<div>
					<div class="card border-0 bg-size-cover pt-5"
						style="background-image: url(${path}/resources/img/행사1.jpg);">
						<div class="d-none d-md-block" style="height: 10rem;"></div>
						<div class="card-body text-center text-md-start pt-4 pt-xl-0">
							<div class="d-md-flex justify-content-between align-items-end">
								<div class="me-2 mb-4 mb-md-0">
									<div
										class="d-flex justify-content-center justify-content-md-start text-light fs-sm mb-2">
										<div class="text-nowrap me-3">
											<i class="fi-calendar-alt me-1 opacity-70"></i><span
												class="align-middle"> 00월 00일</span>
										</div>
										<div class="text-nowrap">
											<i class="fi-clock me-1 opacity-70"></i><span
												class="align-middle"> D - 0</span>
										</div>
									</div>
									<h3 class="h2 text-light mb-0">문화재 행사1</h3>
								</div>
								<div class="btn-group">
									<a class="ticket btn btn-primary rounded-pill px-5"
										href="event-detail.html">예매하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Item-->
				<div>
					<div class="card border-0 bg-size-cover pt-5"
						style="background-image: url(${path}/resources/img/행사3.jpg);">
						<div class="d-none d-md-block" style="height: 10rem;"></div>
						<div class="card-body text-center text-md-start pt-4 pt-xl-0">
							<div class="d-md-flex justify-content-between align-items-end">
								<div class="me-2 mb-4 mb-md-0">
									<div
										class="d-flex justify-content-center justify-content-md-start text-light fs-sm mb-2">
										<div class="text-nowrap me-3">
											<i class="fi-calendar-alt me-1 opacity-70"></i><span
												class="align-middle"> 1월 5일</span>
										</div>
										<div class="text-nowrap">
											<i class="fi-clock me-1 opacity-70"></i><span
												class="align-middle"> D - 12</span>
										</div>
									</div>
									<h3 class="h2 text-light mb-0">신나는 탈춤놀이</h3>
								</div>
								<div class="btn-group">
									<a class="ticket btn btn-primary rounded-pill px-5"
										href="event-detail.html">바로가기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Item-->
				<div>
					<div class="card border-0 bg-size-cover pt-5"
						style="background-image: url(${path}/resources/img/행사3.jpg);">
						<div class="d-none d-md-block" style="height: 10rem;"></div>
						<div class="card-body text-center text-md-start pt-4 pt-xl-0">
							<div class="d-md-flex justify-content-between align-items-end">
								<div class="me-2 mb-4 mb-md-0">
									<div
										class="d-flex justify-content-center justify-content-md-start text-light fs-sm mb-2">
										<div class="text-nowrap me-3">
											<i class="fi-calendar-alt me-1 opacity-70"></i><span
												class="align-middle"> 00월 00일</span>
										</div>
										<div class="text-nowrap">
											<i class="fi-clock me-1 opacity-70"></i><span
												class="align-middle"> D - 0</span>
										</div>
									</div>
									<h3 class="h2 text-light mb-0">문화재 행사3</h3>
								</div>
								<div class="btn-group">
									<a class="ticket btn btn-primary rounded-pill px-5"
										href="event-detail.html">예매하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 테마별 문화재 투어 + 커뮤니티 -->
	<section class="container mb-5 pb-lg-3">
		<!-- 테마별 문화재 투어 -->
		<div class="bottom-ss">
			<div class="img-six-box">
				<div class="mb-2">
					<span class="category h5 w-100 mb-md-2">테마별 문화재 투어</span>
					<h2 class="h3 w-100 mb-md-0">방문 인증하고 스탬프도 받자!</h2>
				</div>

				<div class="tab-content">
					<!-- <div class="tab-pane fade show active" id="result5" role="tabpane1"> -->

					<!-- Gallery grid no gutters -->
					<div class="row gallery g-0">
						<!-- Item 1-->
						<div class="col-xl-4 col-sm-6 img-six">
							<a href="#" class="gallery-item"> <img
								src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg" alt="문화재이미지"
								img-responsive>
								<div class="carousel-caption text6">
									<h3 class="fs-6 text-white text-start">방문인증코스1</h3>
									<h3 class="fs-6 text-white text-start">방문인증코스1</h3>
								</div> <span class="gallery-item-caption">문화재이미지1</span>
							</a>
						</div>
						<!-- Item 2 -->
						<div class="col-xl-4 col-sm-6 img-six">
							<a href="#" class="gallery-item"> <img
								src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg" alt="문화재이미지"
								img-responsive>
								<div class="carousel-caption text6">
									<h3 class="fs-6 text-white text-start">방문인증코스1</h3>
									<h3 class="fs-6 text-white text-start">방문인증코스1</h3>
								</div> <span class="gallery-item-caption">문화재이미지2</span>
							</a>
						</div>
						<!-- Item 3 -->
						<div class="col-xl-4 col-sm-6 img-six">
							<a href="#" class="gallery-item"> <img
								src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg"
								alt="문화재이미지3" img-responsive>
								<div class="carousel-caption text6">
									<h3 class="fs-6 text-white text-start">방문인증코스1</h3>
									<h3 class="fs-6 text-white text-start">방문인증코스1</h3>
								</div> <span class="gallery-item-caption">문화재이미지3</span>
							</a>
						</div>
						<!-- Item 4 -->
						<div class="col-xl-4 col-sm-6 img-six">
							<a href="#" class="gallery-item"> <img
								src="${path}/resources/img/석굴암_본존불2.jpg" alt="문화재이미지"
								img-responsive>
								<div class="carousel-caption text6">
									<h3 class="fs-6 text-white text-start">방문인증코스1</h3>
									<h3 class="fs-6 text-white text-start">방문인증코스1</h3>
								</div> <span class="gallery-item-caption">문화재이미지</span>
							</a>
						</div>
						<!-- Item 5 -->
						<div class="col-xl-4 col-sm-6 img-six">
							<a href="#" class="gallery-item"> <img
								src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg"
								alt="Gallery thumbnail" img-responsive>
								<div class="carousel-caption text6">
									<h3 class="fs-6 text-white text-start">방문인증코스1</h3>
									<h3 class="fs-6 text-white text-start">방문인증코스1</h3>
								</div> <span class="gallery-item-caption">문화재이미지</span>
							</a>
						</div>
						<!-- Item 6 -->
						<div class="col-xl-4 col-sm-6 img-six">
							<a href="#" class="gallery-item"> <img
								src="${path}/resources/img/석굴암_본존불2.jpg" alt="문화재이미지"
								img-responsive>
								<div class="carousel-caption text6">
									<h3 class="fs-6 text-white text-start">방문인증코스1</h3>
									<h3 class="fs-6 text-white text-start">방문인증코스1</h3>
								</div> <span class="gallery-item-caption">문화재이미지</span>
							</a>
						</div>
						<!-- Add as many columns with gallery item inside as you need -->
					</div>
					<!-- </div> -->
				</div>
			</div>
<!--  바뀐부분 시작  230102 -->
			<!-- 커뮤니티 -->
			<section class="community" style="width: 650px; height: 500px">
				<span class="category h5 w-100 mb-md-2 ps-4">커뮤니티</span>
				<div
					class="d-md-flex align-items-center justify-content-between pb-md-2">
					<h2 class="h3 w-100 mb-md-0 ps-4">공지사항</h2>
					<!-- Sorting by date-->
					<div class="w-100 ms-md-3 mb-n3 pt-2 pb-3 px-1" data-simplebar
						data-simplebar-auto-hide="false">
						<div class="d-flex align-items-start flex-row-reverse">
							<a class="more btn btn-link ms-md-3 ms-auto p-0 fw-bold"
								href="${path}/board?type=notice">더 보러가기 <i
								class="fi-arrow-long-right ms-2"></i>
							</a>
						</div>
					</div>
				</div>
				<table class="main_community_title" style="font-size:15pt;">
				<c:forEach var="item" items="${list2}">
				<tr>
					<td>	<a href="${path}/board-detail?no=${item.no}" style="text-decoration:none; color:black;"> ${item.title} </a> </td> 
			</tr>
			</c:forEach>
				</table>
			</section>
<!--  바뀐부분 끝 230102 -->
		</div>
	</section>

	</main>


	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>


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
	<script src="${path}/resources/js/page-loading.js"></script>


</body>
</html>
