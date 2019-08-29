<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script>
	function submitForm(){
		if(document.login.id == ""){
			alert("아이디를 입력해주세요");
		}else if(document.login.pw == ""){
			alert("비밀번호를 입력해주세요");
		}
	}


</script>


</head>



<body>

로그인 페이지

<form action="login_db_proc.jsps" name="login">
<input type="text" placeholder="아이디" name="id"><br>
<input type="password" placeholder="비밀번호" name="pw"><br><br>

<input type="button" value="로그인">

</form>


</body>
</html>