<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table{
		width:100%;
	}

</style>

<script>
	function goToWrite(){
		location.replace("writeRcmSong.jsp");
		
	}

</script>
<body>

곡추천페이지
<table>

	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td><button onclick="goToWrite()">글쓰기</button></td>
	</tr>



</table>






</body>
</html>