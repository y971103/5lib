<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="../resources/css/default.css" />

<script>

//로그인 폼 검사
function formCheck() {
	var id = document.getElementById('id');
	var password = document.getElementById('password');
	
	if (id.value == '' || password.value == '') {
		alert('ID와 비밀번호를 입력하세요.');
		return false;
	}
	return true;
}
</script>
</head>
<body>
<div class="centerdiv">
<h2>[ 로그인 ]</h2>

<form id="loginForm" action="login" method="post" onSubmit="return formCheck();">
<table>
<tr>
	<td>ID</td>
	<td><input type="text" name="id" id="id" /></td>
</tr>
<tr>
	<td>Password</td>
	<td><input type="text" name="password" id="password" /></td>
</tr>
<tr>
	<td class="white"></td>
	<td class="white">
		<div class="errorMsg">
			${errorMsg}
		</div>
	</td>
</tr>
<tr>
	<td colspan="2" class="center white">
		<input type="submit" value="Login" />
	</td>
</tr>
</table>
</form>

</div>
</body>
</html>