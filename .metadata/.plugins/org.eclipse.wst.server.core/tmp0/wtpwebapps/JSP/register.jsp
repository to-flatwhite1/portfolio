<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 처리기</title>
		<style>
		</style>
	</head>
	<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String pass=request.getParameter("pw");
		String name=request.getParameter("nm");
		String email=request.getParameter("em");
		String phone=request.getParameter("ph");
		String address=request.getParameter("ad");
		
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String url="jdbc:mysql://127.0.0.1:3306/sample";
		String db_id="root";
		String db_pw="iotiot";
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,db_id,db_pw);
			String sql="insert into register(id,pass,name,email,phone,address)values (";
			sql+="'"+id+"','"+pass+"','"+name+"','"+email+"','"+phone+"','"+address+"');";
			System.out.println(sql);
			stmt=conn.createStatement();
			stmt.execute(sql);
			response.sendRedirect("success.jsp");
		}catch(Exception e){
			System.out.println("접속 중 오류 발생 :"+e);
		}finally{
			try{
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			}catch(Exception ex){
				System.out.println("접속 해제중 오류발생: "+ex);
			}
		}
	%>
	
	</body>
</html>