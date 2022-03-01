<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Web5</title>
<script>
	var jbRandom = Math.random();
	document.write( '<p>' + Math.floor( jbRandom * 10 ) + '</p>' );
	
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
			alert('시간 측정 시작')
		    openDialog(uri, popupName, options, function(win) {
			//닫은 후
			let end = new Date();
			let second = (end - start)/1000;
			let minute = second / 60;
			var time = Math.round(minute);
			alert(time +'분의 시간동안 사이트가 켜졌습니다.');
			document.getElementById('time').value = time;
		   	});
		}

</script>
	
</head>
<body>
<h1>[ web5 ]</h1>
<c:if test="${sessionScope.loginId != null}">
	<p>${sessionScope.loginName} (${sessionScope.loginId})님 로그인 중</p>
</c:if>
<ul>
<c:if test="${sessionScope.loginId == null}">
	<li><a href="member/join">회원가입</a></li>
	<li><a href="member/login">로그인</a></li>
</c:if>
<c:if test="${sessionScope.loginId != null}">
	<li><a href="member/logout">로그아웃</a></li>
	<li><a href="member/update">개인정보 수정</a></li>
</c:if>	
	<li><a href="board/list">게시판</a></li>
</ul>
<a href="book/index">메인화면단</a>
<br>
<a href="book/viewer">뷰어</a>

<a href="groupBoard">그룹</a>

<br>
<!-- <a href="book/kakaobook">카카오 책 정보</a> -->
<br>
<div>
  <a href="http://localhost:8888/library/download">파일 다운로드</a>
</div>
<br>
<button type="button" onclick="popOpen()">버튼2</button>
<br>

<form id="counttime" action="counttime" method="post">
<input type="text" id="time">
<input type="submit" value="저장"/>
</form>
</body>
</html>
