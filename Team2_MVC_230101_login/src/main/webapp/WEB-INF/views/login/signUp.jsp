<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>회원가입 페이지</title>
    <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
    <link rel="stylesheet" media="screen" href="${path}/resources/css/common/page-loading.css">
    <!-- SEO Meta Tags-->
    <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
    <meta name="keywords"
        content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/tiny-slider.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/flatpickr.min.css" />
    <!-- 직접 작성한 Styles -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
    <link rel="stylesheet" media="screen" href="${path}/resources/css/common/header-footer.css">
    <link rel="stylesheet" media="screen" href="${path}/resources/css/sign_up.css">
    <script src="${path}/resources/js/jquery-3.6.0.min.js"></script>
    
</head>

<body>
    <div class="page">
        <h1 class="logo"><a href="${path}/">나만의 박물관</a></h1>

        <div class="login">
            <h1>회원가입</h1>
        </div>
        <hr style="
        margin-top: 10px;
        margin-bottom: 10px;
        background-color: var(--clr-green);
        border: none;
        width: 100%;
        height: 2px;">

        <form id="enroll-container" name="memberEnrollFrm" action="${path}/login/enroll" method="post">
            <input type="hidden" name="kakaoToken" value="${kakaoMap.id}">
            <div class="sec1">
                <div class="word">
                    <h1>아이디</h1>
                </div>
                <div class="box_and_check">
                    <input type="text" name="id" id="newId" class="textbox1" placeholder="아이디 (4글자 이상)" required />
                    <button type="button" id="checkDuplicate" value="중복확인" class="checkDup" ></button>
                </div>

                <div class="word">
                    <h1>별명</h1>
                </div>
                <div class="box_and_check">
                    <input type="text" name="nickname" id="newNickName" class="textbox1" placeholder="닉네임 (2글자 이상)" required />
                    <input type="button" id="nickNamecheckDuplicate" value="중복확인" class="checkDup" />
                </div>

                <div class="word">
                    <h1>패스워드</h1>
                </div>
                <div class="onlybox">
                    <input type="password" name="password" id="pass1" class="textbox2"
                        placeholder=" · 8자 이상 / 특수문자 1개 이상 포함 / 대소문자 포함" required />
                </div>
				
                <div class="word">
                    <h1>패스워드 확인</h1>
                </div>
                <div class="onlybox">
                    <input type="password" id="pass2" class="textbox2" required />
                </div>

                <div class="word">
                    <h1>이름</h1>
                </div>
                <div class="onlybox">
                    <input type="text" name="name" id="name" class="textbox2" required />
                </div>

                <div class="word">
                    <h1>이메일</h1>
                </div>
                <div class="onlybox">
                    <input type="email" name="email" id="email" class="textbox2" required />
                </div>

                <div class="buttons">
                    <input type="reset" value="초기화" class="b" />
                    <input type="submit" id="enrollSubmit" value="회원가입" class="b" />
                </div>

            </div>
        </form>



    </div>
      <jsp:include page="../common/footer.jsp"/>

  <!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll>
            <span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span>
            <i class="btn-scroll-top-icon fi-chevron-up"></i></a>

    <!-- Vendor scrits: js libraries and plugins-->
    <script src="${path}/resources/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/js/vendor/simplebar.min.js"></script>
    <script src="${path}/resources/js/vendor/smooth-scroll.polyfills.min.js"></script>
    <script src="${path}/resources/js/vendor/tiny-slider.js"></script>
    <script src="${path}/resources/js/vendor/flatpickr.min.js"></script>
    <script src="${path}/resources/js/vendor/jarallax.min.js"></script>
    <!-- Main theme script + Page Loading script -->
    <script src="${path}/resources/js/theme.js"></script>
 <%--    <script src="${path}/resources/js/page-loading.js"></script> --%>
 
   <script type="text/javascript">
	$(function() {
		$("#pass2").blur((event) => {
			let pass1 = $("#pass1").val();			
			let pass2 = $(event.target).val();
			
			if(pass1.trim() != pass2.trim()) {
				alert("비밀번호가 일치하지 않습니다.");
				
				$("#pass1").val("");
				$(event.target).val("");
				$("#pass1").focus();
			}
		});
    	
	    $("#enrollSubmit").on("click", () => {
	    	// TODO 전송하기 전에 각 영역에 유효성 검사로직을 추가하는 부분!
	    	//return false;
	    });
	    
	    // 아이디 중복을 확인하는 AJAX 코드
	    $("#checkDuplicate").on("click", () => {
	    	let id = $("#newId").val().trim();
	    	
	    	if(id.length < 4){
	    		alert("아이디는 최소 4글자입니다.")
	    		return;
	    	}
	    	
	    	$.ajax({
	    		type:"get",
	    		url:"${path}/login/idCheck",
	    		data:{id}, // 속성값이 키값과 같은 이름을 가질때 하나로만 key-value 채운다.
	    		success:
	    			(data)=>{ // validate key값
	    				console.log(data);
	    				if(data.validate === true){
	    					alert("이미 사용중인 아이디입니다.")
	    				} else{
	    					alert("사용 가능한 아이디입니다.")
	    				}
	    			},
	    		error:
	    			(e)=>{
						console.log(e);	    				
	    			}
	    	});
	    });
	    
	 // 닉네임 중복을 확인하는 AJAX 코드
		$("#nickNamecheckDuplicate").on("click", () => {
			let nickname = $("#newNickName").val().trim();

			if (nickname.length < 2) {
				alert("닉네임은는 최소 2글자입니다.")
				return;
			}

			$.ajax({
				type: "get",
				url: "${path}/login/nickNameCheck",
				data: {nickname}, // 속성값이 키값과 같은 이름을 가질때 하나로만 key-value 채운다.
				success:
					(data) => { // validate2 key값
						console.log(data);
						if (data.validate2 === true) {
							alert("이미 사용중인 닉네임입니다.")
						} else {
							alert("사용 가능한 닉네임입니다.")
						}
					},
				error:
					(e) => {
						console.log(e);
					}
			});
		});
	});
</script> 
    
</body>

</html>