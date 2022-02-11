<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
<html>
<head>
<title>게시판 글 수정</title>
<link rel="stylesheet" type="text/css" href="../resources/css/default.css" />

<script>
//글쓰기폼 확인
function formCheck() {
	var title = document.getElementById('title');
	var contents = document.getElementById('contents');
	
	if (title.value.length < 5) {
		alert("제목을 입력하세요.");
		title.focus();
		title.select();
		return false;
	}
	if (contents.value.length < 5) {
		alert("내용을 입력하세요.");
		contents.focus();
		contents.select();
		return false;
	}
	return true;
}
</script>	
</head>
<body>
<div class="centerdiv">

<h2>[ 글수정 ]</h2>

<form id="writeform" action="edit"  method="post" 
	enctype="multipart/form-data" onsubmit="return formCheck();">
	<!-- 폼 전송 시 글번호도 전달 -->
	<input type="hidden" name="boardnum" value="${board.boardnum }">
	
<table>
<tr>
	<td>제목</td>
	<td>
		<input type="text" name="title" id="title" style="width:400px;" value="${board.title}">
	</td>
</tr>
<tr>
	<td>내용</td> 
	<td>
		<textarea name="contents" id="contents" style="width:400px;height:200px;resize:none;">${board.contents}</textarea>
	</td>
</tr>
<tr>
	<td>파일첨부</td> 
	<td>
		<!-- 새로 첨부할 파일 선택 -->
		<input type="file" name="upload" size="30">
		<!-- 기존에 첨부한 파일이 있는 경우 출력 -->
		${board.originalfile}
	</td>
</tr>
<tr>
	<td colspan="2" class="white center">
		<input type="submit" value="수정">
	</td> 
</tr>
</table>
</form>

</div>
</body>
</html>
