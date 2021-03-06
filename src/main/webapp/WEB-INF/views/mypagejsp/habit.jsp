<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="global.sesoc.library.vo.Calender"%>

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
        <link rel="stylesheet" href="../resources/css/dark.css">
		<!-- 캘린더 -->        
        <link href="../resources/fullcalendar-5.10.2/lib/main.css" rel="stylesheet" />
        <script src="../resources/fullcalendar-5.10.2/lib/main.js"></script>
        <script src="../resources/js/jquery-1.12.1.min.js"></script>
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
            
            document.addEventListener('DOMContentLoaded', function() {
                var calendarEl = document.getElementById('calendar');
                var calendar = new FullCalendar.Calendar(calendarEl, {
                  initialView: 'dayGridMonth',
                events:[
                	<%ArrayList<Calender> habitcalender = (ArrayList<Calender>) request.getAttribute("habitcalender");%>
                	<%if (habitcalender != null) {%>
                	<%for (Calender vo : habitcalender) {%>
                	{
                		title : '<%=vo.getTitle()%>',
                		start : '<%=vo.getInputdate()%>',
                		end : '<%=vo.getInputdate()%>',
                		color: '#' + Math.round(Math.random() * 0xffffff).toString(16)
                	},
                	<%}
                }%>
                	]
           		});
                calendar.render();
              });
        </script>
        
        <style type="text/css">
    	#navbarDropdown.dropdown-size{
    		padding-top: 4px;
    	}
    	</style>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
       <!-- 차트 링크 --> 
       <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
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
							<h2 style="font-size:25px; font-weight: bold;">
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
        <!-- Nav -->
        <nav id="nav">
               <a href="<c:url value="/mypage/shelf"/>" class="icon solid fa-book-open"><span>Shelf</span></a>
               <a href="<c:url value="/mypage/habit"/>" class="icon solid fa-chart-bar active2"><span>Habit</span></a>
               <a href="<c:url value="/mypage/comment"/>" class="icon solid fa-bookmark"><span>Comment</span></a>            
         </nav>
        
            <!-- Wrapper-->
         <div id="wrapper" style="min-right: 0ch; padding-bottom: 25px;">
         
       		 <!-- 부트스트랩 -->
         <br>
         <div id="main" style="width:800px;">
                <article id="Comment" class="panel">
                    <header>
                        <h2 class="c_review" style="margin-left: 30%;">${sessionScope.loginId} 님의 독서 습관</h2><br>
                    </header>
                    <section style="margin-left: 16%;">
                        <div class="container" style="margin-bottom: 10px;">
                            <div class="row">       
                                <div style="padding-left: 7%; padding-top: 19px; color:white;" class="icon solid fa-hourglass fa-3x"></div>
                                <%-- <class="binfo"> --%>
                                <c:forEach var="habit" items="${habitlist}">
                                    <div class="c_title" style="font-size: 20px;font-family: 'CookieRun-Regular'; color:#ebe461;">
                                    	※ 이번 달 ( ${habit.month} ) 독서량 집계 ※ <br>
                                     	${habit.month} 월간 독서량은  [ ${habit.isbn} ] 권, <br> 
                                     	 월간 독서시간은 [ ${habit.mtime} ] 분 입니다.<br>
                                     	   
                                    </div>                               
                            </div>
                            <br><br>
	                            <div class="row">       
	                                	<div style="padding-left: 7%; padding-top: 8px; color:white;" class="icon solid fa-calendar-alt fa-3x"></div>                                
		                                    <div class="c_title" style="font-size: 20px;font-family: 'CookieRun-Regular'; color:#ebe461;">
		                                    	'${sessionScope.loginId}' 님의 총 누적 독서 시간은 [ ${habit.time} ]분 입니다.<br>
		                                     	 독서를 가장 선호하는 요일은 [ ${habit.inputdate} ]입니다.<br><br>
		                                    </div>
	                                </c:forEach>
	                            </div>
                              
                        </div>
                        
                    </section>
                    	<div class="c_title" style="margin-left:41%; font-size:30px; font-family: 'CookieRun-Regular';">※ 선호 장르</div><br>
	                    <div class="container"> 
	                 		<canvas id="doughnutChart"></canvas><br><br>
	            		</div>
	            		<br>
	            		 <div class="c_title" style="margin-left:36%; font-size:30px; font-family: 'CookieRun-Regular';">※ 올해 독서량 추이</div><br>
                  		 <div class="container" style="padding-left:0px;"> 
                 			<canvas id="myChart" style="width:740px; height:300px;"></canvas>
            			</div> 
                </div>
                
                </article>
               
            </div>
         <div id='calendar' style="color:black; width:800px; height:600px; margin-left:24%; margin-bottom:35px;"></div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script> 
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
                   <!-- 차트 --> 
        
         <script> 
            var ctx = document.getElementById('myChart').getContext('2d'); 
            var chart = new Chart(ctx, { 
            // 챠트 종류를 선택 
            type: 'line', 
            // 챠트를 그릴 데이타 label 부분 '${chart.month}', <- 이렇게 해보기
             data: { labels: [<c:forEach var="chart" items="${chartlist}" >
             					'${chart.month}',
			        		 </c:forEach>], 
            datasets: [{ label: '올해 독서량 (권 수)', 
            backgroundColor: 'transparent', 
            borderColor: 'white', 
            data: [
            	<c:forEach var="chart" items="${chartlist}" >
            		${chart.isbn},
            	</c:forEach>
 	
            ] }] },
            // 옵션 
            options: {responsive: false,
            	legend: {
    				labels: {
    					fontColor: "white",
    					fontSize: 15
    				}
    			},
    			scales: {
    				yAxes: [{
    					ticks: {
    						beginAtZero: true,
    						fontSize : 16,
    						fontColor: "white"
    					}
    				}],
    				xAxes: [{
    					ticks: {
    						beginAtZero: true,
    						fontColor: "white",
    						fontSize : 16
    					}
    				}],
    			},} }); 
        </script>
            
        
          
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script> 
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
                    <!-- 도넛차트 --> 
         <script> 
            var ctx = document.getElementById('doughnutChart').getContext('2d'); 
            var chart = new Chart(ctx, { 
            // 챠트 종류를 선택 
            type: 'doughnut', 
            // 챠트를 그릴 데이타
             data: { labels: [<c:forEach var="chart" items="${dchartlist}" >
     							'${chart.genre}',
        					</c:forEach>], 
            datasets: [{ label: '내 취향', 
            	backgroundColor: [ "#f79546", "#9bba57", "#4f81bb", "#5f497a", "#a94069", "#ff5f34"],
            borderColor: 'transparent', 
            data: [
            	<c:forEach var="chart" items="${dchartlist}" >
            		${chart.hits},
            	</c:forEach>
 	
            ] }] },
            // 옵션 
            options: {
					
                } }); 
           
        </script>
        
         
            
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