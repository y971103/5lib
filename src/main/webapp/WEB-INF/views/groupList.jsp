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

<style type="text/css">
* {box-sizing: border-box;}
body {
	font-family: Verdana, sans-serif;
	height: 627.200;
	width: 1503.200;}



/* -----------------이거는 그룹 들어가는 버튼------------------ */

.m-flip{
	overflow: hidden;
	cursor: pointer;
	
}
.m-flip_item{
	display: block;
	position: relative;
	top: 0;
	transition: top .2s ease-out 0s;
	&:nth-child(1){
		color: #666;
	}
}
.groupEnter{
	text-decoration: none;
	color: gray;
}
/* -----------------이거는 그룹 들어가는 버튼------------------ */


/* ---------------------------------검색리스트 css에욤------------------------------------------ */
/*디브 박스*/
.groupList{margin: 1px auto;}
/*책 제목 크기*/


.line{border-bottom:3px; border-bottom-style:solid; border-bottom-color: #56aaff;}


.groupList{
  position: relative;
  margin: auto;
  top:200;
  z-index: 1;
}
.groupinfo {
	width: 1000px;
}

.groupjoin-btn {
  line-height: 18px;
  padding: 10px 22px;
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
}
.btn-default:hover {
  background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
  border: 1px solid #007fff;
  color: #007fff;
  
}
.groupTable{
	background-color: #56aaff;
	color: white;
}

.pageButton:visited{
	color : black;
	text-decoration: none;
}
.pageButton:link{
	color : black;
	text-decoration: none;
}
.buttonPage_Make{
	margin : 30px;
}
.cart-btn {
  line-height: 18px;
  padding: 10px 22px;
}

</style>
<script type="text/javascript">
(function($){
    $.fn.flip = function(options){
		var options = $.extend({
			targetClass: '.m-flip_item'
		}, options);
		
        return this.each(function(){
	        console.log(this);
			var $this = $(this),
				$target = $this.find(options.targetClass);
			
			$this
				.on({
					'init.flip': function(){
						var targetFirst_height = $target.eq(0).height();
						
						$this
							.data('height', targetFirst_height)
							.css({ height: targetFirst_height });
					},
					'mouseenter.flip': function(){
						$target.css({ top: -$this.data('height') + 'px' });
					},
					'mouseleave.flip': function(){
						$target.css({ top: 0 + 'px' });
					}
				})
				.trigger('init.flip');
		});
    };
}(jQuery));

$(function(){
	$('.js-flip').flip();
});
</script>

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
						FEMALE <input type="radio" value="1" name="gender" checked> &nbsp; MALE<input type="radio" name="gender" value="0">
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





<!-- ////////////////////////////그룹 리스트/////////////////////////////////// -->
<div align="center" class="groupList">
	<table align="center" class="groupinfo">
			<!-- 윗 공간 여백 주기 -->
			<tr><td colspan="4"><p><br></p></td></tr>
			<tr height="60" class="groupTable">
				<td align="center"><p><b>GROUP</b></p></td>
				<td align="center" colspan="2"><p><b>INFO</b></p></td>
				<td width="110" align="center"><p><b>JOIN</b></p></td>
			</tr>
			<!-- 행1 -->
			<c:forEach var="list" items="${list_group}">
			<tr height="50">
				<td rowspan="2" align="center" width="200"><!-- 열1: 그룹이름 -->
				<a href="groupBoard?groupnum=${list.groupnum}" class="groupEnter" >
				<div id="app">
					<p class="m-flip js-flip" style="font-size: 30px;">
						<span class="m-flip_item">${list.groupname}</span>
						<span class="m-flip_item">ENTER</span>
					</p>
				</div>
				</a>
				</td>
				<td rowspan="2"><!-- 공백 -->&nbsp;&nbsp;</td>
				<td><!-- 열2: 그룹소개 -->
				<p style="font-size: 18px">${list.groupintroduce}</p>
				</td>
				<td rowspan="2" align="center"><!-- 열3: 가입버튼 -->
				<c:if test="${loginId != null}">
				<a class="groupjoin-btn btn-default" href="javascript:joinGroup(${list.groupnum })"><i class="flaticon-shop"></i>JOIN</a>
				</c:if>
				</td>
			</tr>
			<tr height="50">
				<td height="50"><!-- 열2: 그룹장 id -->
				<p style="color: #666"><b>Master &nbsp; </b>${list.nickname}</p>
				</td>
			</tr>
			<tr>
				<td colspan="4" class="line"></td>
			</tr>
			</c:forEach>
	</table>
	<div class="buttonPage_Make">
	<a class="pageButton" href="groupList?page=${navi3.currentPage - navi3.pagePerGroup}"><img alt="" src="resources/img/pageback2.png" height="10"></a>&nbsp;&nbsp;
	<a class="pageButton" href="groupList?page=${navi3.currentPage - 1}"><img alt="" src="resources/img/pageback.png" height="10"></a>&nbsp;&nbsp;
	<c:forEach begin="${navi3.startPageGroup }" end="${navi3.endPageGroup }" var="i">
		<c:if test="${navi3.currentPage == i}"></c:if>
			<a class="pageButton" href="groupList?page=${i}">${i}</a> &nbsp;
		<c:if test="${navi3.currentPage == i}"></c:if>
	</c:forEach>
	<a class="pageButton" href="groupList?page=${navi3.currentPage + 1}"><img alt="" src="resources/img/pagenext.png" height="10"></a>&nbsp;&nbsp;
	<a class="pageButton" href="groupList?page=${navi3.currentPage + navi3.pagePerGroup}"><img alt="" src="resources/img/pagenext2.png" height="10"></a><br>
	<c:if test="${loginId != null && loginId != gm.id }">
	<div style="margin: 30px; text-align: center;">
		<a class="cart-btn btn-default" href="javascript:makeGroup()">
		<i class="flaticon-shop"></i>
			MAKE
		</a>
    </div>
	</c:if>
	</div>
</div>
<script type="text/javascript">

function makeGroup() {
	$.ajax({
		url : 'checkMaster'
		, type : 'get'
		, dataType : 'text'
		, success : function(e){
			if(e == 0){
				location.href="makeGroup"
			}
			else{
				alert('You have already created a group.');
			}
		}
	});
}

function joinGroup(num){
	$.ajax({
		url : 'checkJoin'
		, type : 'get'
		, data : {groupnum : num}
		, dataType : 'text'
		, success : function(e){
			
			if(e == 0){				
				$.ajax({
					url : 'joinGroup'
					, type : 'get'
					, data : {groupnum : num}
					, dataType : 'text'
					, success : function(e){
						if(e == 1){
							alert("You're signed up.");
						}
					}
				})
			}
			else{
				alert('Already registered.');
			}
		}
	})
}


</script>

</body>
</html>
