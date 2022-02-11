<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ID 중복 확인</title>

<link rel="stylesheet" type="text/css" href="../resources/css/default.css" />

<script>
function selectId(id) {
	opener.document.getElementById('id').value = id;
	this.close();
}
</script>
</head>
<body>
<div class="centerdiv">
<h1>[ ID 중복 확인 ]</h1>

<form action="idcheck" method="post">
검색할 ID <input type="text" name="searchId" id="searchId">
		<input type="submit" value="검색" />
</form>

<!-- 검색 후에만 출력 -->
<c:if test="${searchId != null}">
	<!-- 검색 결과가 없는 경우에만 출력 -->
	<c:if test="${member == null}">
		<p>${searchId} : 사용할 수 있는 ID입니다.</p>
		<p><input type="button" value="ID사용하기" onclick="selectId('${searchId}')"></p>
	</c:if>
	<!-- 검색 결과가 있는 경우에만 출력 -->
	<c:if test="${member != null}">
		<p>${searchId} : 이미 사용중인 ID입니다.</p>
	</c:if>
</c:if>

</div>
</body>
</html>




