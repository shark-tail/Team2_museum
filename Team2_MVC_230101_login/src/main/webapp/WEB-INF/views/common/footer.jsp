<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Footer</title>
  
  <!-- Viewport-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>


<body>

  <!-- 풋터 -->
  <footer class="footer pt-lg-5 pt-4 footer_color text-light">
    <br> <br>
    <hr />
    <br> <br>
    <div class="footer_expression">
      © Front. 2021 Htmlstream. All rights reserved.<br>

      When you visit or interact with our sites, services or tools, we or our authorised service providers may use
      cookies for storing information to <br>
      help provide you with a better, faster and safer experience and for marketing purposes.
    </div>

    <div class="py-4 border-top border-light">
      <div class="container d-flex flex-column flex-lg-row align-items-center justify-content-between py-2">
        <!-- Copyright-->
        <p class="order-lg-1 order-2 fs-sm mb-2 mb-lg-0"><span class="text-light opacity-60">&copy; All rights
            reserved. Made by </span><a class="nav-link-light fw-bold" href="https://createx.studio/" target="_blank"
            rel="noopener">Createx Studio</a></p>
        <div class="d-flex flex-lg-row flex-column align-items-center order-lg-2 order-1 ms-lg-4 mb-lg-0 mb-4">
          <!-- Links-->
          <div class="d-flex flex-wrap fs-sm mb-lg-0 mb-4 pe-lg-4"><a class="nav-link-light px-2 mx-1"
              href="#">About</a><a class="nav-link-light px-2 mx-1" href="#">Blog</a><a class="nav-link-light px-2 mx-1"
              href="#">Support</a><a class="nav-link-light px-2 mx-1" href="#">Contacts</a></div>
          <div class="d-flex align-items-center">
            <!-- Language switcher -->
            <div class="dropdown"><a
                class="nav-link nav-link-light dropdown-toggle fs-sm align-items-center p-0 fw-normal" href="#"
                id="langSwitcher" data-bs-toggle="dropdown" role="button" aria-expanded="false"><i
                  class="fi-globe mt-n1 me-2 align-middle"></i>Eng</a>
              <ul class="dropdown-menu dropdown-menu-dark my-1" aria-labelledby="langSwitcher">
                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2" src="${path}/resources/img/flags/de.png"
                      width="20" alt="Deutsch">Deutsch</a></li>
                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2" src="${path}/resources/img/flags/fr.png"
                      width="20" alt="Français">Français</a></li>
                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2" src="${path}/resources/img/flags/es.png"
                      width="20" alt="Español">Español</a></li>
              </ul>
            </div>
            <!-- Socials-->
            <div class="ms-4 ps-lg-2 text-nowrap">
              <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" style="color:black;" href="#">
                <i class="fi-facebook"></i></a>
              <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" style="color:black;" href="#">
                <i class="fi-twitter"></i></a>
              <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" style="color:black;" href="#">
                <i class="fi-telegram"></i></a>
              <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" style="color:black;" href="#">
                <i class="fi-messenger"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>  
  
</body>
</html>
