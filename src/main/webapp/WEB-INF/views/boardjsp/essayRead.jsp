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
    <title>Lib-service</title>
    <link rel="icon" href="../resources/img/favicon.png">
   <!-- Bootstrap CSS -->
<link rel="stylesheet" href="../resources/css/bootstrap.min2.css">
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

	<!-- darkMode CSS -->
    <link rel="stylesheet" href="../resources/css/dark.css">  
    <script src="../resources/js/dark.js"></script>

<style type="text/css">
       
       .main-body{
          /* background-color: blue; */
          /* background-image: url(http://file.edupre.co.kr/plan/clips/thumb/5/clips_20180906153305_0205.JPG.thumb.300);
         
          background-position: left center;
          background-repeat: no-repeat;
       } */
       
    
    </style>
    
</head>
    <script>
    function deleteCheck(essaynum){
    	if(confirm("정말 삭제하시겠습니까?")){
    		location.href = 'delete?essaynum=' + essaynum;
    	}
    }
    </script>


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
								${sessionScope.loginId}♡  <br>
							</h2>
							<a href="<c:url value="/member/logout"/>" class="btn_1 text-cnter" style="width:80px;height:20px;font-size:12px;padding-right: 0px;padding-left: 17px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">로그아웃</a>
							<a href="<c:url value="/member/update"/>" class="btn_2 text-cnter" style="width:120px;height:20px;font-size:12px;padding-right: 0px;padding-left: 17px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">회원정보 수정</a>
							</c:if>
							 <c:if test="${loginId == null}">
                            <a href="<c:url value="/member/login_signup"/>" class="btn_1 d-none d-lg-block">Login / SignUp</a>
                            </c:if>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- 헤더 끝-->
    
     <!--essayRead 에세이 읽기 폼 --> 
<body> 
    <section class="ftco-section main-body">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-6">
                    <br></br>
                    <h1 class="heading-section">essayRead</h1>
                    <hr>
                </div>
            </div>
         </div>
          
    <section article>
    <div class="container">
      <div class="row">
      
      	
      	
         <table class="table table-striped" style="text-align: start; border: 1px solid #dddddd">
        <style>
        	table {
        	
        	width: 100px;
        	borer: 1px;
        	}
        </style>
            <thead>
               <tr>
                                 
               </tr>
            </thead>
            <tbody>
               <tr>
                  	<th style="width:120px;">제목	 :</th>
                  	<td style="width:400px;" colspan="3">${essay.title}</td>
                  	<th style="width:70px;">ID : </th>
                  	<td style="width:100px;border-bottom:1px solid #dee2e6;" colspan="2">${essay.id}</td>
                	<th style="border-bottom:1px solid #dee2e6;">조회수: </th>
                  	<td style="width:70px;border-bottom:1px solid #dee2e6;" colspan="1">${essay.hits}</td>
				</tr>
				<tr>
                  <th style="width:100px;">작성일자 : </th>
               	  <td style="width:570px; border-bottom:1px solid" colspan="4">${essay.inputdate}</td>
               	</tr>
               	<tr>
					<td style= "height:500px; text-align:center;" colspan="10" > ${essay.content}</td>
				</tr>
				
				
               
       
               
            </tbody>
         </table>
         
       <c:if test="${loginId == essay.id}">
        <!-- 현재글 삭제하기-->
		<a href="javascript:deleteCheck(${essay.essaynum})">삭제하기</a> &nbsp;&nbsp;&nbsp;
        <!-- 현재글 수정하기-->
	    <a href="edit?essaynum=${essay.essaynum}">수정하기</a> &nbsp;&nbsp;&nbsp;
       </c:if>
       <!-- 목록보기 -->
       <a href="essay?list=${essay.essaynum}">목록보기</a> 
      </div>
   </div>
	<br><br><br>
        </section>
    </section>
</body>


				
				<!-- 현재글 수정하기
				<a href="edit?boardnum=${board.boardnum}">수정</a> -->


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
