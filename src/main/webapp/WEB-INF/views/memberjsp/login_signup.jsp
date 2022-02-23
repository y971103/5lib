<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <title>login/signup1</title>
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
                <form id="login" action="login" class="input-group" style="top: 130px;" method="post">
                    <img src="../resources/img/loginlogo.png">
                    <input type="text" class="input-field" placeholder="User Id" name="id" required>
                    <input type="password" class="input-field" placeholder="Enter Password" name="password" required>
                    <input type="submit" class="submit" value="login">
                </form>
                <form id="register" action="register" class="input-group" style="top: 90px ;" method="post">
                    <input type="text" class="input-field" placeholder="User ID" name="id" required>
                    <input type="password" class="input-field" placeholder="Enter Password" name="password" required>
                    <input type="email" class="input-field" placeholder="Your Email" name="email" required>
                    <input type="PhoneNumber" class="input-field" placeholder="Enter PhoneNumber" name="phone" required>
                    <input type="text" class="input-field" placeholder="Name" name="name" required>
                    <div style="color: #999; height: 50px;">Favorite Genre
                    <select name="genre_num" class="checkbox" style="margin-top: 15px; margin-right: 0px; margin-left: 39px;">
                        <option value="인문">Humanities</option>
<<<<<<< HEAD
                        <option value="일반소설">Novel</option>
                        <option value="추리/공포소설">Horror</option>
                        <option value="해외소설">Foreign Novel </option>
                        <option value="시">Poem</option>
                        <option value="사회과학">Social Science</option>
=======
                        <option value="소설">Novel</option>  
                        <option value="여행">Travel</option>
                        <option value="에세이">Essay</option>
                        <option value="자기계발">Self-development</option>
                        <option value="라이프스타일">Life-style</option>
>>>>>>> 23c4049826ce392a09e202551e70d869a876591b
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