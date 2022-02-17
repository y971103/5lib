<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>Booktest</title>
</head>
<body>
<h1>booktest</h1>
	
<c:forEach var="Book" items="${book}" begin="0" end="10" step="1" varStatus="status">

     <p>번호 : ${book.index}</p>
     <p>책명 : ${book.title}</p>
     <p>저자 : ${book.author}</p>
     <p>출판사 : ${book.publisher}</p>
     <p>출판일자 : ${book.p_date}</p>
     <p>평점 : ${book.score}</p>
     <p>책 소개글 : ${book.introduce}</p>
     <p>장르 : ${book.genre_type}</p>
     <p>책 표지 : ${book.book_photo}</p>
     <p>파일 : ${book.bookfile}</p>
     <p>장르 번호 : ${book.genre_num}</p>

</c:forEach>


</body>
</html>
