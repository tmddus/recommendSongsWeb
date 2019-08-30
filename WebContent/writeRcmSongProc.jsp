<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(session.getAttribute("currentID") == null){ %>
			<script>
				alert("먼저 로그인을 해주세요");
				window.history.go(-1);
			</script>
	<%	}%>
	
	
	<form>
		<input name = "title" type="text" placeholder="글 제목" required="required" size="30"><br>
		작성자 : <%= session.getAttribute("currentID")  %><br>
		<input name = "song" type="text" placeholder="추천 노래" required="required">
		<input name = "singer" type="text" placeholder="가수" required="required"><br>
		<textarea name="content" rows="10" cols="30" placeholder="게시글 작성"></textarea>
		
	</form>

</body>
</html>