<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<title>Contact</title>
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
	</head>
	<body>
   <!--:헤더 시작::-->
   <header class="main_menu">
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="index.html"> <img src="../resources/img/logo.png" alt="logo"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="<c:url value="/member/index"/>">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="<c:url value="/member/library"/>">Library</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            Mypage
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="blog" id="navbarDropdown">내 서재</a>
                                            <a class="dropdown-item" href="single-blog">통계</a>
                                            <a class="dropdown-item" href="elements">리뷰</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog" id="navbarDropdown_1"
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
                            <a href="<c:url value="/member/login_signup"/>" class="btn_1 d-none d-lg-block">Login/SignUP</a>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- 헤더 끝-->
		<!-- Main -->
			<div id="main">

				<header class="major container medium" style="margin-bottom: 0px; width: 1000px;">
					<h2>lib-service 프로젝트입니다
					<br />
					</header>

				<div class="box alt container">
					<section class="feature left">
						<a href="#" class="image icon solid fa-tags"><img src="../resources/images/pic09.jpg" alt="" /></a>
						<div class="content">
							<h3>Team Purpose</h3>
							물리적인 도서의 구입량이 급감하고 있는 반면, 현대인이 인터넷에 연결되어 있는 </br>
							시간은 취침시간을 제외한 하루종일이라고 해도 과언이 아닐 정도가 되었다. </br>
							때문에 언제 어디서나 웹에 접속하여 읽고 싶은 도서를 </br>
							편하게 읽을 수 있게 하는 환경을 구축하는 것이 본 프로젝트의 목표이다.
						</div>
					</section>
					<section class="feature right">
						<a href="#" class="image icon solid fa-user-alt"><img src="../resources/images/pic02.jpg" alt="" /></a>
						<div class="content">
							<h3>Team Members</h3>
							<strong>Team leaders</strong> </br>
							최승환 </br>
							<strong>Team members</strong> </br>
							김기도, 김소휘, 김은지, 염한승
						</div>
					</section>
					<section class="feature left">
						<a href="#" class="image icon solid fa-address-book"><img src="../resources/images/pic03.jpg" alt="" /></a>
						<div class="content">
							<h3>Member Address</h3>
							<table>
								<tr>
									<th style="width: 50px;">최승환</th>
									<td>2</td>
								</tr>
								<tr>
									<th>김기도</th>
									<td>2</td>
								</tr>
								<tr>
									<th>김소휘</th>
									<td>2</td>
								</tr>
								<tr>
									<th>김은지</th>
									<td>2</td>
								</tr>
								<tr>
									<th>염한승</th>
									<td>y971103@naver.com</td>
								</tr>
							</table>
						</div>
					</section>
					<section class="feature right">
						<a href="#" class="image icon solid fa-map-marker-alt"><img src="../resources/images/pic11.jpg" alt="" /></a>
						<div class="content">
							<h3>Location</h3>
							<p>(06090)서울특별시 강남구 학동로 426 (삼성동) 02-3423-5114</p>
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
        <div class="row justify-content-between">
            <div class="col-sm-6 col-md-5">
                <div class="single-footer-widget">
                    <h4>Discover Destination</h4>
                    <ul>
                        <li><a href="#">Miami, USA</a></li>
                        <li><a href="#">California, USA</a></li>
                        <li><a href="#">London, UK</a></li>
                    </ul>

                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="single-footer-widget">
                    <h4>Subscribe Newsletter</h4>
                    <div class="form-wrap" id="mc_embed_signup">
                        <form target="_blank"
                            action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                            method="get" class="form-inline">
                            <input class="form-control" name="EMAIL" placeholder="Your Email Address"
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '"
                                required="" type="email">
                            <button class="click-btn btn btn-default text-uppercase"> <i class="far fa-paper-plane"></i>
                            </button>
                            <div style="position: absolute; left: -5000px;">
                                <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value=""
                                    type="text">
                            </div>

                            <div class="info"></div>
                        </form>
                    </div>
                    <p>Subscribe our newsletter to get update news and offers</p>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="single-footer-widget footer_icon">
                    <h4>Contact Us</h4>
                    <p>4156, New garden, New York, USA
                            +880 362 352 783</p>
                    <span>contact@martine.com</span>
                   
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