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

<script src="${path}/resources/js/jquery-3.6.0.min.js"></script>

<style>
.button {
	border: none;
}
</style>


</head>

<body>
	<!-- Page loading spinner-->


	<main class="page-wrapper">

		<jsp:include page="../common/header.jsp" />

		<div
			style="display: flex; margin: 20px 300px; flex-direction: column;">
			<div
				style="border-bottom: 1px solid rgb(87, 85, 85); position: relative; top: 120px; border: none;"></div>

			<div style="display: flex; justify-content: end; margin-right: 30px;">
				<button onclick="location.replace('${path}/logout')"
					class="logout_btn"
					style="width: 120px; height: 40px; border-radius: 20px; background-color: rgb(255, 102, 0); color: white; border: none;">
					로그아웃</button>
			</div>


			<!--회원정보창-->
			<form id="enroll-container" action="${path}/login/update" method="post">
				<div
					style="width:800px; margin:auto; margin-top: 20px; padding:30px; border: 1px solid rgb(87, 85, 85); border-radius: 10px;">
					<h1 style="font-size: 25px; padding: 15px; border-bottom:1px solid rgb(87, 85, 85);">회원정보</h1>

					<div style="height: 70px; display: flex; align-items: center;">
						<div style="width: 200px; height: 20px; display: flex;">
							<h1 style="font-size: 20px; margin-left: 15px;">아이디</h1>
						</div>
						<input type="text" name="id" value="${loginMember.id}"
							style="width: 400px; height: 40px; border: none;" readonly
							required />
					</div>

					<div style="height: 70px; display: flex; align-items: center;">
						<div style="width: 200px; height: 20px; display: flex;">
							<h1 style="font-size: 20px; margin-left: 15px;">프로필</h1>
						</div>
						<img src="${path}/resources/img/login_image/user.jpg"
							style="width: 60px; height: 60px;"> 
							<input type="button" id="change_icon" value="변경"
							style="margin-left: 20px; width: 80px; height:35px; background-color:#50604E; 
							border: none; color: white; border-radius: 20px;">
					</div>

					<div style="height: 70px; display: flex; align-items: center;">
						<div style="width: 200px; height: 20px; display: flex;">
							<h1 style="font-size: 20px; margin-left: 15px;">이름</h1>
						</div>
						<input type="text" name="name" value="${loginMember.name}"
							style="width: 400px; height: 40px;" required />
					</div>

					<div style="height: 70px; display: flex; align-items: center;">
						<div style="width: 200px; height: 20px; display: flex;">
							<h1 style="font-size: 20px; margin-left: 15px;">별명</h1>
						</div>
						<input type="text" name="nickname" value="${loginMember.nickname}"
							style="width: 400px; height: 40px;" required />
					</div>

					<div style="height: 70px; display: flex; align-items: center;">
						<div style="width: 200px; height: 20px; display: flex;">
							<h1 style="font-size: 20px; margin-left: 15px;">이메일</h1>
						</div>
						<input type="texy" name="email" value="${loginMember.email}"
							style="width: 400px; height: 40px;" required />
					</div>

					<!--정보수정 버튼-->
					<div style="width: 100%; display: flex; justify-content: end;">
						<input type="submit" value="수정"
							style="margin-right: 30px; width: 80px; height:35px; border: none; background-color:#50604E; color: white; border-radius: 20px;" />
					</div>
				</div>
			</form>
			<!--회원정보창끝-->



			
			<!--비밀번호 수정창-->
			<form id="updatePassword-container" action="${path}/login/updatePwd" method="post">
				<div style="width:800px; margin:auto; margin-top: 20px; padding:30px; border: 1px solid rgb(87, 85, 85); border-radius: 10px;">
					<h1 style="font-size: 25px; padding: 15px; border-bottom:1px solid rgb(87, 85, 85);">비밀번호 수정</h1>

					<div style="height: 70px; display: flex; align-items: center;">
						<div style="width: 200px; height: 20px; display: flex;">
							<h1 style="font-size: 20px; margin-left: 15px;">새 비밀번호</h1>
						</div>
						<input type="password" name="userPwd" id="pass1" style="width: 400px; height: 40px;"
							placeholder=" *8자 이상 / 특수문자 1개 이상 포함 / 대소문자 포함" required />
					</div>

					<div style="height: 70px; display: flex; align-items: center;">
						<div style="width: 200px; height: 20px; display: flex;">
							<h1 style="font-size: 20px; margin-left: 15px;">새 비밀번호 확인</h1>
						</div>
						<input type="password" id="pass2" style="width: 400px; height: 40px;"
							placeholder=" *8자 이상 / 특수문자 1개 이상 포함 / 대소문자 포함" required />
					</div>

					<!--정보수정 버튼-->
					<div style="width: 100%; display: flex; justify-content: end;">
						<input type="submit" value="수정" id="updateSubmit"onclick="return validate();"
							style="margin-right: 30px; width: 80px; height:35px; border: none; background-color:#50604E; color: white; border-radius: 20px;" />
					</div>
				</div>
			</form>
			<script>
                $(document).ready(() => {
                    $("#updateSubmit").on("click", (e) => {
                        let pass1 = $("#pass1").val();
                        let pass2 = $("#pass2").val();

                        if (pass1.trim() != pass2.trim()) {
                            alert("비밀번호가 일치하지 않습니다.");

                            $("#pass1").val("");
                            $("#pass2").val("");
                            $("#pass1").focus();

                            return false;
                        }
                    });
                });
                
                
            </script>
			<!--비밀번호 수정창 끝-->


			<!--회원탈퇴창-->
			<form id="enroll-container" action="${path}/login/update" method="post">
			<div style="width:800px; margin:auto; margin-top: 20px; padding:30px; border: 1px solid rgb(87, 85, 85); border-radius: 10px;">
				<h1 style="font-size: 25px; padding: 15px; border-bottom:1px solid rgb(87, 85, 85);">회원탈퇴</h1>
				<h1 style="font-size: 15px; margin-left: 15px;">
					탈퇴 하실 경우에는 보유한 컬렉션 내역이 자동 소멸되며, <br> 같은 아이디로 재가입이 불가하오니 유의해주시기
					바랍니다.
				</h1>
				<h1 style="font-size: 15px; margin-left: 15px;">
					SNS(네이버, 카카오, 구글)로 가입한 계정 탈퇴 시, <br> 같은 계정으로 재가입이 불가능하오니 신중하게
					선택해주세요.
				</h1>

				<!--정보수정 버튼-->
				<div style="width: 100%; display: flex; justify-content: end;">
					<input type="button" id="deleteMember" value="탈퇴"
						style="margin-right: 30px; border: none; width: 80px; height:35px; background-color: red; color: white; border-radius: 20px;" />
				</div>

			</div>
			</form>
			<script>
                $(function () {
                    $("#deleteMember").on("click", (e) => {
                        if (confirm("정말로 탈퇴하시겠습니까?!")) {
                            location.replace('${path}/login/delete');
                        }
                    });
                });
            </script>
		</div>
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
	<script src="${path}/resources/js/page-loading.js"></script>
</body>

</html>