<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
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
	href="${path}/resources/css/sign_in.css">

<script src="${path}/resources/js/jquery-3.6.0.min.js"></script>

<!--쿠키로 아이디 저장하는 스크립트-->
<script>
        $(document).ready(function () {
            // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
            var key = getCookie("key");
            $("#userId").val(key);

            // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
            if ($("#userId").val() != "") {
                $("#checkId").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
            }

            $("#checkId").change(function () { // 체크박스에 변화가 있다면,
                if ($("#checkId").is(":checked")) { // ID 저장하기 체크했을 때,
                    setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
                } else { // ID 저장하기 체크 해제 시,
                    deleteCookie("key");
                }
            });

            // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
            $("#userId").keyup(function () { // ID 입력 칸에 ID를 입력할 때,
                if ($("#checkId").is(":checked")) { // ID 저장하기를 체크한 상태라면,
                    setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
                }
            });
        });

        // 쿠키 저장하기 
        // setCookie => saveid함수에서 넘겨준 시간이 현재시간과 비교해서 쿠키를 생성하고 지워주는 역할
        function setCookie(cookieName, value, exdays) {
            var exdate = new Date();
            exdate.setDate(exdate.getDate() + exdays);
            var cookieValue = escape(value)
                + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
            document.cookie = cookieName + "=" + cookieValue;
        }

        // 쿠키 삭제
        function deleteCookie(cookieName) {
            var expireDate = new Date();
            expireDate.setDate(expireDate.getDate() - 1);
            document.cookie = cookieName + "= " + "; expires="
                + expireDate.toGMTString();
        }

        // 쿠키 가져오기
        function getCookie(cookieName) {
            cookieName = cookieName + '=';
            var cookieData = document.cookie;
            var start = cookieData.indexOf(cookieName);
            var cookieValue = '';
            if (start != -1) { // 쿠키가 존재하면
                start += cookieName.length;
                var end = cookieData.indexOf(';', start);
                if (end == -1) // 쿠키 값의 마지막 위치 인덱스 번호 설정 
                    end = cookieData.length;
                console.log("end위치  : " + end);
                cookieValue = cookieData.substring(start, end);
            }
            return unescape(cookieValue);
        }
    </script>
</head>

<body>
	<div class="page">
		<h1 class="logo">
			<a href="${path}/">나만의 박물관</a>
		</h1>


		<div class="login">
			<h1>로그인</h1>
		</div>
		<hr
			style="margin-top: 10px; margin-bottom: 20px; background-color: var(- -clr-green); border: none; width: 100%; height: 2px;">

		<form id="loginFrm" action="${path}/login/signIn" method="post">
			<div class="text_id">
				<h1>아이디</h1>
			</div>
			<input type="text" name="userId" id="userId" class="text_field"
				required="required">


			<div class="text_pw">
				<h1>비밀번호</h1>
			</div>
			<input type="password" name="userPwd" id="userPwd" class="text_field"
				required="required">

			<div class="save" style="margin-top: 5px">
				<input type="checkbox" id="checkId"> <label for="checkId"></label>
				<h1>아이디 기억하기</h1>
			</div>

			<input type="submit" class="login_btn" value="로그인">
		</form>

		<hr
			style="margin-top: 10px; background-color: var(- -clr-green); border: none; width: 100%; height: 2px;">

		<!-- 링크 -->
		<ul class="links">
			<li>
				<h1>
					<a href="${path}/login/find-id">아이디 찾기 </a>
				</h1>
			</li>
			<li>
				<h1>
					<a href="${path}/login/find-pw">비밀번호 찾기 </a>
				</h1>
			</li>
			<li>
				<h1>
					<a href="${path}/login/sign-up">회원가입</a>
				</h1>
			</li>
		</ul>


		<!-- 카카오 간편 로그인 -->
		<div class="mt-5 mb-4 d-flex justify-content-between">
			<a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=9d00c307e0c2c8a0d73a5ce50d52f46b&redirect_uri=http://localhost:8080/mvc/login/sign-up/kakao">
				<img src="${path}/resources/img/login_image/kakao_login_medium_wide (1).png"/>
			</a>
			
			<a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=9d00c307e0c2c8a0d73a5ce50d52f46b&redirect_uri=http://localhost:8080/mvc/login/kakaoLogin">
				<img src="${path}/resources/img/login_image/kakao_login_medium_wide.png"/>
			</a>
		</div>

		<!--구글 간편 로그인-->
		<a href="">
			<div class="google_btn">
				<img src="${path}/resources/img/login_image/google_logo.png"
					class="logo_icon">
				<h1>구글 로그인</h1>
			</div>
		</a>

	</div>

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

</body>

</html>