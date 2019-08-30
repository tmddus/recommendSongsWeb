<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>


</head>



<body>

로그인 페이지

<form action="login_db_proc.jsp" name="login">
<input type="text" placeholder="아이디" name="id" required="required"><br>
<input type="password" placeholder="비밀번호" name="pw" required="required"><br><br>

<input type="submit" value="로그인" >

</form>
 <% 
            // 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
            // LoginPro.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
            String msg=request.getParameter("msg");
            
            if(msg!=null && msg.equals("0")) 
            { %>
                <script>
                	alert("비밀번호가 틀렸습니다");
                </script>
           <%  }
            
            
            else if(msg!=null && msg.equals("-1"))
            {    %>
                <script>
                	alert("아이디가 틀렸습니다");
                </script>
   
         <% }
        %>    


</body>
</html>