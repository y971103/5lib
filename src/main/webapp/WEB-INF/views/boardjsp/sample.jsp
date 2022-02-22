<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        </div>        
    </section>

    <section>
      
        <div class="col-lg-12" style="padding-left: 10%;">
        <div class="col-lg-12" style="padding-right: 23%;">     
            <div class="text-left">
            <form id="reply" action="replyWrite" method="post">
                <h3>댓글</h3>
                <textarea cols="100" rows="1" name="content">
   
                </textarea>
                <input type = "submit" value="저장하기">
               </form>  
            <table class="reply">
			<c:forEach var="reply" items="${replylist}">
				<tr>
					<td class="replyid">
						<b style="margin-right: 20px;">${reply.id}</b><hr>
					</td>
					<td class="replycontent">
						${reply.content}<hr>
					</td>
				</tr>	
		 
			</c:forEach>
			</table> 
      
            </div>
        </div>
        </div>
        <br><br>
        <hr>         
        </section>

</body>
</html>