<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Web5</title>
<script>
	var jbRandom = Math.random();
	document.write( '<p>' + Math.floor( jbRandom * 10 ) + '</p>' );
	
	
		var popup;

		function openPopup() {
		  document.querySelector('.target').textContent = '팝업창 열림';
		  popup = window.open('http://www.naver.com', "팝업창", "width = 500, height = 500, top = 50, left = 50, location = no");

		  popup.addEventListener('beforeunload', function() {
			    document.querySelector('.target').textContent = '팝업창 닫힘';
			  });
		}

		//let start = new Date();  // 시작
		//openPopup()
		//let end = new Date();  // 종료

		//document.write(end - start); // 경과시간(밀리초)
</script>
	
</head>
<body>
<h1>[ web5 ]</h1>
승환이 수정함ff
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
<br>
<!-- <a href="book/kakaobook">카카오 책 정보</a> -->
<br>
<div>
  <a href="http://localhost:8888/library/download">파일 다운로드</a>
</div>
<br>

<button type="button" onclick="openPopup()">버튼</button>
<p class="target"></p>

</body>
</html>
