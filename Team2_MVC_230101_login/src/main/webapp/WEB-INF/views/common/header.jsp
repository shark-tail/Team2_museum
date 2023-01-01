<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Header</title>

<!-- Viewport-->
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>


<body>
	<header
		class="navbar navbar-expand-lg navbar-light bg-light d-flex flex-column p-0"
		data-scroll-header>
		<%-- 헤더 --%>
		<div class="container header">
			<%-- 로고 --%>
			<h1 class="logo">
				<a href="${path}/">나만의 박물관</a>
			</h1>
 
			<%-- 로그인 전 --%>
			<c:if test="${loginMember == null}">
				<a class="btn btn-primary btn-sm rounded-pill order-lg-3"
					href="${path}/login/signIn">로그인</a>
			</c:if> 


			<%-- 로그인 후 --%>
		 	<c:if test="${ loginMember != null }"> 
				<div
					class="user-icons d-flex justify-content-center order-lg-3">
					<!-- 내정보 -->
					<a href="${path}/login/user-Info"><img
						src="${path}/resources/icon/account.svg" alt="account" /></a>
					<button onclick="location.replace('${path}/logout')">로그아웃</button>
				</div>
			 </c:if> 


			<%-- 검색바 --%>
			<div class="col-xl-6 col-lg-9 col-md-10 mx-auto px-0">
				<form
					class="form-group d-block d-md-flex position-relative rounded-md-pill mb-2 mb-sm-4 mb-lg-0">
					<div class="input-group input-group-lg">
						<input class="form-control mx-auto" type="text"
							placeholder="문화재를 검색하세요."> <span
							class="input-group-text text-muted rounded-pill pe-3"><i
							class="fi-search"></i></span>
					</div>
					<hr class="d-md-none my-2">
				</form>
			</div>
		</div>

		<%-- 네비 --%>
		<div class="container nav">
			<div class="collapse navbar-collapse order-lg-2" id="navbarNav">
				<ul class="navbar-nav navbar-nav-scroll"
					style="max-height: 35rem; margin: 0 auto;">
					<!-- Menu items-->
					<li class="nav-item dropdown"><a class="nav-link" href="${path}/searchMain">문화재</a></li>
					
					<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false">컬렉션</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="${path}/Collection">베스트 컬렉션</a></li>
							<li><a class="dropdown-item" href="${path}/collection-detail">나의 컬렉션</a></li>

						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">테마별 안내</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="/mvc/themeshow">테마 보기</a></li>
							<li><a class="dropdown-item" href="/mvc/tourMap">테마별 문화재
									투어</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a class="nav-link"
						href="/mvc/event-main">행사일정</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								href="${path}/board?type=notice">공지사항</a></li>
							<li><a class="dropdown-item" href="${path}/board?type=free">자유게시판</a></li>
							<li><a class="dropdown-item"
								href="${path}/board?type=question">질문게시판</a></li>
							<li><a class="dropdown-item"
								href="${path}/board?type=customer">고객센터</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</header>

</body>
</html>