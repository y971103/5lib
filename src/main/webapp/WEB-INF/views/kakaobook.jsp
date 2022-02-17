<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="book" items="${kakaobooklist}" begin="0" end="3">
    <p>번호 : ${status.count}</p>
    <p>제목 : ${book.title}</p>
   <p> 작가 : ${book.authors}</p>
    <p>이미지 : ${book.thumbnail}</p>
</c:forEach>
</body>
</html>