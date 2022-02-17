<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 책 정보</title>
</head>
<body>
<h1>카카오 책 정보</h1>
<c:forEach var="book" items="${kakaobooklist}" begin="0" end="3">
   <p>번호 : ${status.count}</p>
   <p>제목 : ${book.title}</p>
   <p>작가 : ${book.authors}</p>
   <p>이미지 : <img src="download?filename=${book.thumbnail}"></p>
</c:forEach>
</body>
</html>