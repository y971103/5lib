<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Web5</title>
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
<a href="book/kakaobook">메인화면단</a>
<br>
<a href="member/viewer">뷰어</a>
<br>
<a href="book/kakaobook">카카오 책 정보</a>
<br>
<div>
  <a href="http://localhost:8888/library/download">파일 다운로드</a>
</div>
<br>
</body>
</html>
