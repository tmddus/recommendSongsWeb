<%@page import="DAO.UserDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    UserDAO Dao = UserDAO.getInstance();
    
    int check = Dao.loginCheck(id, pw);	
    String msg;
    
    if(check == 1){
    	
    	session.setAttribute("currentID", id);
    	msg = "main.jsp";
    	
    }else if(check==0){
    	msg = "login.jsp?msg=0";
    }else{
    	msg = "login.jsp?msg=-1";
    }
    
    response.sendRedirect(msg);
    
    
    %>