<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Template 페이지</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String contentPage = request.getParameter("CONTENTPAGE");
	%>

	<%-- <%= contentPage %> --%>

	<table width=100% border="1" cellpadding="2" cellspacing="0">
		<tr>
			<td colspan="2">
				<jsp:include page="top.jsp" flush="false" />
			</td>
		</tr>
		<tr>
			<td width=600 valign="top">
				<jsp:include page="<%= contentPage%>" flush="false" />
			</td>
		</tr>
	</table>

</body>
</html>