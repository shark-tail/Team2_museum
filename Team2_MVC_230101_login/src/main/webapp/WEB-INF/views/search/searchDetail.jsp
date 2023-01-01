<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/lightgallery-bundle.min.css" />
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/tiny-slider.css" />
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/flatpickr.min.css"/>
  <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/page-loading.css">
  <!-- 직접 작성한 Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/header-footer.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/search-detail.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
  

<body>

  <main class="page-wrapper">
  
  	<jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <!-- 문화재 이름, 문화재 위치 -->
    <section class="container pt-1 mt-1">
      <!-- 문화재 이름-->
      <div class="d-flex mb-0">
        <h2 class="ps-3 m-0 mt-5 fw-bold">${heritage.ccbaMnm1}</h2>
      </div>
      <div class="text-nowrap d-flex align-items-center justify-content-between">
        <!-- 문화재 위치 -->
        <div>
          <i class="bi bi-geo-alt-fill ps-3"></i>&nbsp;&nbsp;${heritage.ccbaCtcdNm} ${heritage.ccsiName}
        </div>
        <!-- 좋아요 버튼-->
        <div class="mb-2">
          <div class="d-inline-block likebtn p-1 ps-2 pb-1 fw-bold" style="width:180px;">
            <button class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle" type="button"
              onclick="location.href = '${path}/addHeritageLike2?hno=${heritage.hno}&uno=1'"
              data-bs-toggle="tooltip" title="좋아요"><i
                class="fi-heart"></i></button>&nbsp;&nbsp;<span>${like}명이 좋아합니다</span>
          </div>
          <!-- 컬렉션 버튼-->
          <div class="d-inline-block likebtn p-1  fw-bold">
            <div class="dropdown d-inline-block" data-bs-toggle="tooltip" title="컬렉션">
              <button class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle ms-2" type="button"
              	onclick="location.href = '${path}/addCollection2?hno=${heritage.hno}&uno=1'"
                data-bs-toggle="dropdown"><i class="bi bi-box-arrow-up-right"></i></button>&nbsp;&nbsp;
              <span>컬렉션</span>
              <!-- <div class="dropdown-menu dropdown-menu-end my-1">
                <button class="dropdown-item" type="button">새 컬렉션에 추가하기</button>
                <button class="dropdown-item" type="button">컬렉션1</button>
                <button class="dropdown-item" type="button">컬렉션2</button>
              </div> -->
            </div>
          </div>
          <!-- 컬렉션 버튼-->
        </div>
      </div>
      <hr style="border: 0.5px solid #67778876;"> <br>
    </section>

    <!-- 문화재 사진 -->
    <section class="container overflow-auto mb-5" data-simplebar>
      <!-- 메인 사진-->
      <div class="row g-2 g-md-3 gallery" data-thumbnails="true" style="min-width: 30rem;">
        <div class="col-6 d-flex" style="width: 680px; height: 500px;">
          <a class="gallery-item rounded-md-3 main-p" href="${heritage.imageUrl}"
            data-sub-html="&lt;h6 class=&quot;fs-sm text-light&quot;&gt;${heritage.ccbaMnm1}&lt;/h6&gt;">
            <img class="shadow" src="${heritage.imageUrl}" onerror="this.src='http://www.cha.go.kr/unisearch/images/no_image.gif'" alt="Gallery thumbnail"></a>
        </div>
        <!--작은 4개 사진-->
        <div class="d-flex flex-wrap mine-pic" style="width: 620px; height: 500px; padding: 0;">
          <a class="gallery-item rounded-md-3 mb-2 mb-md-3 ms-1 picture1" href="${heritage.images.imageUrl1}"
            data-sub-html="&lt;h6 class=&quot;fs-sm text-light&quot;&gt;${heritage.images.ccimDesc1}&lt;/h6&gt;">
            <img src="${heritage.images.imageUrl1}" onerror="this.src='${path}/resources/img/xbox.png'" alt="Gallery thumbnail"></a>
          <a class=" gallery-item rounded-md-3 mb-2 mb-md-3 ms-3 picture1" href="${heritage.images.imageUrl2}"
            data-sub-html="&lt;h6 class=&quot;fs-sm text-light&quot;&gt;${heritage.images.ccimDesc2}&lt;/h6&gt;">
            <img src="${heritage.images.imageUrl2}" onerror="this.src='${path}/resources/img/xbox.png'" alt="Gallery thumbnail"></a>
          <a class=" gallery-item rounded-md-3 mb-2 mb-md-3 ms-1 picture1" href="${heritage.images.imageUrl3}"
            data-sub-html="&lt;h6 class=&quot;fs-sm text-light&quot;&gt;${heritage.images.ccimDesc3}&lt;/h6&gt;">
            <img src="${heritage.images.imageUrl3}" onerror="this.src='${path}/resources/img/xbox.png'" alt="Gallery thumbnail"></a>
          <a class=" gallery-item rounded-md-3 mb-2 mb-md-3 ms-3 picture1" href="${heritage.images.imageUrl4}"
            data-sub-html="&lt;h6 class=&quot;fs-sm text-light&quot;&gt;${heritage.images.ccimDesc4}&lt;/h6&gt;">
            <img src="${heritage.images.imageUrl4}" onerror="this.src='${path}/resources/img/xbox.png'" alt="Gallery thumbnail"></a>
        </div>

      </div>
    </section>

    <!-- 기본정보, 문화재설명 -->
    <section class="container pb-4 mb-md-4">
      <div class="row">
        <div class="col-md-bih1 mb-md-0 mb-3">
          <div class="card py-2 px-sm-4 px-3 shadow">
            <div class="card-body mx-n3 fs-1">
              <!-- 기본정보 제목 -->
              <h3 class="h5"> 기본정보</h3>
              <hr>
              <!-- 기본정보 표 -->
              <table class="tg fs-5">
                <tr>
                  <td>종목</td>
                  <td>${heritage.ccmaName}</td>
                </tr>
                <tr>
                  <td>분류</td>
                  <td>${heritage.gcodeName}/${heritage.bcodeName}/${heritage.mcodeName}/${heritage.scodeName}</td>
                </tr>
                <tr>
                  <td>수량/면적</td>
                  <td>${heritage.ccbaQuan}</td>
                </tr>
                <tr>
                  <td>지정(등록)일</td>
                  <td>${heritage.ccbaAsdt}</td>
                </tr>
                <tr>
                  <td>소재지</td>
                  <td>${heritage.ccbaLcad}</td>
                </tr>
                <tr>
                  <td>시대</td>
                  <td>${heritage.ccceName}</td>
                </tr>
                <tr>
                  <td>소유자</td>
                  <td>${heritage.ccbaPoss}</td>
                </tr>
                <tr>
                  <td>관리자</td>
                  <td>${heritage.ccbaAdmin}</td>
                </tr>
              </table>
            </div>
          </div>
        </div>

        <!-- 문화재설명-->
        <div class="col-md-bih2">
          <div class="explanation pt-3 ps-3 fs-5">
            <h4>문화재 설명</h4>
            ${heritage.content}
          </div>
        </div>
      </div>
    </section>


    <!-- 문화재위치, 댓글 -->
    <section class="container pb-4 mb-md-4">
      <div class="row">
        <!-- Location (Map)-->
        <div class="col-md-bih1">
          <h4 class="ms-4">문화재 위치</h4>
          <div class="position-relative bg-size-cover bg-position-center bg-repeat-0 rounded-3 shadow"
            id="map" style="height: 550px;">
            <a class="h-100 w-100" href="#"></a>
          </div>
        </div>


        <!-- 리뷰 리스트 -->
        <div class="col-md-bih2">
          <span class="fs-5 fw-bold ps-3">리뷰</span>
          <div class="" style="margin-top: 30px;">
         <c:if test="${!empty replyList}">
          <c:forEach var="reply" items="${replyList}">
            <div class="mb-3 pb-1 border-bottom ps-3">
              <div class="d-flex justify-content-between mb-3 ps-2">
                <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1" src="${path}/resources/img/avatars/13.png"
                    width="48" alt="Avatar">
                  <div class="ps-2">
                    <h6 class="fs-5 mb-0">${reply.nickName}</h6>
                  </div>
                </div>
                <span class="text-muted fs-sm">${reply.hrCreateDate}
                <c:if test="${ !empty loginMember && (loginMember.no == reply.uno || loginMember.role == 'ROLE_ADMIN') }">
				<button class="btn-delete" onclick="deleteReply('${reply.hrno}','${reply.hno}');" >삭제</button>
				</c:if>
                <%-- <i class="text-danger ms-2 fi-trash mt-n1" style="cursor:pointer;" onclick="deleteReply('${reply.hrno}','${reply.hno}');"></i> --%>
                </span>
              </div>
              <p>${reply.hrContent}</p>
            </div>
            </c:forEach>
           </c:if>
			
            <div>
              <!-- 리뷰 입력 -->
              <div class="input-group">
              	<form action="${path}/reply" method="post">
              	<input type="hidden" name="hno" value="${heritage.hno}" />
			    <input type="hidden" name="uno" value="0" />
			    <!-- 리뷰 로그인된 유저로 -->
			    <%-- <input type="hidden" name="uno" value="${loginMember.id}" /> --%>
                <textarea class="form-control" id="replyContent" name="hrContent" placeholder="내용을 입력하세요." style="width:795px; height: 120px;"></textarea>
              <div class="d-flex justify-content-end mt-2">
              <div class="d-flex align-items-center ">
                  <button class="btn btn-outline-primary rounded-pill ms-1" type="submit"><i
                      class="fi-edit mt-n1 me-1 align-middle"></i>리뷰 작성</button>
        </div>
      </div>
              	</form>
              </div>
                </div>
              </div>
            </div>
          </div>

    </section>

    <!-- 유사한 문화재 -->
    <section class="container mt-5">
      <div class="d-flex align-items-center justify-content-between mb-4 pb-2 bih-mg mt-0"> 
        <h2 class="h3 mb-0">이런 문화재는 어때요?</h2><a class="btn btn-link fw-normal ms-sm-3 p-0"
          href="/mvc/searchMain">더보기<i class="fi-arrow-long-right ms-2"></i></a>
      </div>
      <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2">
        <div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: 
            {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:4,&quot;nav&quot;:false}}}">
         <!-- 랜덤 리스트 -->
          <!-- Item-->
          
          <c:forEach var="item" items="${list}">
	          <div>
	            <div class="position-relative">
	              <div class="position-relative mb-3">
	                <button
	                  class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
	                  onclick="location.href = '${path}/addHeritageLike2?hno=${item.hno}&uno=1'"
	                  type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="좋아요"><i
	                    class="fi-heart"></i></button><img class="rounded-3 size-bih" src="${item.imageUrl}" onerror="this.src='${path}/resources/img/xbox.png'"
	                  alt="HeritageImage">
	              </div>
	              <a class="nav-link stretched-link fs-6" href="${path}/searchDetail?hno=${item.hno}">${item.ccmaName}</a>
	              <a class="nav-link stretched-link pt-0 fs-4" href="${path}/searchDetail?hno=${item.hno}">${item.ccbaMnm1}</a>
	            </div> 
	          </div>
          </c:forEach>
          
        </div>
      </div>
    </section>

  </main>

  <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

  <!-- Back to top button-->
  <a class="btn-scroll-top" href="#top" data-scroll><span
      class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i
      class="btn-scroll-top-icon fi-chevron-up"></i></a>

  <!-- Vendor scrits: js libraries and plugins-->
  <script src="${path}/resources/js/vendor/bootstrap.bundle.min.js"></script>
  <script src="${path}/resources/js/vendor/simplebar.min.js"></script>
  <script src="${path}/resources/js/vendor/smooth-scroll.polyfills.min.js"></script>

  <script src="${path}/resources/js/vendor/lightgallery.min.js"></script>
  <script src="${path}/resources/js/vendor/lg-fullscreen.min.js"></script>
  <script src="${path}/resources/js/vendor/lg-zoom.min.js"></script>
  <script src="${path}/resources/js/vendor/lg-thumbnail.min.js"></script>

  <script src="${path}/resources/js/vendor/tiny-slider.js"></script>
  <script src="${path}/resources/js/vendor/flatpickr.min.js"></script>

  <!-- Main theme script-->
  <script src="${path}/resources/js/theme.js"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bbf1a9786ddfa6dc1e3bba68e3dc0ed0"></script>
  
  <script>
  // 위치 있을 때
  <c:if test="${latitude != '0'}">
  var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
  		mapOption = { 
  	          center: new kakao.maps.LatLng(${heritage.latitude}, ${heritage.longitude}), // 지도의 중심좌표
  	          level: 3 // 지도의 확대 레벨
  	      };
  var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

  // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
  var mapTypeControl = new kakao.maps.MapTypeControl();

  // 지도 타입 컨트롤을 지도에 표시합니다
  map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

  function getInfo() {
      // 지도의 현재 중심좌표를 얻어옵니다 
      var center = map.getCenter(); 
      
      // 지도의 현재 레벨을 얻어옵니다
      var level = map.getLevel();
      
      // 지도타입을 얻어옵니다
      var mapTypeId = map.getMapTypeId(); 
      
      // 지도의 현재 영역을 얻어옵니다 
      var bounds = map.getBounds();
      
      // 영역의 남서쪽 좌표를 얻어옵니다 
      var swLatLng = bounds.getSouthWest(); 
      
      // 영역의 북동쪽 좌표를 얻어옵니다 
      var neLatLng = bounds.getNorthEast(); 
      
      // 영역정보를 문자열로 얻어옵니다. ((남,서), (북,동)) 형식입니다
      var boundsStr = bounds.toString();
      
      var message = '지도 중심좌표는 위도 ' + center.getLat() + ', <br>';
      message += '경도 ' + center.getLng() + ' 이고 <br>';
      message += '지도 레벨은 ' + level + ' 입니다 <br> <br>';
      message += '지도 타입은 ' + mapTypeId + ' 이고 <br> ';
      message += '지도의 남서쪽 좌표는 ' + swLatLng.getLat() + ', ' + swLatLng.getLng() + ' 이고 <br>';
      message += '북동쪽 좌표는 ' + neLatLng.getLat() + ', ' + neLatLng.getLng() + ' 입니다';
      // 개발자도구를 통해 직접 message 내용을 확인해 보세요.
      // ex) console.log(message);
  }
  </c:if>
	//위치 없을 때
	<c:if test="${latitude == '0'}">
		 var mapClose = document.getElementById('map'); // 지도를 표시할 div 
		 var img = document.createElement('img');
		 img.src = `${path}/resources/img/xboxmap.png`;
		 img.alt = `위치가 존재하지 않음`;
		 mapClose.appendChild(img);
	</c:if>
	
	function deleteReply(hrno, hno){
		var url = "${path}/replyDel?hrno=";
		var requestURL = url + hrno +"&hno=" + hno;
		location.replace(requestURL);
	}
  </script>
</body>
</html>
