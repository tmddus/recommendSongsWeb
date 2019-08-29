package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserDAO {
	String id;
	String pw;
	String name;
	
	private static UserDAO instance;
	
	public UserDAO() {}
	
	public static UserDAO getInstance(){
        if(instance==null)
            instance=new UserDAO();
        return instance;
    }
	
	
	public int loginCheck(String id, String pw) {
		
		int result = 0;
		Connection connection = null;
		PreparedStatement pstmt = null;
        ResultSet rs = null;
        String dbPw="";
		
		 try {
		    	
		        Class.forName("oracle.jdbc.OracleDriver");
		        connection = DriverManager.getConnection("jdbc:oracle:thin:@10.96.124.225:1521:xe", "RECOMSONG", "1234");
		        
		        StringBuffer query = new StringBuffer();
		        query.append("select pw from users where id=?");
		        
		        pstmt = connection.prepareStatement(query.toString());
		        pstmt.setString(1, id);
		        rs = pstmt.executeQuery();
		        
		        if(rs.next()) {
		        	dbPw = rs.getString("pw");
		        	
		        	if(dbPw.equals(pw)) {
		        		result=1; // 로그인 성공
		        	}else {
		        		result=0; // 비밀번호가 존재하지 않음
		        	}
		        }else {
		        	result=-1; // 아이디가 존재하지 않음
		        }
		    	
		    	
		    }catch(Exception e){
		    	e.printStackTrace();
		    }finally {
	            try{
	                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
	                if ( connection != null ){ connection.close(); connection=null;    }
	            }catch(Exception e){
	                throw new RuntimeException(e.getMessage());
	            }
	        }
		
		return result;
		
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
}
