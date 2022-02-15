<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
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
                                    <a class="nav-link" href="index.html">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="library.html">Library</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        Mypage
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="blog.html" id="navbarDropdown">내 서재</a>
                                        <a class="dropdown-item" href="single-blog.html">통계</a>
                                        <a class="dropdown-item" href="elements.html">리뷰</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_1"
                                        role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        Board
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                        <a class="dropdown-item" href="notice_qna">Notice & QnA</a>
                                        <a class="dropdown-item" href="essaylist">Essay</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.html">Contact</a>
                                </li>
                            </ul>
                        </div>
                        <a href="#" class="btn_1 d-none d-lg-block">Login/SignUP</a>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- 헤더 끝-->
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-4">
                <br></br>
                <h1 class="heading-section">Board</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h3 class="h5 mb-4 text-center">Notice & QnA</h3>
                <a href="QnAwrite" class="btn_2 text-cnter" style="margin-left: 1000px;">글쓰기</a>
                <div class="table-wrap">
                    <table class="table myaccordion table-hover" id="accordion">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>제목</th>
                          <th>작성자</th>
                          <th>조회수</th>
                          <th>등록일</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                          <th scope="row">1</th>
                          <td>배송 문의</td>
                          <td>soso</td>
                          <td>10</td>
                          <td>21.12.12</td>
                          <td>
                              <i class="fa" aria-hidden="true"></i>
                        </td>
                        </tr>
                        <tr>
                            <td colspan="6" id="collapseOne" class="collapse show acc" data-parent="#accordion">
                                <p>배송 문의합니다.</p>
                            </td>
                        </tr>

                        <tr data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" class="collapsed">
                          <th scope="row">2</th>
                          <td>문의합니다.</td>
                          <td>rlathgnl</td>
                          <td>9</td>
                          <td>21.12.31</td>
                          <td>
                              <i class="fa" aria-hidden="false"></i>
                        </td>
                        </tr>
                            <tr>
                            <td colspan="6" id="collapseTwo" class="collapse acc" data-parent="#accordion">
                                <p>에휴힘들어</p>
                            </td>
                        </tr>

                        <tr data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="collapsed">
                          <th scope="row">3</th>
                          <td>문의문의</td>
                          <td>uejdf</td>
                          <td>2</td>
                          <td>22.1.11</td>
                          <td>
                              <i class="fa" aria-hidden="false"></i>
                        </td>
                        </tr>
                            <tr>
                            <td colspan="6" id="collapseThree" class="collapse acc" data-parent="#accordion">
                                <p>무니무니</p>
                            </td>
                        </tr>

                        <tr data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour" class="collapsed">
                          <th scope="row">4</th>
                          <td>큐앤에이</td>
                          <td>fofo</td>
                          <td>23</td>
                          <td>22.1.23</td>
                          <td>
                              <i class="fa" aria-hidden="false"></i>
                        </td>
                        </tr>
                            <tr>
                            <td colspan="6" id="collapseFour" class="collapse acc" data-parent="#accordion">
                                <p>동해 물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세</p>
                            </td>
                        </tr>
                      </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<br></br>

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
                            <li><a href="#">Saintmartine, Bangladesh</a></li>
                            <li><a href="#">Mount Everast, India</a></li>
                            <li><a href="#">Sidney, Australia</a></li>
                            <li><a href="#">Miami, USA</a></li>
                            <li><a href="#">California, USA</a></li>
                            <li><a href="#">London, UK</a></li>
                            <li><a href="#">Saintmartine, Bangladesh</a></li>
                            <li><a href="#">Mount Everast, India</a></li>
                            <li><a href="#">Sidney, Australia</a></li>
                        </ul>

                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="single-footer-widget">
                        <h4>Subscribe Newsletter</h4>
                        <div class="form-wrap" id="mc_embed_signup">
                            <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">
                                <input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" required="" type="email">
                                <button class="click-btn btn btn-default text-uppercase"> <i class="far fa-paper-plane"></i>
                                </button>
                                <div style="position: absolute; left: -5000px;">
                                    <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
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
                        <p>4156, New garden, New York, USA +880 362 352 783</p>
                        <span>contact@martine.com</span>
                        <div class="social-icons">
                            <a href="#"><i class="ti-facebook"></i></a>
                            <a href="#"><i class="ti-twitter-alt"></i></a>
                            <a href="#"><i class="ti-pinterest"></i></a>
                            <a href="#"><i class="ti-instagram"></i></a>
                        </div>
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
    <!-- footer part end-->

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
</html>
