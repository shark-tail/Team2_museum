<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

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

@
-webkit-keyframes spinner { 100% {
	-webkit-transform: rotate(360deg);
	transform: rotate(360deg);
}

}
@
keyframes spinner { 100% {
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
    
    
    function reserve()  {
    	  alert('예매됐습니다.');
    	}

  </script>
  
  

<!-- Vendor Styles-->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/vendor/simplebar.min.css" />
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/vendor/lightgallery-bundle.min.css" />
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/vendor/tiny-slider.css" />
<!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/theme.css">
<!-- 채원 직접 작성한 Styles -->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/common/common.css">
<!-- 인화스타일시트 -->
<link rel="stylesheet" media="screen"
	href="${path}/resources/css/event-detail.css">
<!-- 인화아이콘 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>


<body>
	<!-- Page loading spinner-->
	<div class="page-loading active">
		<div class="page-loading-inner">
			<div class="page-spinner"></div>
			<span>Loading...</span>
		</div>
	</div>
	
	<main class="page-wrapper">

		<jsp:include page="../common/header.jsp" />

		<!-- Page content-->
		<section class="container pt-5 mt-5">
			<!-- Home>행사일정>행사상세 -->
			<nav class="mb-3 pt-md-3" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${path}/">Home</a></li>
					<li class="breadcrumb-item"><a href="${path}/event-main">행사일정</a></li>
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
						<img src="${path}/resources/img/event/event${event.e_no}.jpg">
					</div>
					<!-- 행사 정보 -->
					<div class="ps-2 ms-1">
						<h3 class="h5 mb-2 bih-f-1">${event.subTitle}</h3>
					</div>
					<hr>
					<br>
					<div class="card py-2 px-sm-4 px-3 shadow-sm bih-s-1">
						<div class="card-body mx-n2">
							<h3 class="h5 mb-2 bih-f-2">${event.subDesc}</h3>
							<hr>
							<br>
							<br>
							<br>
							<div class="mb-3 pb-3">
								<ul class="nav row  row-cols-1 gy-1 bih-f-3 bih-s-2">
									<li class="col"><a
										class="nav-link p-0 fw-normal d-flex align-items-start"><i
											class="fi-map-pin mt-1 me-2 align-middle opacity-70"></i>${event.subDesc}
											특별전시실</a></li>
									<li class="col"><a
										class="nav-link d-inline-block p-0 fw-normal d-inline-flex align-items-start"><i
											class="fi-phone mt-1 me-2 align-middle opacity-70"></i>1688-0361</a></li>
									<li class="col"><a
										class="nav-link p-0 fw-normal d-flex align-items-start bih-m-1"><i
											class="bi bi-bank"></i>${event.sido} 문화재단</a></li>
								</ul>
								<hr>
							</div>
							<div class="mb-3 pb-3 ">
								<div class="row row-cols-sm-2 row-cols-1">
									<div class="col mb-sm-0 mb-3 bih-s-3">
										<h4 class="h5 mb-0">
											<span class="fs-4">&nbsp;관람료 무료</span>
										</h4>
									</div>
									<div class="col bih-s-4">
										<a class="btn btn-primary btn-lg rounded-pill" onclick='reserve()' href="#">&nbsp;&nbsp;&nbsp;예매&nbsp;&nbsp;&nbsp;<i
											class="fi-chevron-right fs-sm ms-2"></i></a>
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
						${event.subContent}<br> ${event.subDate}
					</div>
				</div>

			</div>
		</section>

		<!-- 지도 -->
		<section class="container pb-5 mb-md-4">
			<div class="map">
				<i class="bi bi-geo-alt-fill"></i>&nbsp;${event.subDesc}
			</div>
			<div class="row">
				<div
					class="position-relative bg-size-cover bg-position-center bg-repeat-0 h-100 rounded-3"
					style="background-image: url(img/city-guide/single/map.jpg); min-height: 250px;">

					<!-- 지도 api -->
					<div id="map" style="width: 100%; height: 350px;"></div>
					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bbf1a9786ddfa6dc1e3bba68e3dc0ed0&libraries=services"></script>
					<script>
// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(); 

// 키워드로 장소를 검색합니다
ps.keywordSearch('${event.subDesc}', placesSearchCB); 

// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new kakao.maps.LatLngBounds();

        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }       

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    } 
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });

    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}
