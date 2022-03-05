<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <!-- assets main CSS -->
        <link rel="stylesheet" href="../resources/assets/css/main.css" />
        <link rel="stylesheet" href="../resources/css/mypage.css">
        <script src="../resources/js/jquery-1.12.1.min.js"></script>
        
        <!-- darkMode CSS -->
	    <link rel="stylesheet" href="../resources/css/dark.css">  
	    <script src="../resources/js/dark.js"></script>
        
        <script>
            $(document).ready(function() {
               /*  alert('jquery 시작'); */
                $('.textDiv').hide();

                /* J-Query또는 JavaScript 공통 : 해당 이름을 불러올 때 (.클래스 이름)  (#아이디 이름) */
                
                $('.sldwn').on('click',function(){
                   /*  alert('클릭시 보여주기'); */
                    $('.textDiv').hide(); //첫 보여지는 페이지는 전체 숨김
   
                   //지금 누른 제목의 ISBN
                   var isbn = $(this).attr('isbn'); //변수명 isbn에 
                   //보여줘야할 대상의 id를 알아냄
                   var targetId = 'textDiv' + isbn;
                   /* alert('보여주기'+targetId); */
                  
                   $('#'+targetId).show();
                                            
                });
                  
                   
                   /* $('.textDiv')를 모두 감준다
                      위에 알아낸 id를 가진것만 펼쳐서 보여 */
                      //textDiv를 모두 감춘다. 
                      
                      //숨겨야 할 대상의 id를 찾아냄 
               /*   var isbn = $(this).attr('isbn');
                    var targetId = 'textDiv' + isbn; */
/*                      $('#'+textDiv).hide();                            
                });
                   */ 

                $('#test').on('keyup', function() {
                    $('#test_cnt').html("("+$(this).val().length+" / 180)");
            
                    if($(this).val().length > 180) {
                        $(this).val($(this).val().substring(0, 180));
                        $('#test_cnt').html("(180 / 180)");
                    }
                });
                   //리플 수정
                   function replyEditForm(replynum, boardnum, retext) {
                       alert('리플을 수정하시겠습니까?');
                      //해당 리플번호를 붙여 생성한 <div>태그에 접근
                      var div = document.getElementById("div"+isbn);
                      
                      var str = '<form name="editForm' + replynum + '" action="replyEdit" method="post">';
                      str += '<input type="hidden" name="replynum" value="'+replynum+'">';
                      str += '<input type="hidden" name="boardnum" value="'+boardnum+'">';
                      str += '&nbsp;';
                      str += '<input type="text" name="content" value="' + retext + '" style="width:530px;">';
                      str += '&nbsp;';
                      str += '<a href="javascript:replyEdit(document.editForm' + replynum + ')">[저장]</a>';
                      str += '&nbsp;';
                      str += '<a href="javascript:replyEditCancle(document.getElementById(\'div' + replynum + '\'))">[취소]</a>';
                      str += '</form>';
                      div.innerHTML = str;
                   }
            });
          
        </script>
        
        <style type="text/css">
           .title_font{
              color: #ebe461;
              cursor: pointer;
              
           }
           
           
           .title_font:hover{
              color: black;
              transition-duration: 0.3s;
           }
           
           
	    	#navbarDropdown.dropdown-size{
	    		padding-top: 4px;
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
                                            <a class="dropdown-item dropdown-size" href="<c:url value="/mypage/shelf"/>" id="navbarDropdown">내 서재</a>
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
                        ${sessionScope.loginId}♡ <br>
                     </h2>
                     <a href="<c:url value="/member/logout"/>" class="btn_1 text-cnter" style="line-height:1.9em; width:80px;height:20px;font-family: 'CookieRun-Regular';font-size:12px;padding-right: 0px;padding-left: 18px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">로그아웃</a>
                     <a href="<c:url value="/member/update"/>" class="btn_2 text-cnter" style="line-height:1.9em; width:120px;height:20px;font-family: 'CookieRun-Regular';font-size:12px;padding-right: 0px;padding-left: 22px;padding-bottom: 25px;padding-top: 6px;margin-left: 5px;">회원정보 수정</a>
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
                        <h2 style="text-align:center; color:white; font-size:31px;">□ 내 서재 리뷰 □</h2>
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
                                            <td style="font-family: 'CookieRun-Regular'; color:#575752;">● 책 표지</td>   
                                            <td style="font-family: 'CookieRun-Regular'; color:#575752;">● 도서명</td>
                                            <td style="font-family: 'CookieRun-Regular'; color:#575752;">● 찜한 날짜 </td>       
                                       </tr>
                                 <c:forEach var="shelf" items="${shelflist}">
                                        <tr>   
                                    <!-- 찜한 서재 썸네일 보여주기 -->
                                    <td style="width:150px; height:160px;">
                                    <img src="download?filename=${shelf.thumbnail}" style="width:auto; height:auto;">
                                    
                                    </td>
                                    
                                    <!-- 찜한 서재명 클릭시 silde down으로 textarea 보여주기 -->
                                    <td>
                                       <h3 class="sldwn title_font"; isbn="${shelf.isbn}"; style="text-decoration: none; margin-bottom: 5px"> ${shelf.title}</h3>
                                        <c:forEach var="memo" items="${commentslist}">
                                             <c:set var="mm" value="${memo.isbn}" />
                                             <c:set var="ss" value="${shelf.isbn}" />
                                                <c:if test="${mm == ss}">
                                                   
                                              <p style="color:white;">${memo.content}</p>
                                          </c:if>
                                    </c:forEach>   
                                        <section class="textDiv" id="textDiv${shelf.isbn}"><br>
                                          
                                          <form id="write" action="commentWrite" method="post">
                                             <textarea placeholder="Write your review." name="content" cols="70" rows="5" style="resize: none; "></textarea>  
                                             <br>
                                             <input type="hidden" name="isbn" value="${shelf.isbn}" />
                                             <input type="submit" id="button" value="저장">                                         
                                          </form>  
                        
                                       </section>                                                                
                                   </td>

                                            <td style="font-family: 'CookieRun-Regular';color:white;">${shelf.inputdate}</td>
                                       
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
    <script src="../resources/s/jquery.ajaxchimp.min.js"></script>   
    <script src="../resources/js/jquery.form.js"></script>
    <script src="../resources/js/jquery.validate.min.js"></script>
    <script src="../resources/js/mail-script.js"></script>
    <script src="../resources/js/contact.js"></script>
    <!-- custom js -->
    <script src="../resources/js/custom.js"></script>
</body>
</html>