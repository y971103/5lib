<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<html>
<head>
<title>Home</title>
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/signupSignin.js"></script>
<script type="text/javascript" src="resources/js/signin_up.js"></script>
<link href="resources/css/header.css" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<style type="text/css">
* {box-sizing: border-box;}
body {
	font-family: Verdana, sans-serif;
	height: 627.200;
	width: 1503.200;}


.header .searchbar a {
	color: #aaa;
	font-weight: 700;
	margin: 0 15px 0 15px;
	font-size: 1.4em;
}

/* -------------------------------그룹피드임ㅁ미당-------------------------------- */
/* ----------------------------글쓰기 폼 css끝------------------------------- */
* {
  outline:none;
	border:none;
	margin:0px;
	padding:0px;
}

#paper {
	color:#333;
	font-size:20px;
}
#margin {
	margin-left:12px;
	margin-bottom:20px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	-o-user-select: none;
	user-select: none; 
}
#text {
	overflow:hidden;
	background-color:#FFF;
	color:#33333;
	font-weight:normal;
	font-size:18px;
	resize:none;
	padding: 30 30 30 30;
	background-color: #eff6ff;
}
.replytext {
	overflow:hidden;
	background-color:#FFF;
	color:#33333;
	font-weight:normal;
	font-size:13px;
	resize:none;
	padding: 10 10 10 10;
	background-color: #eff6ff;
}
#title {
	background-color:transparent;
	border-bottom:3px solid #eff6ff;
	border-top:none;
	border-left:none;
	border-right:none;
	color:#33333;
	font-size:20px;
	height:28px;
	font-weight:bold;
	width:320px;
}

#wrapper {
	width:800;
	height:auto;
	margin-left:auto;
    margin-right: 0px;
	margin-top:24px;
	margin-bottom:100px;
}
.btn-default {
  background: #007fff none repeat scroll 0 0;
  border: 1px solid #007fff;
  border-radius: 20px;
  color: #ffffff;
  height: 40px;
  padding: 0 22px;
  transition: all 0.3s ease 0s;
  font-size: 16px;
  font-weight: 500;
  text-transform: uppercase;
  padding-bottom: 11px;
  padding-top: 11px;
  text-decoration: none;
  float: right;
  margin-top: 10px;
}
.btn-default:hover {
  background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
  border: 1px solid #007fff;
  color: #007fff;
  
}
/* ----------------------------글쓰기 폼 css끝------------------------------- */

.feedall {
  position: relative;
  max-width: 800px;
  margin: auto;
  top:200;
  z-index: 1;
}

.item {
  display: flex;
  max-width: 1000px;
  margin: 0 auto;

}
/* -------------------------------그룹피드임ㅁ미당-------------------------------- */

/* 그룹 글에 댓글 등등 보여주기욤 */

.reDel {
	text-align: right;
	width: 20;
}

.boardDel {
	text-align: right;
	width: 20;
}

.boardUpdate {
	text-align: right;
	width: 20;
}

.writedate {
	text-align: right;
	font-size: 12px;
	width: 100;
}

.flip {
  padding: 5px;
  text-align: center;
  background-color: #007fff;
  color: white;
}
.panel {
  padding: 5px;
  text-align: center;
  background-color: #eff6ff;
  display: none;
}


</style>


</head>
<body>

