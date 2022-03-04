<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lib-service</title>   
    <style>
    
    @font-face {
    font-family: 'WandohopeR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/WandohopeR.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}      
    
        * {
	  	outline:none;
		border:none;
		margin:0px;
		padding:0px;
		font-family:Courier, monospace;
		}
		body {
			background:rgb(30, 46, 19) repeat;        
		}
		#paper {
			color:#FFF;
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
			width:500px;
			overflow:hidden;
			background-color:#FFF;
			color:#222;
			font-family: 'WandohopeR';
			font-weight:normal;
			font-size:24px;
			resize:none;
			line-height:40px;
			padding-left:100px;
			padding-right:100px;
			padding-top:400px;
			padding-bottom:34px;
			background-image:url(https://static.tumblr.com/maopbtg/E9Bmgtoht/lines.png), url(https://static.tumblr.com/maopbtg/nBUmgtogx/paper.png);
			background-repeat:repeat-y, repeat;
			-webkit-border-radius:12px;
			border-radius:12px;
			-webkit-box-shadow: 0px 2px 14px #000;
			box-shadow: 0px 2px 14px #000;
			border-top:1px solid #FFF;
			border-bottom:1px solid #FFF;
		}
		.title {
			background-color:transparent;
			border-bottom:3px solid #FFF;
			color:#FFF;
			font-size:20px;
			font-family:Courier, monospace;
			height:28px;
			font-weight:bold;
			width:220px;
		}
		#button {
			cursor:pointer;
			margin-top:20px;
			float:right;
			height:40px;
			padding-left:24px;
			padding-right:24px;
			font-family:Arial, Helvetica, sans-serif;
			font-weight:bold;
			font-size:20px;
			color:#FFF;
			text-shadow: 0px -1px 0px #000000;
			-webkit-border-radius:8px;
			border-radius:8px;
			border-top:1px solid #FFF;
			-webkit-box-shadow: 0px 2px 14px #000;
			box-shadow: 0px 2px 14px #000;
			background-color: #000000;
			background-repeat:repeat-x;
		}
		#button:active {
			zoom: 1;
			filter: alpha(opacity=80);
			opacity: 0.8;
		}
		#button:focus {
			zoom: 1;
			filter: alpha(opacity=80);
			opacity: 0.8;
		}
		#wrapper {
			width:700px;
			height:auto;
			margin-left:auto;
			margin-right:auto;
			margin-top:24px;
			margin-bottom:100px;
		}
    </style>
    <script>
        $(document).ready(function(){
  			$('#title').focus();
    		$('#text').autosize();
		});
    </script>
	<script>
        //글쓰기폼 확인
        function formCheck() {
            var title = document.getElementById('title');
            var content = document.getElementById('text');
            
            if (title.value.length < 5) {
                alert("제목을 입력하세요.");
                title.focus();
                title.select();
                return false;
            }
            if (content.value.length < 5) {
                alert("내용을 입력하세요.");
                content.focus();
                content.select();
                return false;
            }
            return true;
        }
        </script>
	
	
</head>
<body>
   <div id="wrapper">

	<form id="write" action="essay_write" method="post" onsubmit="return formCheck();">
	 
		<div id="margin" style="color:white;">Title: <input class="title" type="text" name="title" id="title"></div>
		<textarea placeholder="Enter something funny." id="text" name="content" style="overflow: break-word; "></textarea>  
		<br>
		<input type="submit" id="button" value="저장">
		
	</form>

	</div>
</body>
</html>