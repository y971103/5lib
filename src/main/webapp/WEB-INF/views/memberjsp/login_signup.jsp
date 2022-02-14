<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <title>login/signup</title>
        <link rel="stylesheet" href="../resources/css/log-style.css">
        <link rel="icon" href="../resources/img/favicon.png">
    </head>
    <body>
        <div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">REGISTER</button>
                </div>
                <form id="login" action="" class="input-group" style="left: 50px;top: 130px;">
                    <img src="../resources/img/loginlogo.png">
                    <input type="text" class="input-field" placeholder="User Id" required>
                    <input type="password" class="input-field" placeholder="Enter Password" required>
                    <button class="submit" style="margin-top: 15px;">Login</button>
                </form>
                <form id="register" action="" class="input-group" style="left: 50px;top: 90px;">
                    <input type="text" class="input-field" placeholder="User ID" required>
                    <input type="password" class="input-field" placeholder="Enter Password" required>
                    <input type="email" class="input-field" placeholder="Your Email" required>
                    <input type="PhoneNumber" class="input-field" placeholder="Enter PhoneNumber" required>
                    <input type="text" class="input-field" placeholder="Name" required>
                    <div style="color: #999;">Favorite Genre
                    <select name="genre" class="checkbox" style="margin-top: 15px; margin-right: 0px; margin-left: 39px;">
                        <option value="인문">Humanities</option>
                        <option value="소설">Novel</option>
                        <option value="소설">Travel</option>
                        <option value="소설">Essay</option>
                        <option value="소설">Self-development</option>
                        <option value="라이프스타일">Life-style</option>
                    </select></div>
                    <button class="submit">REGISTER</button>
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