<!-- ///////////////////////////////////헤더임///////////////////////////////////////// -->
<div class="header" id="header">
	<div class="headerIn">
		<h1 style="left: 40;"><a href="./"><img alt="" src="resources/img/archivelogo22.png" height="100"></a></h1>
			<form id="search" action="searchList" method="get">
				<table class="searchbar">
				<tr>
					<th width="130px">
						<div class="custom-select" style="width:130px; ">
							<select size="1" name="detail">
								<option value="total">total</option>
								<option value="title">title</option>
								<option value="author">author</option>
								<option value="publisher">publisher</option>
							</select>
						</div>
					</th>
					<th>
						<input type="text" id="bookName" name="bookName" placeholder="search.."></th>
					<th class="searchbtn1">
						<a style="margin:0 5 0 5" href="javascript:searchBook()"><img alt="" src="resources/img/iconfinder_11_Search_106236.png" width="20"></a>		
					</th>
				</tr>
				</table>
			</form>
	
		<!-- sign in , sign up , menu-->
			<table class="navbar" style="width: 1050px"><tr><td style="width: 802px;">
			<ul class="menu">
				<li><a href="groupList">community</a></li>
				<li><a href="recommend">recommend</a></li>
				<c:if test="${loginId != null }">
				<li><a href="book_reply">review</a></li>
				</c:if>
			</ul>
			</td><td>
				<c:if test="${loginId == null }">
					<nav id="main-nav" class="main-nav" style="margin-right: 0px;width: 200;">
						<table><tr><td style="width: 88px;padding-left: 0px;padding-bottom: 0px;padding-right: 0px;padding-top: 0px;">
							<ul class="signinup">
								<li style="margin-left: 0px;">
									<a href="#0" style="margin-left: 0px;margin-right: 0px;padding-left: 16px;border-top-width: 0px;" class="cd-signin">Sign in</a>
								</li>
							</ul>
						</td><td style="width: 93px;padding-left: 0px;padding-bottom: 0px;padding-right: 0px;padding-top: 0px;">
							<ul class="signinup">
								<li style="margin-left: 0px;">
									<a href="#0" style="margin-left: 0px;margin-right: 0px;padding-left: 16px;border-top-width: 0px;" class="cd-signup">Sign up</a>
								</li>
							</ul>
						</td></tr></table>
					</nav>
				</c:if>
				<c:if test="${loginId != null }">
					<nav class="main-nav2" style="margin-right: 0px;width: 200;float: right;">
						<table><tr><td style="width: 88px;padding-left: 0px;padding-bottom: 0px;padding-right: 0px;padding-top: 0px;">
							<ul class="userBar">
								<li style="margin-left: 0px;">
									<a href="logout" style="width:102; margin-left: 0px;margin-right: 0px;padding-left: 16px;border-top-width: 0px;" class="ub-logout">Log out</a>
								</li>
							</ul>
						</td><td style="width: 93px;padding-left: 0px;padding-bottom: 0px;padding-right: 0px;padding-top: 0px;">
							<ul class="userBar">
								<li style="margin-left: 0px;">
									<a href="my-account" style="margin-left: 0px;margin-right: 0px;padding-left: 16px;border-top-width: 0px;" class="ub-lib" >Account</a>
								</li>
							</ul>
						</td></tr></table>
					</nav>
				</c:if>
			</td></tr></table>		
<!-- //////////////sign up sign in 버튼 눌렀을때 모달 창///////////// -->
	
	<div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
		<div class="cd-user-modal-container"> <!-- this is the container wrapper -->
			<ul class="cd-switcher">
				<li><a href="#0" class="selected" id="switcherSignin">Sign in</a></li>
				<li><a href="#0" class="selected" id="switcherSignup">New account</a></li>
			</ul>
			<div id="cd-login"> <!-- log in form -->
				<form class="cd-form"action="login" method="post" onsubmit="return checkSignin()">
					<p class="fieldset">
						<label class="image-replace" for="signin-id">ID</label>
						<input class="full-width has-padding has-border" id="signin-id" type="text" placeholder="ID" name="id">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace" for="signin-password">Password</label>
						<input class="full-width has-padding has-border" id="signin-password" type="password"  placeholder="Password" name="password">
						<a href="#0" class="hide-password">Show</a>
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input class="full-width" type="submit" value="Login">
					</p>
				</form>
				

				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-login -->

			<div id="cd-signup"> <!-- sign up form -->
				<form class="cd-form" action="join" method="post" onsubmit="return checkSignUp()">
					<p class="fieldset">
						<label class="image-replace" for="signup-username">Username</label>
						<input class="full-width has-padding has-border" id="signup-username" name="name" type="text" placeholder="Username">
						<span class="cd-error-message" >Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace" for="signup-nickname">Nickname</label>
						<input class="full-width has-padding has-border" id="signup-nickname" type="text" name="nickname" placeholder="Nick name">
						<div id="error2"></div>
						<span class="cd-error-message" >Error message here!</span>
					</p>
					
					<p class="fieldset">
						<label class="image-replace" for="signup-id">ID</label>
						<input class="full-width has-padding has-border" id="signup-id" name="id" type="text" placeholder="ID">
						<div id="error"></div>
						<span class="cd-error-message" >Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace" for="signup-password">Password</label>
						<input class="full-width has-padding has-border" id="signup-password" name="password" type="password"  placeholder="Password">
						<a href="#0" class="hide-password">Show</a>
						<span class="cd-error-message">Error message here!</span>
					</p>
					<p class="fieldset">
						<label class="image-replace" for="signup-password">Password_Check</label>
						<input class="full-width has-padding has-border" id="signup-password2" type="password"  placeholder="Password">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace" for="signup-nickname">Email</label>
						<input class="full-width has-padding has-border" id="signup-email" name="email" type="email" placeholder="email">
						<span class="cd-error-message">Error message here!</span>
					</p>
					
					<p class="fieldset">
						<label class="image-replace" for="signup-gender">Gender</label>
						FEMLAE <input type="radio" value="1" name="gender" checked> &nbsp; MALE<input type="radio" name="gender" value="0">
						<span class="cd-error-message">Error message here!</span>
					</p>
					
					<p class="fieldset">
						<label class="image-replace" for="signup-birth">BirthDay</label>
						BIRTHDAY
						<input type="date" name="birthday" id="birth">
						<span class="cd-error-message">Error message here!</span>
					</p>
					
					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Create account">
					</p>
				</form>
				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div> <!-- cd-signup -->
		</div> <!-- cd-user-modal-container -->
	</div> <!-- cd-user-modal -->
	<!-- sign in , sign up 끝 -->
	</div>
