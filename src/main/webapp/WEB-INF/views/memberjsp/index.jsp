<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Martine</title>
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
                            <a class="navbar-brand" href="index"> <img src="../resources/img/logo.png" alt="logo"> </a>
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
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- 헤더 끝-->

    <!-- 도서 슬라이드(배너)-->
    <section class="client_review section_padding" style="padding-top: 63px; background: linear-gradient(135deg, #75cc5f, #f1feff);"  >
        <div class="container">
            <div class="row ">
                <div class="col-xl-6">
                    <div class="section_tittle">
                        <h2>Best seller</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="client_review_slider owl-carousel">
                        <div class="photo">
                            <img src="../resources/img/test1.jpg" alt="">
                        </div>
                        <div class="photo">
                            <img src="../resources/img/test2.jpg" alt="">
                        </div>
                        <div class="photo">
                            <img src="../resources/img/test3.jpg" alt="">
                        </div>
                        <div class="photo">
                            <img src="../resources/img/test4.jpg" alt="">
                        </div>
                        <div class="photo">
                            <img src="../resources/img/test3.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 도서 슬라이드(배너) 끝-->
    <!-- Header part end-->

    <!--책 보여 주는데-->
    <section class="top_place section_padding" style="padding-top:80px;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>이런 책은 어떠세요?</h2>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-left: 7%;">
                <figure class="snip1283">
                    <img src="../resources/img/li1.jpg" alt="sample83" />
                    <figcaption>
                      <h3>Fleece Marigold</h3>
                      <p>Technaf, Bangladesh</p>
                    </figcaption>
                    <a href="#"></a>
                  </figure>
                
            
                    <figure class="snip1283">
                        <img src="../resources/img/test22.jpg" alt="sample83" />
                        <figcaption>
                          <h3>Fleece Marigold</h3>
                          <p>Technaf, Bangladesh</p>
                        </figcaption>
                        <a href="#"></a>
                      </figure>
               
                    <figure class="snip1283">
                        <img src="../resources/img/test33.jpg" alt="sample83" />
                        <figcaption>
                          <h3>Fleece Marigold</h3>
                          <p>Technaf, Bangladesh</p>
                        </figcaption>
                        <a href="#"></a>
                      </figure>
             
                    <figure class="snip1283">
                        <img src="../resources/img/test44.jpg" alt="sample83" />
                        <figcaption>
                          <h3>Fleece Marigold</h3>
                          <p>Technaf, Bangladesh</p>
                        </figcaption>
                        <a href="#"></a>
                    </figure>
              
                    <figure class="snip1283">
                        <img src="../resources/img/test11.jpg" alt="sample83" />
                        <figcaption>
                          <h3>Fleece Marigold</h3>
                          <p>Technaf, Bangladesh</p>
                        </figcaption>
                        <a href="#"></a>
                      </figure>
                    
                
                        <figure class="snip1283">
                            <img src="../resources/img/test22.jpg" alt="sample83" />
                            <figcaption>
                              <h3>Fleece Marigold</h3>
                              <p>Technaf, Bangladesh</p>
                            </figcaption>
                            <a href="#"></a>
                          </figure>
                   
                        <figure class="snip1283">
                            <img src="../resources/img/test33.jpg" alt="sample83" />
                            <figcaption>
                              <h3>Fleece Marigold</h3>
                              <p>Technaf, Bangladesh</p>
                            </figcaption>
                            <a href="#"></a>
                          </figure>
                 
                        <figure class="snip1283">
                            <img src="../resources/img/test44.jpg" alt="sample83" />
                            <figcaption>
                              <h3>Fleece Marigold</h3>
                              <p>Technaf, Bangladesh</p>
                            </figcaption>
                            <a href="#"></a>
                        </figure>

                        <figure class="snip1283">
                            <img src="../resources/img/test11.jpg" alt="sample83" />
                            <figcaption>
                              <h3>Fleece Marigold</h3>
                              <p>Technaf, Bangladesh</p>
                            </figcaption>
                            <a href="#"></a>
                        </figure>
                <a href="top_place.html" class="btn_1 text-cnter" style="margin-left: 430px;">책 더보기</a>
            </div>
        </div>
    </section>
    <!--top place end-->

    <!-- 푸터 시작-->
    <footer class="footer-area">
        <div class="container">
            <div class="row justify-content-between">
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
                        <h4>Address Of Our Project </h4>
                        <p><a href="https://github.com/y971103/5lib" style="color:white;">https://github.com/y971103/5lib</a></p>
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
    <script src="../resources/s/jquery.ajaxchimp.min.js"></script>
    <script src="../resources/js/jquery.form.js"></script>
    <script src="../resources/js/jquery.validate.min.js"></script>
    <script src="../resources/js/mail-script.js"></script>
    <script src="../resources/js/contact.js"></script>
    <!-- custom js -->
    <script src="../resources/js/custom.js"></script>
</body>
</html>