</script>

				</div>
			</div>
		</section>

		<!-- 유사 행사 -->
		<section class="container pb-5 mb-lg-4">
			<hr>
			<div
				class="d-flex align-items-center justify-content-between mb-4 pb-2 bih-f-6">
				<h2 class="h3 mb-0">이런 행사는 어때요?</h2>
				<a class="btn btn-link fw-normal ms-sm-3 p-0" href="${path}/event-main">더보기<i
					class="fi-arrow-long-right ms-2"></i></a>
			</div>
			<div
				class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2">
				<div class="tns-carousel-inner"
					data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:3,&quot;nav&quot;:false}}}">
					<!-- Item-->
					<div>
						<div class="position-relative">
							<div class="position-relative mb-3">
								<img class="rounded-3 bih-s-5"
									src="${path}/resources/img/event/event6.jpg" alt="Article img">
							</div>
							<h3 class="mb-2">
								<a class="nav-link stretched-link" href="${path}/event-detail?no=6">찾아가는향교</a>
							</h3>
							<h3 class="mb-2">
								<a class="nav-link bih-f-7">2022.11.01-2022.11.30</a>
							</h3>
							<h3 class="mb-2">
								<a class="nav-link bih-f-7">강원도 정선군 </a>
							</h3>
						</div>
					</div>
					<!-- Item-->
					<div>
						<div class="position-relative">
							<div class="position-relative mb-3">
								<img class="rounded-3 bih-s-5"
									src="${path}/resources/img/event/event5.jpg" alt="Article img">
							</div>
							<h3 class="mb-2">
								<a class="nav-link stretched-link" href="${path}/event-detail?no=5">제 9회 세종 단오제</a>
							</h3>
							<h3 class="mb-2">
								<a class="nav-link bih-f-7">2022.11.01-2022.11.30</a>
							</h3>
							<h3 class="mb-2">
								<a class="nav-link bih-f-7">경기도 세종시</a>
							</h3>
						</div>
					</div>
					<!-- Item-->
					<div>
						<div class="position-relative">
							<div class="position-relative mb-3">
							   <img class="rounded-3 bih-s-5" src="${path}/resources/img/event/event2.jpg" alt="Article img">
							</div>
							<h3 class="mb-2">
								<a class="nav-link stretched-link" href="${path}/event-detail?no=2">에헴! 이리오너라 향교나들이</a>
							</h3>
							<h3 class="mb-2">
								<a class="nav-link bih-f-7">2022.11.01-2022.11.30</a>
							</h3>
							<h3 class="mb-2">
								<a class="nav-link bih-f-7">경상북도 영천시</a>
							</h3>
						</div>
					</div>
					<!-- Item-->
					<div>
						<div class="position-relative">
							<div class="position-relative mb-3">
								<img class="rounded-3 bih-s-5" src="${path}/resources/img/event/event3.jpg">
							</div>
							<h3 class="mb-2">
								<a class="nav-link stretched-link" href="${path}/event-detail?no=3">종가의 정성</a>
							</h3>
							<h3 class="mb-2">
								<a class="nav-link bih-f-7">2022.11.01-2022.11.30</a>
							</h3>
							<h3 class="mb-2">
								<a class="nav-link bih-f-7">충청남도 논산시</a>
							</h3>
						</div>
					</div>


				</div>
			</div>
		</section>
	</main>

	<jsp:include page="../common/footer.jsp" />

	<!-- Vendor scrits: js libraries and plugins-->
	<script src="${path}/resources/js/vendor/bootstrap.bundle.min.js"></script>
	<script src="${path}/resources/js/vendor/simplebar.min.js"></script>
	<script
		src="${path}/resources/js/vendor/smooth-scroll.polyfills.min.js"></script>
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
