<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
 <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Lib-service</title>
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
        <link rel="stylesheet" href="../resources/css/search.css">
        <!-- assets main CSS -->
        <link rel="stylesheet" href="../resources/assets/css/main.css" />
        <link rel="stylesheet" href="../resources/css/mypage.css">
        <script src="../resources/js/jquery-1.12.1.min.js"></script>
        
	        <!-- darkMode CSS -->
	    <link rel="stylesheet" href="../resources/css/dark.css">  
	    <script src="../resources/js/dark.js"></script>
        <script>
            $(document).ready(function() {
                $('#textDiv').hide();

                $('#sldwn').on('click',function(){
                    $('#textDiv').slideToggle();
                });

                $('#test').on('keyup', function() {
                    $('#test_cnt').html("("+$(this).val().length+" / 180)");
            
                    if($(this).val().length > 180) {
                        $(this).val($(this).val().substring(0, 180));
                        $('#test_cnt').html("(180 / 180)");
                    }
                });
            });
            
		
	</script>
	
	<style type="text/css">
    	#navbarDropdown.dropdown-size{
    		padding-top: 4px;
    	}
    </style>
	
    </head>
    
    <body>
       <!--:?????? ??????::-->
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
                                        <a class="nav-link" id="nav-link" href="<c:url value="/book/index"/>">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="nav-link" href="<c:url value="/book/kakaolibrary"/>">Library</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle"  id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            My page
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item dropdown-size" href="<c:url value="/mypage/shelf"/>" id="navbarDropdown">??? ??????</a>
                                            <a class="dropdown-item" href="<c:url value="/mypage/habit"/>">??????</a>
                                            <a class="dropdown-item" href="<c:url value="/mypage/comment"/>">??????</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle"  id="navbarDropdown_1"
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
                                        <a class="nav-link" id="nav-link" href="<c:url value="/member/contact"/>">Contact</a>
                                    </li>
                                </ul>
                            </div>
                           <c:if test="${loginId != null}">
							<h2>
								${sessionScope.loginId}??? <br>
							</h2>
							<a href="<c:url value="/member/logout"/>" class="btn_1 text-cnter" style="line-height:1.9em; width:80px;height:20px;font-family: 'CookieRun-Regular';font-size:12px;padding-right: 0px;padding-left: 18px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">????????????</a>
							<a href="<c:url value="/member/update"/>" class="btn_2 text-cnter" style="line-height:1.9em; width:120px;height:20px;font-family: 'CookieRun-Regular';font-size:12px;padding-right: 0px;padding-left: 22px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">???????????? ??????</a>
							</c:if>
							 <c:if test="${loginId == null}">
                            <a href="<c:url value="/member/login_signup"/>" class="btn_1 d-none d-lg-block">Login / SignUp</a>
                            </c:if>
                    </div>
                </div>
            </div>
        </div>
    </header>
        <!-- ?????? ???-->
  <!--nav??? ???????????? ???????????? ???-->
        <head>
            <link rel="stylesheet" href="assets/css/main.css" />
            <noscript><link rel="stylesheet" href="assets/css/main.css" /></noscript>
        </head>
            <body class="is-preload">
            <!-- Wrapper-->
			<div id="wrapper">

			<!-- Nav -->
            <nav id="nav">
               <a href="<c:url value="/mypage/shelf"/>" class="icon solid fa-book-open active1"><span>Shelf</span></a>
               <a href="<c:url value="/mypage/habit"/>" class="icon solid fa-chart-bar"><span>Habit</span></a>
               <a href="<c:url value="/mypage/comment"/>" class="icon solid fa-bookmark"><span>Comment</span></a>            
         </nav>
            <!--main css-->
            <div id="main" style="margin-bottom: 50px;">
                <!--Habit ??????-->
			<article id="Habit" class="panel" style="padding:0px;">

				<!-- <section> -->
					<!--  <div class="row"> ?????? 255 ????????? ????????? ???????????? ???
                                <div class="col-4 col-6-medium col-12-small">
                                    <a href="Shelf.html" class="image fit"><img src="../resources/img/test1.jpg" alt=""></a>
                                </div>
                                <div class="col-4 col-6-medium col-12-small">
                                    <a href="Shelf.html" class="image fit"><img src="../resources/img/test2.jpg" alt=""></a>
                                </div>
                                <div class="col-4 col-6-medium col-12-small">
                                    <a href="Shelf.html" class="image fit"><img src="../resources/img/test3.jpg" alt=""></a>
                                </div>
                                <div class="col-4 col-6-medium col-12-small">
                                    <a href="Shelf.html" class="image fit"><img src="../resources/img/test4.jpg" alt=""></a>
                                </div>
                                <div class="col-4 col-6-medium col-12-small">
                                    <a href="Shelf.html" class="image fit"><img src="../resources/img/test4.jpg" alt=""></a>
                                </div>
                            </div> -->
					<%-- <div class="container" style="margin-bottom: 10px;">
                            	<div class="row">
                                	<div class="col-12">
                                    	<div class="table-wrap">
                                    		<table class="table myaccordion table-hover" id="accordion">
                                    		<thead>
                                    			<p>?????? ?????? ????????? ?????????</p>
						                        <tr>
						                          <th>ISBN</th>
						                          <th>?????? ??????</th>
						                          <th>?????? </th>
						                          <th>?????? ?????? </th>                
						                        </tr>
						                    </thead>
											<tbody>
											<c:forEach var="shelf" items="${shelflist}">
				                  			 <tr>	
				                   	 		 	<td>${shelf.isbn}</td>
				                    			<td>${shelf.title}</td>
				                    			<td>${shelf.authors}</td>
				                    			<td>${shelf.inputdate}</td>
				                  			</tr>    
				               				</c:forEach> 	  
						            	    </tbody>
						                	</table>
						            	</div>           
						        	</div>
						    	</div>
							</div> --%>
														
						<!-- </section>
                        <div>
				</section> -->
							
							
							
	<section class="top_place section_padding" style="padding-top:80px; padding-bottom:30px; margin-bottom:0px; background: linear-gradient(135deg, #20592a, #335353);">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2 style="color: white;">My Books</h2>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-left: 7%;">
         		<div class="row" style="padding-left:5%;">
               		<c:forEach var="shelf" items="${shelflist}" begin="0" end="7">
                    	<div style="margin-bottom:8px;">       
                        <a href="<c:url value="/book/kakaobook_info?isbn=${shelf.isbn}"/>">
                        	<img src="../resources/file/bookimage/${shelf.thumbnail}" style="width:170px; height:252px;">
                          	<%-- <img src="download?filename=${shelf.thumbnail}" style="width:170px; height:252px;"> --%>
                            <div style="margin-top:5px;">
                            </div>
                        </a>
                    	</div>
                    	<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>     
                	</c:forEach> 
               </div>
            </div>
            <br>
            <!-- ????????? ?????? ?????? -->
		  <div id="navigator" class="navigator" style="padding-left:330px;">    
		                     
				<a href="javascript:pagingFormSubmit(${navi.currentPage - navi.pagePerGroup})">?????? </a> &nbsp;&nbsp;
				<a href="javascript:pagingFormSubmit(${navi.currentPage - 1})">???</a> &nbsp;&nbsp;
				<c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}"> 
					<c:if test="${counter == navi.currentPage}"><b></c:if>
						<a href="javascript:pagingFormSubmit(${counter})">${counter}</a>&nbsp;
					<c:if test="${counter == navi.currentPage}"></b></c:if>
				</c:forEach>
				&nbsp;&nbsp;
				<a href="javascript:pagingFormSubmit(${navi.currentPage + 1})">???</a> &nbsp;&nbsp;
				<a href="javascript:pagingFormSubmit(${navi.currentPage + navi.pagePerGroup})">??????</a>
			</div>
        	
    </section>
     
    <!--top place end-->
	
	<form id="pagingForm" method="get" action="shelf" style="margin-bottom:0px;">
	<input type="hidden" name="page" id="page" value="1"/>
	</form>						
							

			</article>
		</div>  
</div>

<!-- Scripts -->
        <script src="../resources/assets/js/jquery.min.js"></script>
        <script src="../resources/assets/js/browser.min.js"></script>
        <script src="../resources/assets/js/breakpoints.min.js"></script>
        <script src="../resources/assets/js/util.js"></script>
        <script src="../resources/assets/js/main.js"></script>

  <!-- footer part start-->
  <footer class="footer-area" style="padding-top:90px;">
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-sm-6 col-md-5">
                <div class="single-footer-widget">
                    <h4>Project Members</h4>
                    <ul>
                        <li><a href="#">?????????</a></li>
                        <li><a href="#">?????????</a></li>
                        <li><a href="#">?????????</a></li>
                        <li><a href="#">?????????</a></li>
                        <li><a href="#">?????????</a></li>
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
                    <h4>Address Of Our Project </h4>
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
	<script>
	function pagingFormSubmit(currentPage) {
		var form = document.getElementById('pagingForm');
		var page = document.getElementById('page');
		page.value = currentPage;
		form.submit();
	}
	</script>
	
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