</div>
<!-- ///////////////////////////////////헤더끝///////////////////////////////////////// -->
<!-- /////////////////////////////////////검색 옵션 부분 js////////////////////////////////////////////////// -->
<script src="resources/js/searchOption.js"></script>
<!-- /////////////////////////////////////검색 옵션 부분 js////////////////////////////////////////////////// -->





<!-- ///////////////////////////////////////////검색js///////////////////////////////////////////////// -->>

<!-- ///////////////////////////////////////////검색js///////////////////////////////////////////////// -->




<!-- ///////////////////////////////////////////피드임!!!!!!/////////////////////////////////////////////// -->
<!-- ///////////////////글쓰기 js임////////////// -->
<script type="text/javascript">
$(document).ready(function(){
	  $('#title').focus();
	    $('#text').autosize();
	});
	
function writeForm(){
	var title_board = $('#title').val();
	var content_board = $('#text').val();
	if(title_board.length < 3 || title_board.length > 21){
		alert('Please write the title with at least 4 characters and not more than 20 characters.');
		return;
	}
	if(content_board.length < 3 || title_board.length > 500){
		alert('Please write more than 4 characters and less than 300 characters.');
		return;
	}
	$('#paper').submit();
	
}
</script>
<!-- ///////////////////글쓰기 js임////////////// -->
<div class="feedall">
<!-- /////////////////////////////////글쓰기이므!!!!!!!!!!!!!/////////////////////////// -->

<c:if test="${loginId != null }">
<c:forEach items="${member}" var="mem">
<c:if test="${mem.id.equals(loginId)}">
<div id="wrapper">
	<form id="paper" method="post" action="write" style="width: 800px">
		<div id="margin">Title: <input id="title" type="text" name="title" style="border-radius:0px;"></div>
		<textarea placeholder="Please enter the contents." id="text" name="content" rows="4" style="overflow: hidden; word-wrap: break-word; resize: none; height: 160px; width: 800px;"></textarea>  
		<a id="sendBoard" class="btn-default" href="javascript:writeForm()"><i class="flaticon-shop"></i>send</a>
	</form>
</div>
</c:if>
</c:forEach>
</c:if>
<!-- /////////////////////////////////글쓰기끝!!!!!!!!!!!!/////////////////////////// -->

<!-- //////////////////그룹 글 보여주기욤//////////////// -->
<script> 
$(document).ready(function(){
  $(".flip").click(function(event){
	  var e = $(event.target).attr('id');
	  var i = 'panel'+e;
    $('#'+i).slideToggle("slow");
  });
});

