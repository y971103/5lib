<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <title>Lib-service</title>
        <link rel="stylesheet" href="../resources/css/log-style.css">
        <link rel="icon" href="../resources/img/favicon.png">
        <script>
//가입폼 확인
function formCheck() {
	var pw = document.getElementById('password');
	var id = document.getElementById('id');
	var name = document.getElementById('name');
	
	if (id.value.length < 4 || id.value.length > 12) {
		alert("id는 4~12자로 입력하세요.");
		id.focus();
		id.select();
		return false;
	}
	if (pw.value.length < 4 || pw.value.length > 12) {
		alert("비밀번호는 4~12자로 입력하세요.");
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
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">REGISTER</button>
                </div>
                <form id="login" action="login" class="input-group" style="top: 130px;" method="post">
                    <img src="../resources/img/loginlogo.png">
                    <input type="text" class="input-field" placeholder="User Id" name="id" required>
                    <input type="password" class="input-field" placeholder="Enter Password" name="password" required>
                    <input type="submit" class="submit" value="login">
                </form>
                <form id="register" action="register" class="input-group" style="top: 90px ;" method="post" onsubmit="return formCheck();">
                    <input type="text" class="input-field" placeholder="User ID" name="id" id="id" required>
                    <input type="password" class="input-field" placeholder="Enter Password" name="password" id="password" required>
                    <input type="email" class="input-field" placeholder="Your Email" name="email" required>
                    <input type="PhoneNumber" class="input-field" placeholder="Enter PhoneNumber" name="phone" required>
                    <input type="text" class="input-field" placeholder="Name" name="name" required>
                    <div style="color: #999; height: 50px;">Favorite Genre
                    <select name="genre_num" class="checkbox" style="margin-top: 15px; margin-right: 0px; margin-left: 39px;">
                    	<option value="인문">Humanities</option>
                        <option value="일반소설">Novel</option>  
                        <option value="추리/공포소설">Horror</option>
                        <option value="해외소설">Foreign Novel</option>
                        <option value="시">Poem</option>
                        <option value="사회과학">Social Science</option>
                    </select></div>
                   <div style="color: #999; margin-bottom: 20px;">
                    Subscribe &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <input type="checkbox" name="sub" style="zoom: 1.5;" required>
                   </div>
                    <input type="submit" class="submit" value="register">
                </form>
            </div>
        </div>
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
        </script>
    </body>
</html>