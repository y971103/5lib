<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>book_info</title>
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

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

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
                                            <a class="dropdown-item" href="<c:url value="/board/shelf"/>" id="navbarDropdown">내 서재</a>
                                            <a class="dropdown-item" href="<c:url value="/board/habit"/>">통계</a>
                                            <a class="dropdown-item" href="<c:url value="/board/comment"/>">리뷰</a>
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
                            <c:if test="${loginId != null}">
							<h2>
								${sessionScope.loginId}님 <br>
							</h2>
							<a href="logout" class="btn_1 text-cnter" style="width:80px;height:20px;font-size:12px;padding-right: 0px;padding-left: 17px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">로그아웃</a>
							</c:if>
							 <c:if test="${loginId == null}">
                            <a href="<c:url value="/member/login_signup"/>" class="btn_1 d-none d-lg-block">Login/SignUP</a>
                            </c:if>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- 헤더 끝-->

    <!-- Product Details Section Begin -->
    <section>
        <div class="container" style="margin-bottom: 20px;">
            <div class="row">       
                <div style="padding-left: 10%;">
                    <img src="../resources/img/test22.jpg" alt="">
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <h3><strong>미드나잇 라이브러리</strong></h3>
                        <div>
                            <ul>
                                <li class="binfo">
                                    <span style="font-size: large;"><strong>저자</strong></span>
                                    <div>
                                       메트 헤이그
                                    </div>
                                </li>
                                <li class="binfo">
                                    <span style="font-size: large;"><strong>출판사</strong></span>
                                    <div>
                                        인플루엔셜
                                    </div>
                                </li>
                                <li class="binfo">
                                    <span style="font-size: large;"><strong>출간</strong></span>
                                    <div>
                                        2021.04.28
                                    </div>
                                </li>
                            </ul>
                        </div>
                        
                        
                        <h4><strong>책 소개</strong></h4>
                        <div>
                            <ul>
                                <li style="width: 500px;" class="binfo">
                                    죽기로 결심한 주인공 ‘노라 시드’가 삶과 죽음 사이에 존재하는 미스터리한 도서관 ‘미드나잇 라이브러리’에서
                                     눈을 뜨며 시작되는 이 소설은 노라가 인생의 두 번째 기회를 얻으며, 가장 완벽한 삶을 찾기 위한 모험을 떠나는 이야기이다. 
                                </li>
                            </ul>
                        </div>
                    </div>
                    <br>
                    <input type="button" value="E-Pub 파일 다운" class="readbt" onClick="location.href='http://localhost:8888/library/download'">
                    <input type="button" value="E-Pub 뷰어 열기" class="readbt" onClick="location.href='viewer'">
                </div>
                
                <div class="col-lg-12" style="padding-left: 10%;">
                    <div class="product__details__tab" style="padding-right: 23%;">
                        <ul class="nav nav-tabs" style="margin-top: 35px; margin-bottom: 10px;">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">한 줄 리뷰</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="line_bottom">
                                <span>아이디</span>
                                <span>2022.02.13</span>
                                <div class="one_line">좋은 책입니다!!!!!!!!!!</div>
                            </div>
                            <div class="line_bottom">
                                <span>아이디</span>
                                <span>2022.02.13</span>
                                <div class="one_line">으아아아아아ㅏ아아아아아아아ㅏㅇ</div>
                            </div>
                            <div class="line_bottom">
                                <span>아이디</span>
                                <span>2022.02.13</span>
                                <div class="one_line">이거 가능 하겠지? css 너무 난잡하네</div>
                            </div>

                            <div>
                                <input type="text" placeholder="한 줄 리뷰를 작성 해보세요 / 로그인 했을때만 보이게 하면 될듯" class="write_review"> <input type="submit" value="등록" class="sub_review">
                            </div>
                            
                        </div>
                    </div>
                </div>

                <h2 style="margin-top: 15px; margin-left: 10%;">지금 이 책 말고 다른 책은 어떠세요?</h2>
                <div class="row" style="margin-left: 10%;">
                    <div class="photo" style="margin-right: 22px;">
                        <img src="../resources/img/rec1.jpg" alt="">
                    </div>
                    <div class="photo" style="margin-right: 22px;">
                        <img src="../resources/img/rec1.jpg" alt="">
                    </div>
                    <div class="photo" style="margin-right: 22px;">
                        <img src="../resources/img/rec1.jpg" alt="">
                    </div>
                    <div class="photo" style="margin-right: 22px;">
                        <img src="../resources/img/rec1.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Footer Section Begin -->
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->

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
</body>
</html>