function updateBoard(num){
	$.ajax({
		url : 'groupUpdate'
		, type : 'get'
		, data : {bnum_group : num}
		, dataType : 'json'
		, success : function(e){
			$('#title').val(e.title);
			$('#text').val(e.content);
			$('#sendBoard').attr('href','javascript:updateBoard_send('+num+')');
			$('#title').focus();
		}
	});
}

function updateBoard_send(num){
	var title_board = $('#title').val();
	var content_board = $('#text').val();
	if(title_board.length < 3 || title_board.length > 21){
		alert('Please write the title with at least 4 characters and not more than 20 characters.');
		return;
	}
	if(content_board.length < 3 || title_board.length > 500){
		alert('Please write more than 4 characters and less than 300 characters.');
		return;
	}
	$.ajax({
		url : 'groupUpdate'
		, type : 'post'
		, data : {title : title_board, content : content_board, bnum_group : num}
		, success : function(){
			alert('UPDATE');
			location.href = "";
		}
	})
}
</script>
<!-- //////////////////그룹 글 보여주기욤//////////////// -->




	<c:if test="${boardList != null && boardList.size() >= 1}">
  <c:forEach begin="0" end="${boardList.size()-1}" var="i">
<div class="item" style="margin: 20 0 20 0">
  <div class="image" style="margin: 0 20 0 0">
    <div style="width: 120">
      
      <table>
      <tr><td align="center">
      <img src="resources/img/person3333.png" width="80"/>
      </td></tr>
      <tr><td align="center">
      <span><b>${boardList[i].nickname}</b></span>
      </td></tr></table>
    </div>
  </div>
  <div class="details">
    <div>
      <table><tr><td style="width: 650px">
      <table style="width: 650px"><tr>
      <td><h3>${boardList[i].title }</h3></td>
      <td class="writedate">${boardList[i].inputdate }</td>
      <td><td class="boardUpdate" width="20">
      <c:if test="${boardList[i].id.equals(loginId)}">
      <a href="javascript:updateBoard(${boardList[i].bnum_group })"><img alt="" src="resources/img/penpen.png" width="15"></a>
      </c:if>
      </td><!-- 수정 -->
      <td><td class="boardDel" width="20">
      <c:if test="${boardList[i].id.equals(loginId)}">
      <a href="groupDelete?bnum_group=${boardList[i].bnum_group }"><img alt="" src="resources/img/xxxx.png" width="15"></a>
      </c:if>
      </td><!-- 삭제 -->
      </tr></table>
      <pre style="width: 650;padding-left: 5px;font-family:Verdana, sans-serif;font-size: 17;margin-bottom: 20px;">${boardList[i].content }</pre>
      <div class="flip" id="${i}">Click see all comments</div>
      <div id="panel${i}" class="panel">
      	<c:forEach items="${replylist }" var="listRE">
      	<c:if test="${boardList[i].bnum_group == listRE.bnum_group}">
      	<table style="margin: 10"><tr><td width="130" valign="top">
      	<b>${listRE.nickname}</b>
      	</td><td width="500">
		${listRE.content}
      	</td>
      	<td class="reDel" width="20">
      	<c:if test="${listRE.id == loginId }">
      	<a href="groupReplyDelete?rnum_group=${listRE.rnum_group}">
      	<img alt="" src="resources/img/xxxx.png" width="15"></a>
      	</c:if>
      	</td></tr></table>
      	
      	</c:if>
      	</c:forEach>
      </div>
      <form id="reply_form${i}" method="POST" action="replyWrite" style="margin-top: 20">
      	<input type="hidden" name="bnum_group" value="${boardList[i].bnum_group}">
		<textarea placeholder="Comments.." id="replytext${i}" class="replytext" name="content" rows="4" style="overflow: hidden; word-wrap: break-word; resize: none; height: 50px; width: 650px;"></textarea>  
		<a class="btn-default" href="javascript:reply_submit(${i})"></i>comments</a>
	  </form>
      </td></tr></table>
     
    </div>
  </div>
  <br>
</div>
  </c:forEach>
  </c:if>
</div>
<script type="text/javascript">
function reply_submit(num){
	var re = $('#replytext'+num).val();
	if(re.length < 1 || re.length > 300){
		alert('Please enter comments with at least 1 character and less than 300 characters.');
		return;
	}
	$('#reply_form'+num).submit();
}
</script>


</body>
</html>
