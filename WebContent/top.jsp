<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

	<style>
		#users{
			text-align:right;
		
		}
	
	</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <img src="imgsource/header.png" width=100%>
     <div id="alignLeft">
		[<a href="main.jsp"> 메인 </a>]  [<a href="rcmSongs.jsp"> 곡추천 </a>]  [<a href="rcmPlaylist.jsp"> 플레이리스트 추천 </a>]  
	 </div>
	<%
		String currentID = (String)session.getAttribute("currentID");
	
		if(currentID != null){%>
		<div id = "users"> 	[<%= currentID %> 님, 환영합니다!]	 </div>
	<%	}else{ %>
		<div id="users">[<a href="login.jsp">로그인 </a>] [<a href="joinUser.jsp">회원가입 </a>] </div>
	<%}
	
	%>
	
</body>
</html>