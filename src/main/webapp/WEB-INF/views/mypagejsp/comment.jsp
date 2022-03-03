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
        <!-- assets main CSS -->
        <link rel="stylesheet" href="../resources/assets/css/main.css" />
        <link rel="stylesheet" href="../resources/css/mypage.css">
        <script src="../resources/js/jquery-1.12.1.min.js"></script>
        <script>
        
            $(document).ready(function() {
                $('#textDiv').hide();

                $('.sldwn').on('click',function(){
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
        	.title_font{
        		color: white;
        		cursor: pointer;
        		
        	}
        	
        	.title_font:hover{
        		color: black;
        		transition-duration: 0.3s;
        	}
        </style>
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
                                            <a class="dropdown-item" href="<c:url value="/mypage/shelf"/>" id="navbarDropdown">내 서재</a>
                                            <a class="dropdown-item" href="<c:url value="/mypage/habit"/>">통계</a>
                                            <a class="dropdown-item" href="<c:url value="/mypage/comment"/>">리뷰</a>
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
								${sessionScope.loginId}님 <br>
							</h2>
							<a href="<c:url value="/member/logout"/>" class="btn_1 text-cnter" style="line-height:1.9em; width:80px;height:20px;font-size:12px;padding-right: 0px;padding-left: 18px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">로그아웃</a>
							<a href="<c:url value="/member/update"/>" class="btn_2 text-cnter" style="line-height:1.9em; width:120px;height:20px;font-size:12px;padding-right: 0px;padding-left: 22px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">회원정보 수정</a>
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

        <!--nav탭 드롭다운 보여주는 곳-->
        <body class="is-preload">
            <!-- Wrapper-->
         <div id="wrapper">
         <!-- Nav -->
         <nav id="nav">
               <a href="<c:url value="/mypage/shelf"/>" class="icon solid fa-book-open"><span>Shelf</span></a>
               <a href="<c:url value="/mypage/habit"/>" class="icon solid fa-chart-bar"><span>Habit</span></a>
               <a href="<c:url value="/mypage/comment"/>" class="icon solid fa-bookmark active3"><span>Comment</span></a>            
         </nav>
         <!--nav탭 드롭다운 끝-->
         
            <!--main css-->
            <div id="main">
                <!-- Comment 찜한 도서 보여주는 게시판 -->
                    <article id="Comment" class="panel">   
                    <header>
					<h2>내 서재 리뷰</h2>
				</header>                     
                        <section>
                        	<div class="container" style="margin-bottom: 10px;">
                            	<div class="row">
                                	<div class="col-12">
                                    	<div class="table-wrap">
                                    		<table class="table myaccordion table-hover" id="accordion">
                                    		<thead> </thead>
                                    			<tbody>
						                     <tr>
						               		      <td>책 표지</td>	
						                          <td>도서명</td>
						                          <td>찜한 날짜 </td>   
						                          <!-- <td>ISBN</td> -->             
						                     </tr>
											<c:forEach var="shelf" items="${shelflist}">
				                  			 <tr>	
												
												<td style="width:150px; height:160px;">
												<img src="download?filename=${shelf.thumbnail}" style="width:auto; height:auto;">
												</td>
												
												<td>
													<h3 class="sldwn title_font"> ${shelf.title}</h3>
													 <section class id ="textDiv">
													   
												<textarea id="test" cols="50" rows="5" style="resize: none;"></textarea>
													<div id="test_cnt">(0 / 180)</div>
													<form>
													<input type="submit" value="저장하기" style="margin-top: 0px; margin-left: 60%;"/><br>
	                                 				<input type="submit" value="공유하기" style="margin-top: 0px; margin-left: 60%;"/>		
	                                				 </form>		
	                                				 </textarea>
	                       				       		 </section>	                              										 
												</td>

                          						<td>${shelf.inputdate}</td>
				         	 		 		 
				                  			</tr>    
				               				</c:forEach> 				               			
						            	    </tbody>
						                	</table>
						            	</div>           
						        	</div>
						    	</div>
							</div>
						</section>
						                                
                          </article>
                            </div>
                   </div>
                   <hr>  

					
					
						
						<!-- 찜한 도서 게시판 끝 -->
						
						<!-- 선택한 찜한 도서 썸네일과 리뷰 작성란 시작  -->
                    <%--    <section id="textDiv">
                            <div class="container" style="margin-bottom: 10px;">
                                <div class="row" id="textDiv">       
                                    <div style="padding-left: 7%;">                                   
                                    </div>
                                     <class="binfo">   
                                       <section id="textDiv">
													
                                     <form>  
                                     <div class="row">
	                               <div class="col-12">
	                                <textarea id="test" cols="77" rows="9" style="resize: none;">  </textarea>
	                               <div id="test_cnt">(0 / 180)</div> 
	                               <input type="submit" value="저장하기" style="margin-top: 0px; margin-left: 80%;">
	                               </div>
	                               </div>
         					     </form>
                                </div>
                            </div>
                       </section>      --%>



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