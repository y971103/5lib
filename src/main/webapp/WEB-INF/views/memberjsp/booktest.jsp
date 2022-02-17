<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>Booktest</title>
</head>
<body>
<h1>booktest</h1>
	
<c:forEach var="Book" items="${items}" begin="0" end="10" step="1" varStatus="status">

     <p>번호 : ${status.index}</p>
     <p>책명 : ${item.title}</p>
     <p>저자 : ${item.author}</p>
     <p>출판사 : ${item.publisher}</p>
     <p>출판일자 : ${item.p_date}</p>
     <p>평점 : ${item.score}</p>
     <p>책 소개글 : ${item.introduce}</p>
     <p>장르 : ${genre_type}</p>
     <p>책 표지 : ${book_photo}</p>
     <p>파일 : ${bookfile}</p>
     <p>장르 번호 : ${genre_num}</p>

</c:forEach>


</body>
</html>
