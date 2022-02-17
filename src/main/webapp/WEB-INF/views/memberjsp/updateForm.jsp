<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인 정보 수정</title>

 <link rel="stylesheet" href="../resources/css/log-style.css">
 <link rel="icon" href="../resources/img/favicon.png">

<script>
//가입폼 확인
function formCheck() {
	var pw = document.getElementById('password');
	var pw2 = document.getElementById('password2');
	var name = document.getElementById('name');
	
	if (pw.value.length < 3 || pw.value.length > 10) {
		alert("비밀번호는 3~10자로 입력하세요.");
		pw.focus();
		pw.select();
		return false;
	}
	if (pw.value != pw2.value) {
		alert("비밀번호를 정확하게 입력하세요.");
		pw.focus();
		pw.select();
		return false;
	}
	if (name.value == '') {
		alert("이름을 입력하세요.");
		name.focus();
		name.select();
		return false;
	}
	return true;
}
</script>
</head>
<body>
	<div class="wrap">
        <div class="form-wrap">
         	<div class="button-wrap">
                <div id="btn"></div>
                <button type="button" class="togglebtn" style="left: 50px;" onclick="update()">Update</button>
			</div>
		<form id="updateForm" action="update" class="input-group" style="top: 100px; left: 50px;" method="post" onsubmit="return formCheck();">
                    <input type="password" id="password" class="input-field" placeholder="* Enter Password" name="password" required>
                    <input type="password" id="password2" class="input-field" placeholder="* Repeat Password" name="password2" required>
                     <input type="text" class="input-field" placeholder="* Name" name="name" required>
                    <input type="email" class="input-field" placeholder="  Your Email" name="email">
                    <input type="PhoneNumber" class="input-field" placeholder="  Write PhoneNumber" name="phone">
                    <div style="color: #999; height: 50px;">Favorite Genre
                    <select name="genre_num" class="checkbox" style="margin-top: 15px; margin-right: 0px; margin-left: 39px;">
                        <option value="인문">Humanities</option>
                        <option value="소설">Novel</option>
                        <option value="여행">Travel</option>
                        <option value="에세이">Essay</option>
                        <option value="자기계발">Self-development</option>
                        <option value="라이프스타일">Life-style</option>
                    </select></div>
                    <br>
                   <input type="submit" class="submit" value="update">
        </form>
 		</div>
 	</div>
       
</body>
</html>