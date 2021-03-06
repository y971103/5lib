<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
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

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    
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
    
     <!-- darkMode CSS -->
    <link rel="stylesheet" href="../resources/css/dark.css">  
    <script src="../resources/js/dark.js"></script>

</head>


<script type="text/javascript" charset="utf-8">



$(document).ready(function () {
	//"위시리스트" 버튼 클릭하면 실행됨
	$('#wishbt').on('click', function () {
		//현재 페이지에 출력중인 책의 ISBN을 전달하면서 ajax요청

		$.ajax({
			url: 'addwishlist',
			method: 'post',
			data: {'isbn' : '${book.isbn}', 'authors' : '${book.authors}', 'title' : '${book.title}', 'thumbnail' : '${book.thumbnail}'},
			success: function () {
				alert('찜!');
			},
			error : function () {
				alert('이미 찜한 도서입니다!');//에러메세지 출력
			}
		});
		

	});
});

 //ajax shelf에서 제거
$(document).ready(function() {
	
	$('#deletewb').on('click', function(){
		
	$.ajax({
		url: 'deleteShelf',
		method: 'post',
		data: {'isbn' : '${book.isbn}'},
		success: function () {
			alert('삭제 성공!');
		},
		error : function () {
			alert('삭제 실패!');//에러메세지 출력
		}
	});
	
	});
});
	

//삭제하기
function deleteShelf(isbn) {
	if (confirm('이 도서를 내서재에서 삭제하시겠습니까?')) {
		location.href = 'deleteShelf?isbn=${shelf.isbn}';
	}
} 




//한줄리뷰 수정 정보 저장
function reviewUpdate(form) {
	if (confirm('수정된 내용을 저장하시겠습니까?')) {
		form.submit();
	}
}

//한줄리뷰 삭제
function reviewDelete(reviewnum, isbn) {
	if (confirm('리플을 삭제하시겠습니까?')) {
		location.href='reviewDelete?reviewnum=' + reviewnum + '&isbn=' + isbn;
	}
}

function reviewUpdateForm(reviewnum, isbn, retext) {
	//해당 리플번호를 붙여 생성한 <div>태그에 접근
	var div = document.getElementById("div"+reviewnum);
	
	var str = '<form name="editForm' + reviewnum + '" action="reviewUpdate" method="post">';
	str += '<input type="hidden" name="reviewnum" value="'+reviewnum+'">';
	str += '<input type="hidden" name="isbn" value="'+isbn+'">';
	str += '&nbsp;';
	str += '<input type="text" name="content" value="' + retext + '" style="width:530px;">';
	str += '&nbsp;';
	str += '<a href="javascript:reviewUpdate(document.editForm' + reviewnum + ')">[저장]</a>';
	str += '&nbsp;';
	str += '<a href="javascript:reviewUpdateCancle(document.getElementById(\'div' + reviewnum + '\'))">[취소]</a>';
	str += '</form>';
	div.innerHTML = str;
}

function reviewUpdateCancle(div) {
	div.innerHTML = '';
}
</script>
<script>
   var uri = 'http://localhost:8888/library/book/viewer';
      var popupName = 'newwin';
      var options = 'width=1920,height=1080';
      var openDialog = function(uri, name, options, closeCallback) {
              var win = window.open(uri, name, options);
              var interval = window.setInterval(function() {
                  try {
                      if (win == null || win.closed) {
                          window.clearInterval(interval);
                          closeCallback(win);
                      }
                  }
                  catch (e) {
                  }
              }, 1000);
              return win ;
          };
      function popOpen() {
         //열기시작
         let start = new Date();
        
          openDialog(uri, popupName, options, function(win) {
         //닫은 후
         let end = new Date();
         let second = (end - start)/1000;
         let minute = second / 60;
         var time = Math.ceil(minute); // 올림 처리
         //'지금까지 독서시간을 저장하시겠습니까?'로  바꿀 예정인데 확인을 눌렀을때 form의 action이 작동 될수 있도록 'type = submit'이 될수 있도록 해줘야 함 
         //alert(time +'분동안 독서를 했습니다. 지금까지 독서시간을 저장하시겠습니까?');
         document.getElementById('time').value = time;
         	// 확인 취소 나오는 alert창
         if (!confirm(time+"분동안 독서를 했습니다. 지금까지 독서시간을 저장하시겠습니까?\n 저장(확인) 또는 삭제(취소)를 선택해주세요.")) {
           } else {
               var form = document.getElementById("t1");
               form.action = "countTime";
               form.method = "POST";
               form.submit();
                 }
            });
      }

      
