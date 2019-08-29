<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    request.setCharacterEncoding("utf-8");
    
    String name = request.getParameter("name");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    
    try {
    	Connection connection = null;
        Class.forName("oracle.jdbc.OracleDriver");
        connection = DriverManager.getConnection("jdbc:oracle:thin:@10.96.124.225:1521:xe", "RECOMSONG", "1234");
		Statement statement = connection.createStatement();
		String command = "INSERT into users(id, pw, name)values('"+id+"','"+pw+"','"+name+"')";
        statement.executeUpdate(command);
        
        System.out.print("Data is successfully inserted!");
        
        %>
    	
    	<script>
    	
    		alert("회원가입에 성공하였습니다");
    		location.href="main.jsp";
    	
    	</script>
    	
    	<%
    	
    	
    }catch(Exception e){
    	e.printStackTrace();
    	%>
    	<script>
    	
    		alert("회원가입에 실패했습니다");
			history.go(-1);
		</script>
    <%	
    }
    
    
    %>