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
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/simplebar.min.css"/>
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/tiny-slider.css"/>
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/flatpickr.min.css"/>
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/leaflet.css"/>
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/nouislider.min.css"/>
  <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/page-loading.css">
  <!-- 직접 작성한 Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/header-footer.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/search-main.css">
</head>


<jsp:include page="/WEB-INF/views/common/header.jsp" />


<c:set var="nameType" value="${nameType}" />
<c:if test="${empty nameType}">
	<c:set var="searchType" value="${'name'}" />
</c:if>


<form action="${path}/searchMain" method="get">
	<!-- 문화재 검색칸 -->
	<section class="jarallax bg-dark zindex-1 main-section" data-jarallax
		data-speed="0.5">
		<!-- 배경이미지, 불투명도-->
		<span class="img-overlay bg-transparent opacity-75"
			style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));">
		</span>
		<div class="jarallax-img img-main"
			style="background-image: url(${path}/resources/img/경복궁_근정전_내부_어좌.jpg);"></div>
		<!-- 문화재 검색칸 문구, 입력창-->
		<div class="content-overlay container content1">
			<!-- 문화재 문구 -->
			<div class="col-xl-9 mx-auto mb-4 px-0 text-start">
				<p class="fs-lg text-white mt-5">문화재를 검색하고 나만의 컬렉션을 만들자!</p>
				<h1 class="display-6 mt-4 text-white">문화재 검색</h1>
			</div>
			<!-- 검색창-->
			<div class="col-xl-10 mx-auto">
				<div
					class="bg-white d-block d-md-flex position-relative rounded-md-pill mb-4 p-2 border-0">
					<div class="input-group input-group-lg">
						<span
							class="input-group-text text-muted rounded-pill border-0 ms-2">
							<i class="fi-search"></i>
						</span> <input class="form-control fs-4 border-0" type="text" id="name" name="name"
							value="${name}" placeholder="문화재명 입력">
					</div>
					<div class="d-sm-flex border-0 ">
						<button class="btn btn-search-m rounded-pill ms-sm-3 shadow"
							type="submit">검색하기</button>
					</div>
				</div>
				<!-- 검색 라디오 버튼 -->
				<div class="radio2 text-center m-auto text-white fw-bold">
					<label class="" for="culturalHeritage-name"> <input
						class="" type="radio" name="nameType" id="culturalHeritage-name"
						checked value="name" ${nameType=='name' ? 'checked':''}> <span>문화재명</span>
					</label>&emsp;&emsp;&emsp;&emsp; <label class=""
						for="culturalHeritage-name-d"> <input class=""
						type="radio" name="nameType" id="culturalHeritage-name-d"
						value="nameContent" ${nameType=='nameContent' ? 'checked':''}>
						<span>문화재명 + 내용</span>
					</label>
				</div>
			</div>
		</div>
	</section>

	<!-- 문화재 검색 필터 -->
	<section class="container mt-5 mb-5">
		<aside
			class="col-lg-4 col-xl-3 border-top-lg border-end-lg shadow-sm px-3 px-xl-4 px-xxl-5 pt-lg-2 w-100">
			<!-- border-top-lg border-end-lg shadow-sm -->
			<div class="offcanvas offcanvas-start offcanvas-collapse"
				id="filters-sidebar">
				<!-- ??? -->
				<div class="offcanvas-header d-flex d-lg-none align-items-center">
					<h2 class="h5 mb-0">Filters</h2>
					<button class="btn-close" type="button" data-bs-dismiss="offcanvas"></button>
				</div>

				<!--           초기화 버튼 -->
				<!--           <div class="border-bottom py-4 text-end"> -->
				<!--             <button class="reset btn btn-outline-primary rounded-pill" type="button"><i class="fi-rotate-right me-2"></i>초기화</button> -->
				<!--           </div> -->

				<!-- 검색 필터들 -->
				<div class="offcanvas-body py-lg-4">
					<div class="tab-content">
						<div class="tab-pane fade show active" id="filters"
							role="tabpanel">
							<div class="filter d-flex flex-row justify-content-between">
								<!-- 지정종목 -->
								<div class="pb-4 mb-2">
									<h3 class="h6">지정종목</h3>
									<div class="overflow-auto" data-simplebar
										data-simplebar-auto-hide="false" style="height: 15.75rem;">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind1"
												name="kind" value="국보"
												${fn:contains(kind, "국보") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind1">국보</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind2"
												name="kind" value="보물"
												${fn:contains(kind, "보물") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind2">보물</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind3"
												name="kind" value="사적"
												${fn:contains(kind, "사적") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind3">사적</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind4"
												name="kind" value="명승"
												${fn:contains(kind, "명승") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind4">명승</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind5"
												name="kind" value="천연기념물"
												${fn:contains(kind, "천연기념물") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind5">천연기념물</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind6"
												name="kind" value="국가무형문화재"
												${fn:contains(kind, "국가무형문화재") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind6">국가무형문화재</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind7"
												name="kind" value="국가민속문화재"
												${fn:contains(kind, "국가민속문화재") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind7">국가민속문화재</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind8"
												name="kind" value="국가등록문화재"
												${fn:contains(kind, "국가등록문화재") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind8">국가등록문화재</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind9"
												name="kind" value="시도유형문화재"
												${fn:contains(kind, "시도유형문화재") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind9">시도유형문화재</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind10"
												name="kind" value="시도무형문화재"
												${fn:contains(kind, "시도무형문화재") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind10">시도무형문화재</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind11"
												name="kind" value="시도기념물"
												${fn:contains(kind, "시도기념물") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind11">시도기념물</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind12"
												name="kind" value="시도민속문화재"
												${fn:contains(kind, "시도민속문화재") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind12">시도민속문화재</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind13"
												name="kind" value="시도등록문화재"
												${fn:contains(kind, "시도등록문화재") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind13">시도등록문화재</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind14"
												name="kind" value="문화재자료"
												${fn:contains(kind, "문화재자료") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="kind14">문화재자료</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="kind15"
												name="kind" value="이북5도 무형문화재"
												${fn:contains(kind, "이북5도 무형문화재") ? 'checked':'' }>
											<label class="form-check-label fs-sm" for="kind15">이북5도
												무형문화재</label>
										</div>
									</div>
								</div>

								<!-- 지역 -->
								<div class="pb-4 mb-2">
									<h3 class="h6">지역</h3>
									<div class="overflow-auto" data-simplebar
										data-simplebar-auto-hide="false" style="height: 15.75rem;">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region1"
												name="region" value="서울특별시"
												${fn:contains(region, "서울특별시") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region1">서울</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region2"
												name="region" value="부산광역시"
												${fn:contains(region, "부산광역시") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region2">부산</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region3"
												name="region" value="대구광역시"
												${fn:contains(region, "대구광역시") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region3">대구</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region4"
												name="region" value="인천광역시"
												${fn:contains(region, "인천광역시") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region4">인천</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region5"
												name="region" value="광주광역시"
												${fn:contains(region, "광주광역시") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region5">광주</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region6"
												name="region" value="대전광역시"
												${fn:contains(region, "대전광역시") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region6">대전</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region7"
												name="region" value="울산광역시"
												${fn:contains(region, "울산광역시") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region7">울산</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region8"
												name="region" value="세종특별자치시"
												${fn:contains(region, "세종특별자치시") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region8">세종</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region9"
												name="region" value="경기도"
												${fn:contains(region, "경기도") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region9">경기</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region10"
												name="region" value="강원도"
												${fn:contains(region, "강원") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region10">강원</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region11"
												name="region" value="충청북도"
												${fn:contains(region, "충북") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region11">충북</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region12"
												name="region" value="충청남도"
												${fn:contains(region, "충청남도") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region12">충남</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region13"
												name="region" value="전라북도"
												${fn:contains(region, "전라북도") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region13">전북</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region14"
												name="region" value="전라남도"
												${fn:contains(region, "전라남도") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region14">전남</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region15"
												name="region" value="경상북도"
												${fn:contains(region, "경상북도") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region15">경북</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region16"
												name="region" value="경상남도"
												${fn:contains(region, "경상남도") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region16">경남</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region17"
												name="region" value="제주특별자치도"
												${fn:contains(region, "제주특별자치도") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region17">제주</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="region18"
												name="region" value="전국일원"
												${fn:contains(region, "전국일원") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="region18">전국일원</label>
										</div>
									</div>
								</div>

								<!-- 시대 -->
								<div class="pb-4 mb-2">
									<h3 class="h6">시대</h3>
									<div class="overflow-auto" data-simplebar
										data-simplebar-auto-hide="false" style="height: 15.75rem;">
										<!-- <div class="form-check">
											<input class="form-check-input" type="checkbox" id="time1"
												checked> <label class="form-check-label fs-sm"
												for="time1">전체</label>
										</div> -->
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time1"
												name="time" value="선사"
												${fn:contains(time, "선사") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time1">선사시대</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time2"
												name="time" value="석기"
												${fn:contains(time, "석기") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time2">석기시대</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time3"
												name="time" value="청동기"
												${fn:contains(time, "청동기") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time3">청동기시대</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time4"
												name="time" value="철기"
												${fn:contains(time, "철기") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time4">철기시대</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time5"
												name="time" value="삼한"
												${fn:contains(time, "삼한") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time5">삼한시대</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time6"
												name="time" value="삼국"
												${fn:contains(time, "삼국") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time6">삼국시대</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time7"
												name="time" value="고구려"
												${fn:contains(time, "고구려") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time7">삼국:고구려</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time8"
												name="time" value="백제"
												${fn:contains(time, "백제") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time8">삼국:백제</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time9"
												name="time" value="신라"
												${fn:contains(time, "신라") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time9">삼국:신라</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time10"
												name="time" value="발해"
												${fn:contains(time, "발해") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time10">발해</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time11"
												name="time" value="통일신라"
												${fn:contains(time, "통일신라") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time11">통일신라</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time12"
												name="time" value="고려"
												${fn:contains(time, "고려") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time12">고려시대</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time13"
												name="time" value="조선"
												${fn:contains(time, "조선") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time13">조선시대</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time14"
												name="time" value="대한제국"
												${fn:contains(time, "대한제국") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time14">대한제국시대</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time15"
												name="time" value="일제강점기"
												${fn:contains(time, "일제강점기") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time15">일제강점기</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="time16"
												name="time" value="미상"
												${fn:contains(time, "미상") ? 'checked':'' }> <label
												class="form-check-label fs-sm" for="time16">시대미상</label>
										</div>
									</div>
								</div>

								<!-- 지정연도 + 유형분류 -->
								<div class="wide">
									<!-- 지정연도 -->
									<div class="pb-4 mb-2">
										<h3 class="h6">지정연도</h3>
										<div class="range-slider" data-start-min="300"
											data-start-max="700" data-min="50" data-max="1000"
											data-step="20">
											<!-- <div class="range-slider-ui"></div> -->
											<div class="d-flex align-items-center p-3">
												<div class="w-50 pe-2">
													<div class="input-group">
														<span class="input-group-text fs-base">시작</span> <input
															class="form-control range-slider-value-min" type="text">
													</div>
												</div>
												<div class="text-muted">&mdash;</div>
												<div class="w-50 ps-2">
													<div class="input-group">
														<span class="input-group-text fs-base">끝</span> <input
															class="form-control range-slider-value-max" type="text">
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- 유형분류 -->
									<div class="pb-4 mb-2">
										<h3 class="h6">유형분류</h3>
										<div class="overflow-auto" data-simplebar
											data-simplebar-auto-hide="false" style="height: 5rem;">
											<div class="form-check">
												<input class="form-check-input" type="checkbox" id="type1"
													name="type" value="유적건조물"
													${fn:contains(type, "유적건조물") ? 'checked':'' }> <label
													class="form-check-label fs-sm" for="type1">유적건조물</label>
											</div>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" id="type2"
													name="type" value="기록유산"
													${fn:contains(type, "기록유산") ? 'checked':'' }> <label
													class="form-check-label fs-sm" for="type2">기록유산</label>
											</div>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" id="type3"
													name="type" value="유물"
													${fn:contains(type, "유물") ? 'checked':'' }> <label
													class="form-check-label fs-sm" for="type3">유물</label>
											</div>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" id="type4"
													name="type" value="무형문화재"
													${fn:contains(type, "무형문화재") ? 'checked':'' }> <label
													class="form-check-label fs-sm" for="type4">무형문화재</label>
											</div>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" id="type5"
													name="type" value="자연유산"
													${fn:contains(type, "자연유산") ? 'checked':'' }> <label
													class="form-check-label fs-sm" for="type5">자연유산</label>
											</div>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" id="type6"
													name="type" value="등록문화재"
													${fn:contains(type, "등록문화재") ? 'checked':'' }> <label
													class="form-check-label fs-sm" for="type6">등록문화재</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</aside>
	</section>


</form>

<!-- 문화재 검색 결과 -->
<section class="container mb-5 pb-md-4">
	<div class="d-flex mb-2 mt-3 re-box">
		<!-- 검색 건수 출력-->
		<div class="flex-grow-1">
			<span class="fs-5 fw-bold">총 ${pageInfo.listCount}건의 자료가 검색되었습니다.</span>
		</div>
		<!-- 정렬 방법 라디오-->
		<div class="radio3 fs-5 fw-bold">
			<label class="" for="sort-name"> <input class="" type="radio"
				name="sort" id="sort-name" value="option11" checked> <span>이름순</span></label>&emsp;
			<label class="" for="sort-date"> <input class="" type="radio"
				name="sort" id="sort-date" value="option22"> <span>지정일순</span></label>&emsp;
			<label class="" for="sort-pop"> <input class="" type="radio"
				name="sort" id="sort-pop" value="option33"> <span>인기순</span></label>
		</div>
	</div>
	<hr />

	<!-- 검색결과 이미지카드 출력 전체칸-->
	<div class="d-flex align-content-start flex-wrap">

		<!-- 리스트 조회 -->
		<c:forEach var="item" items="${list}">

			<!-- Item1 -->
			<div class="result-item1 shadow ">
				<div class="re-card-img">
					<a href="${path}/searchDetail?hno=${item.hno}"> <img
						src="${item.imageUrl}" onerror="this.src='${path}/resources/img/xbox.png'"  alt="사진이 존재하지 않음" ></a>
				</div>
				<div class="sn-box1">
					<div class="mt-2">
						<span class="fs-7"><a class="nav-link"
							href="${path}/searchDetail?hno=${item.hno}">${item.ccbaMnm1}</a></span>
					</div>
					<div class="ms-3 pe-3 fs-xs">
						<span class="text-muted"><i
							class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>${item.ccbaCtcdNm} ${item.ccsiName}</span>
					</div>
				</div>
				
				<!--좋아요, 컬렉션-->
				<div class="d-flex justify-content-evenly b2-box mt-5">
					<div class="b2-box-ch ps-4">
						<button
							onclick="location.href = '${path}/addHeritageLike?hno=${item.hno}&uno=1'"
							class="btn btn-icon btn-light-primary text-primary rounded-circle"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"
							aria-label="Remove from Favorites"
							data-bs-original-title="좋아요">
							<i class="fi-heart"></i>
						</button>
						<span class="fw-bold align-middle">${like}</span>
					</div>
					<div class="b2-box-ch">
						<button
							onclick="location.href = '${path}/addCollection?hno=${item.hno}&uno=1'"
							class="btn btn-icon btn-light-primary text-primary rounded-circle"
							type="button" data-bs-toggle="tooltip" data-bs-placement="left"
							aria-label="Remove from Favorites"
							data-bs-original-title="컬렉션">
							<i class="fi-bookmark align-bottom"></i>
						</button>
						<span class="fw-bold align-middle">컬렉션</span>
					</div>
				</div>
			</div>

		</c:forEach>

	</div>
	<!-- 결과값 박스-->


	<!-- 페이지 넘기기-->
	<div class="my-5 d-flex justify-content-center">
		<ul class="pagination ">
			
			<li class="page-item"><a class="page-link" style="cursor:pointer;" onclick="movePage('${path}/searchMain?page=${pageInfo.prevPage}');"><i
					class="fi-chevron-left me-2"></i>Prev</a></li>
			
			
			<!-- 10개 페이지 -->
		<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
			<c:if test="${status.current == pageInfo.currentPage}">
			<li class="page-item active d-none d-sm-block" aria-current="page"><span
				class="page-link">${status.current}<span class="visually-hidden">(current)</span></span></li>
			</c:if>
			<c:if test="${status.current != pageInfo.currentPage}">
				<li class="page-item d-none d-sm-block"><a class="page-link"
					style="cursor:pointer;"
					onclick="movePage('${path}/searchMain?page=${status.current}');">
					${status.current}</a>
				</li>
			</c:if>
		</c:forEach>
			
				
			<li class="page-item"><a class="page-link" style="cursor:pointer;" onclick="movePage('${path}/searchMain?page=${pageInfo.nextPage}');"
				aria-label="Next">Next<i class="fi-chevron-right ms-2"></i></a></li>
		</ul>
	</div>
	<!-- 페이지 넘기기 끝-->
	
	<!-- page부 시작 -->
	<%-- <div align="center">
		<!--처음 페이지 -->
		<button onclick="movePage('${path}/searchMain?page=1');">&lt;&lt;</button>
		<!--이전 페이지 -->
		<button onclick="movePage('${path}/searchMain?page=${pageInfo.prevPage}');">&lt;</button>
	
		<!-- 10개 페이지 -->
		<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
			<c:if test="${status.current == pageInfo.currentPage}">
				<button disabled>${status.current}</button>
			</c:if>
			<c:if test="${status.current != pageInfo.currentPage}">
				<button onclick="movePage('${path}/searchMain?page=${status.current}');">
					${status.current}
				</button>
			</c:if>
		</c:forEach>

		<!--다음 페이지 -->
		<button onclick="movePage('${path}/searchMain?page=${pageInfo.nextPage}');">&gt;</button>
		<!-- 마지막 페이지 -->
		<button onclick="movePage('${path}/searchMain?page=${pageInfo.maxPage}');">&gt;&gt;</button>
	</div>
		<!-- page부 종료 --> --%>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<script src="${path}/resources/js/vendor/leaflet.js"></script>
<script src="${path}/resources/js/vendor/nouislider.min.js"></script>
<script src="${path}/resources/js/search-main.js"></script>

<script type="text/javascript">
function movePage(pageUrl){
	//http://localhost/mvc/searchMain?name=%EC%84%9C%EC%9A%B8&nameType=nameContent&kind=%EA%B5%AD%EB%B3%B4&region=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C
	
	var name = document.getElementById("name"); // 갤럭시
	var nameTypes = document.getElementsByName("nameType"); // title
	var nameType = 'name';
	if(name.value.length > 0){
		for(var i = 0; i <nameTypes.length; i++){
			if(nameTypes[i].checked == true){
				nameType = nameTypes[i].value;
			}
		}
		pageUrl = pageUrl + '&nameType=' + nameType + '&name=' + name.value; 
	}
	location.href = encodeURI(pageUrl);	
}
</script>
</html>