</script>

<script src="../resources/viewer/script.js"></script>

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
								${sessionScope.loginId}♡ <br>
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
    <!-- Product Details Section Begin -->
    <section>
        <div class="container" style="margin-bottom: 20px; padding-left: 90px">
            <div class="row"> 

                <div style="padding-left: 10%;">
             
                   <img src="../resources/file/bookimage/${book.thumbnail}" style="width:273px; height:395px;">
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <h3><strong>${book.title}</strong></h3>
                        <div>
                            <ul>
                                <li class="binfo">
                                    <span style="font-size: large;"><strong>저자</strong></span>
                                    <div>
                                     	${book.authors}
                                    </div>
                                </li>
                                <li class="binfo">
                                    <span style="font-size: large;"><strong>출판사</strong></span>
                                    <div>
                                        ${book.publisher}
                                    </div>
                                </li>
                                <li class="binfo">
                                    <span style="font-size: large;"><strong>출간</strong></span>
                                    <div>
                                        ${book.datetime}
                                    </div>
                                </li>
                            </ul>
                        </div>
                        
                        
                        <h4 style="color:black;"><strong>책 소개</strong></h4>
                        <div>
                            <ul>
                                <li style="width: 500px;" class="binfo">
                                   ${book.contents}
                                </li>
                            </ul>
                        </div>
                    </div>
                    <br>
                    <form method="post" id="t1" onsubmit="return false;">
	                    <button type="button" onclick="popOpen()" class="readbt">책 읽기</button>
						<input type="hidden" id="time" name="time">
						<input type="hidden" name="isbn" value="${book.isbn}" />
						<input type="button" id="wishbt" value="찜하기" class="readbt" >
						 <input type="button" id="deletewb" value="찜삭제" class="readbt" >
					</form>
					 
					


                </div>
                
                <div class="col-lg-12" style="padding-left: 10%;">
                    <div class="product__details__tab" style="padding-right: 23%;">
                        <ul class="nav nav-tabs" style="margin-top: 35px; margin-bottom: 10px;">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab" id="oneLine">한 줄 리뷰</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                        	<c:forEach var="review" items="${reviewlist}">
                            <div class="line_bottom">
                                <span>${review.id}</span>
                                <span>${review.inputdate}</span>
                                <c:if test="${loginId == review.id}">
									<a href="javascript:reviewUpdateForm(${review.reviewnum}, ${review.isbn}, '${review.content}')">수정</a>
								</c:if>
                                <c:if test="${loginId == review.id}">
									<a href="javascript:reviewDelete(${review.reviewnum}, ${review.isbn})">삭제</a>
								</c:if>
                                <div class="one_line">${review.content}</div>
                                <div id="div${review.reviewnum}"></div>
                                
                            </div>
                            </c:forEach>
 							 <div>
 							 	<form id="reviewWrite" action="reviewWrite" method="post">
 							 	<input type="hidden" name="isbn" value="${book.isbn}" />
                                <input type="text" placeholder="한 줄 리뷰를 작성하세요" class="write_review" name="content"> 
                                <input type="submit" value="등록" class="sub_review">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
			
                <h2 style="margin-top: 15px; margin-left: 10%;">지금 이 책 말고 다른 책은 어떠세요? </h2>
                      
                  <div class="row" style="margin-left: 10%;">
                
                  <c:forEach var = "i" begin = "1" end = "4">	<!-- 랜덤으로 추천 책 뿌리기 -->
                      <c:set var="ran"><%= java.lang.Math.round(java.lang.Math.random() * 50) %></c:set>
                       <c:forEach var="book" items="${kakaobooklist}"> 
                         <c:if test = "${ran == book.booknum}">
                             <div class="photo" style="margin-right: 22px;">
                             <a href="kakaobook_info?isbn=${book.isbn}">
                                 <img src="../resources/file/bookimage/${book.thumbnail}" style="width:180px; height:261px;">
                             </a>
                             </div>
                          </c:if>
                     </c:forEach>
                  </c:forEach>   
                     
                </div>
                
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->
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

</body>
</html>