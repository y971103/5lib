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


    <script>
    function deleteCheck(boardnum){
    	if(confirm("정말 삭제하시겠습니까?")){
    		location.href = 'delete?boardnum=' + boardnum;
    	}
    }
    </script>
</head>

<body>

   <!--:헤더 시작::-->
   <header class="main_menu">
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="<c:url value="/book/kakaobook"/>"> <img src="../resources/img/logo.png" alt="logo"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="<c:url value="/book/kakaobook"/>">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="<c:url value="/book/kakaolibrary"/>">Library</a>
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
                                        <a class="nav-link dropdown-toggle" id="navbarDropdown_1"
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
							<a href="<c:url value="/member/logout"/>" class="btn_1 text-cnter" style="width:80px;height:20px;font-size:12px;padding-right: 0px;padding-left: 17px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">로그아웃</a>
							<a href="<c:url value="/member/update"/>" class="btn_2 text-cnter" style="width:120px;height:20px;font-size:12px;padding-right: 0px;padding-left: 17px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">회원정보 수정</a>
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

    <body> 
    <section class="ftco-section main-body">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-4">
                    <br></br>
                    <h1 class="heading-section">Board The Read</h1>
                    <hr>
                </div>
            </div>
    
    
    
    

                              
	<!--Borad The Read 게시판 읽기-->                               
    <section class="top_place section_padding" style="padding:0px; background: linear-gradient(135deg, #95a194);"> 
      
       
       
                  
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <br><br>
    
    <body> 
    <section class="ftco-section main-body">
        <div class="container"> </div>
          
    <section article>
    <div class="container">
     
         <table class="table table-striped" style="text-align: center; border: 1px solid #ffffff">

       
            <thead>
              
            </thead>
            
            <tbody>
                <tr>
                	<th style="width:100px;">제목 : </th>
                	<td style="width:1100px;" colspan="8">${board.title}</td>
                </tr>

                <tr>
                	<th style="width:100px;">ID: </th>
                	<td style="width:100px;" colspan="1" >${board.id}</td>
                	
                	<th style="width:100px;">작성일: </th>
                	<td style="width:100px;" colspan="1">${board.inputdate}</td>
                	
					<th style="width:100px;">조회수: </th>
                	<td style="width:100px;" colspan="1">${board.hits}</td>
                </tr>
                
                <tr>
              	    <td align=center width = "300" height="500" colspan="8">${board.content}</td>
                </tr>
                

            </tbody>
         </table>
         
  		<c:if test="${loginId == board.id}">
		<!-- 현재글 삭제하기-->
				<a href="javascript:deleteCheck(${board.boardnum})">삭제하기</a>&nbsp;&nbsp;&nbsp;
		<!-- 현재글 수정하기-->
				<a href="edit?boardnum=${board.boardnum}">수정하기</a>&nbsp;&nbsp;&nbsp;
		</c:if>
		<!-- 현재 글 목록보기 -->
            	<a href="<c:url value="/board/notice_QnA"/>">목록보기</a>
            	<br><br><br>
            	
        <!-- 리플 작성 폼 시작 -->
          <tr>
        <form id="reply" action="replyWrite" method="post">
              <td><textarea cols = "137"  rows="1.5" name="content"></textarea></td><br>
               <form>
               <input type = "submit" value="저장하기">
               </form>
               
         </tr>
         <br>
          <!-- 리플 작성 폼 끝 -->
           
              <!-- 리플 목록 출력 시작  --> 
         <table>   
			<c:forEach var="reply" items="${replynum}">
				<tr>
					<td class="replyid">
						<b style="margin-right: 20px;">${reply.id}</b><hr>
					</td>
				</tr>
				
				<tr>
		<!-- 리플 수정 폼이 나타날 위치 -->
				<tr>
					<td class="white" colspan="4"><div id="div${reply.replynum}"></div></td>
				</tr>
			</c:forEach>
		 </table>
	</form>
	
          <!-- 리플 목록 출력 끝-->   
        
      </section>
</section>




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
