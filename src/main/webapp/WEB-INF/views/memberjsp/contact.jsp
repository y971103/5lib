<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<title>Lib-service</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../resources/contact_css/css/main.css" />
		<link rel="icon" href="../resources/img/favicon.png">
        <!-- Bootstrap CSS -->
	    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
	    <!-- owl carousel CSS -->
	    <link rel="stylesheet" href="../resources/css/owl.carousel.min.css">
	    <!-- themify CSS -->
	    <link rel="stylesheet" href="../resources/css/themify-icons.css">
	    <!-- flaticon CSS -->
	    <link rel="stylesheet" href="../resources/css/flaticon.css">
	    <!-- fontawesome CSS -->
	    <link rel="stylesheet" href="../resources/fontawesome/css/all.min.css">
	    <!-- hover CSS -->
	    <link rel="stylesheet" href="../resources/css/hover.css">
	    <!-- style CSS -->
	    <link rel="stylesheet" href="../resources/css/style.css">
	     <!-- 다크모드 css,js -->  
	    <link rel="stylesheet" href="../resources/css/dark.css">
	    <script src="../resources/js/dark.js"></script>
	</head>
	<body>
   <!--:헤더 시작::-->
   <header class="main_menu">
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="<c:url value="/book/index"/>"> <img src="../resources/img/logo.png" alt="logo"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="<c:url value="/book/index"/>">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="<c:url value="/book/kakaolibrary"/>">Library</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            My page
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="<c:url value="/mypage/shelf"/>" id="navbarDropdown">내 서재</a>
                                            <a class="dropdown-item" href="<c:url value="/mypage/habit"/>">통계</a>
                                            <a class="dropdown-item" href="<c:url value="/mypage/comment"/>">리뷰</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle"id="navbarDropdown_1"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            Board
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                            <a class="dropdown-item" href="<c:url value="/board/notice_QnA"/>">Notice & QnA</a>
                                        	<a class="dropdown-item" href="<c:url value="/essay/essay"/>">Essay</a>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="<c:url value="/member/contact"/>">Contact</a>
                                    </li>
                                </ul>
                            </div>
                           <c:if test="${loginId != null}">
							<h2 style="letter-spacing: 0px;">
								${sessionScope.loginId}♡ <br>
							</h2>
							<a href="<c:url value="/member/logout"/>" class="btn_1 text-cnter" style="width:80px;height:20px;font-family: 'CookieRun-Regular';font-size:12px;padding-right: 0px;padding-left: 0px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">로그아웃</a>
							<a href="<c:url value="/member/update"/>" class="btn_2 text-cnter" style="width:120px;height:20px;font-family: 'CookieRun-Regular';font-size:12px;padding-right: 0px;padding-left: 0px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">회원정보 수정</a>
							</c:if>
							 <c:if test="${loginId == null}">
                            <a href="<c:url value="/member/login_signup"/>" class="btn_1 d-none d-lg-block">Login / SignUp</a>
                            </c:if>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- 헤더 끝-->
		<!-- Main -->
			<div id="main2">

				<header class="major container medium" id="hmajor" style="margin-bottom: 0px; width: 1000px;">
					<h1><strong>lib-service</strong></h1>
					<br />
				</header>

				<div class="box alt container">
					<section class="feature left">
						<a href="#" class="image icon solid fa-tags"><img src="../resources/images/pic05.jpg" alt="" /></a>
						<div class="content" style="line-height:30px;">
							<h3>Project Purpose</h3>
							<br>
							물리적인 도서의 구입량이 급감하고 있는 반면, 현대인이 인터넷에 <br>
							연결되어 있는 시간은 취침시간을 제외한 하루종일이라고 해도 과언이<br>
							아닐 정도가 되었다. 때문에 언제 어디서나 웹에 접속해 읽고 싶은 도서를<br> 
							편하게 읽을 수 있게 하는 환경을 구축하는 것이 본 프로젝트의 목표다.
							
						</div>
					</section>
					<section class="feature right">
						<a href="#" class="image icon solid fa-user-alt"><img src="../resources/images/pic02.jpg" alt="" /></a>
						<div class="content">
							<h3>Team Members</h3>
							<strong>Team leaders</strong> </br>
							최승환   (choi90@gmail.com)</br>
							<br>
							<strong>Team members</strong> </br>
							김기도   (kkd9255@gmail.com) <br>
							김소휘   (sohwe05@gmail.com) <br>
						         김은지   (eunji94@naver.com) <br>
							염한승   (y971103@naver.com) <br>
						</div>
					</section>
					<section class="feature left">
						<a href="#" class="image icon solid fa-address-book"><img src="../resources/images/pic03.jpg" alt="" /></a>
						<div class="content">
							<h3>About Team</h3>
							<table id="info">
								<tr>
									<td style="padding-bottom:6px;"><strong>Company</strong></td><br>
									<td>KITA IT Academy</td>
									
								</tr>
								<tr>
									<td style="padding-bottom:6px;"><strong>Team Name</strong></td><br>
									<td>Digital Master Team 5</td>
									
								</tr>
								<tr>
									<td><strong>GitHub</strong></td><br>
									<td>https://github.com/y971103/5lib</td>
								</tr>
							</table>
						</div>
					</section>
					<section class="feature right">
						<a href="#" class="image icon solid fa-map-marker-alt"><img src="../resources/images/pic11.jpg" alt="" /></a>
						<div class="content" style="line-height:30px;">
							<h3 id="address">Location</h3><br><br>
							<p id="address" style="font-family: 'CookieRun-Regular';">(06090)서울특별시 강남구 학동로 426 (삼성동)</p>
							<p id="address" style="font-family: 'CookieRun-Regular';">한국무역협회 무역아카데미 IT교육센터 (코엑스 4층)</p>
							<p id="address" style="font-family: 'CookieRun-Regular';"><strong>전화</strong> 02-6000-5378,5379 &nbsp;&nbsp;  <strong>팩스</strong> 02-6000-5066</p>
						</div>
					</section>
				</div>
