<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection" import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    request.setCharacterEncoding("utf-8");
    
    String name = request.getParameter("name");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    
    Connection conn = null; // DB연결된 상태(세션)을 담은 객체
    PreparedStatement pstm = null;  // SQL 문을 나타내는 객체
    ResultSet rs = null;  // 쿼리문을 날린것에 대한 반환값을 담을 객체
    
    try {
    	Connection connection = null;
        Class.forName("oracle.jdbc.OracleDriver");
        connection = DriverManager.getConnection("jdbc:oracle:thin:@10.96.124.225:1521:xe", "RECOMSONG", "1234");
		Statement statement = connection.createStatement();
		String command = "INSERT into users(id, pw, name)values('"+id+"','"+pw+"','"+name+"')";
        statement.executeUpdate(command);
        
        System.out.print("Data is successfully inserted!");
        
        %>
    	
    	<jsp:forward page="main.jsp"/>
    	
    	<%
    	
    	
    	
    }catch(Exception e){
    	e.printStackTrace();
    	%>
    	<script>
    	
    		alert("회원가입에 실패했습니다");
				
		</script>
    <%	
    }
    
    
    %>