</div>

<!-- Scripts -->
        <script src="../resources/assets/js/jquery.min.js"></script>
        <script src="../resources/assets/js/browser.min.js"></script>
        <script src="../resources/assets/js/breakpoints.min.js"></script>
        <script src="../resources/assets/js/util.js"></script>
        <script src="../resources/assets/js/main.js"></script>
 <!-- footer part start-->
  <footer class="footer-area">
    <div class="container">
        <div class="row justify-content-between" style="padding-right:100px;">
            <div class="col-sm-6 col-md-5">
                <div class="single-footer-widget">
                    <h4>Project Members</h4>
                    <ul>
                        <li><a href="#">최승환</a></li>
                        <li><a href="#">김기도</a></li>
                        <li><a href="#">김소휘</a></li>
                        <li><a href="#">김은지</a></li>
                        <li><a href="#">염한승</a></li>
                    </ul>

                </div>
            </div>
            
            <div class="col-sm-6 col-md-4">
                    <div class="single-footer-widget">
                       <div class="darkmode">
                       <h4>Dark Mode </h4>
				            <div class="inner">
				                <input type="radio" name="toggle" id="toggle-radio-light" checked><label for="toggle-radio-light" class="tolight"><i class="fas fa-sun tolight"></i></label>
				                <input type="radio" name="toggle" id="toggle-radio-dark"><label for="toggle-radio-dark" class="todark"><i class="fas fa-moon todark"></i></label>
				                <div class="darkmode-bg"></div>
				            </div>
        </div>
                    </div>
                </div>
            
            <div class="col-sm-6 col-md-3">
                <div class="single-footer-widget footer_icon">
                    <h4 style="width:300px;">Address Of Our Project </h4>
                    <p><a href="https://github.com/y971103/5lib" style="color:white; font-family: 'CookieRun-Regular';">https://github.com/y971103/5lib</a></p>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="copyright_part_text text-center">
                    <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <i class="ti-heart" aria-hidden="true"></i>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer part end-->

<!-- jquery plugins here-->
<script src="../resources/js/jquery-1.12.1.min.js"></script>
<!-- popper js -->
<script src="../resources/js/popper.min.js"></script>
<!-- bootstrap js -->
<script src="../resources/js/bootstrap.min.js"></script>
<!-- magnific js -->
<script src="../resources/js/jquery.magnific-popup.js"></script>
<!-- swiper js -->
<script src="../resources/js/owl.carousel.min.js"></script>
<!-- masonry js -->
<script src="../resources/js/masonry.pkgd.js"></script>
<!-- masonry js -->
<script src="../resources/js/jquery.nice-select.min.js"></script>
<script src="../resources/js/gijgo.min.js"></script>
<!-- contact js -->
<script src="../resources/js/jquery.ajaxchimp.min.js"></script>
<script src="../resources/js/jquery.form.js"></script>
<script src="../resources/js/jquery.validate.min.js"></script>
<script src="../resources/js/mail-script.js"></script>
<script src="../resources/js/contact.js"></script>
<!-- custom js -->
<script src="../resources/js/custom.js"></script>

		<!-- Scripts -->
			<script src="../resources/contact_css/js/jquery.min.js"></script>
			<script src="../resources/contact_css/js/browser.min.js"></script>
			<script src="../resources/contact_css/js/breakpoints.min.js"></script>
			<script src="../resources/contact_css/js/util.js"></script>
			<script src="../resources/contact_css/js/main.js"></script>

	</body>
</html>