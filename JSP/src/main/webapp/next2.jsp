<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>회원 정보 수정</title>
	</head>
	<style>
		#wrap{
			margin:0 auto;
			width:600px;
			border:10px solid gray;
			padding:65px;
			}
		th,tr,td{
			border:1px solid gray;
			}
		table,td{
			border-collapse : collapse;
			}
		th:nth-child(1){
			background-color:green;
		}	
		span{
		display:inline-block;
		width:250px;
		}
	</style>
	<body>
	<%
		//정보수정을 하기 위해서는 select를 하고 update를 해줘야 사용자가 진행이 가능하다.
		Connection conn=null; //회선 연결
		Statement stmt=null;	//서버에서 mysql로 데이터를 보내는 객체
		ResultSet rs=null;		//데이터를 반환하는 객체
		
		String url="jdbc:mysql://127.0.0.1:3306/sample";
		String db_id="root";
		String db_pw="iotiot";
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,db_id,db_pw);
			String sql="select * from register;";
			stmt=conn.createStatement();
			System.out.println(sql);//
			
			rs=stmt.executeQuery(sql);
			%>
				<div id="wrap">
					<table>
						<tr>
							<th>회원번호</th>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>이름</th>
							<th>이메일</th>
							<th>전화번호</th>
							<th>주소</th>
						</tr>
			<%
			while(rs.next()){
				String num=rs.getString("num");
				String id=rs.getString("id");
				String pass=rs.getString("pass");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String phone=rs.getString("phone");
				String address=rs.getString("address");
				%>
						<tr>
							<td><%=num %></td>
							<td><%=id %></td>
							<td><%=pass %></td>
							<td><%=name %></td>
							<td><%=email %></td>
							<td><%=phone %></td>
							<td><%=address %></td>
						</tr>
			<%
			}
			
			%>			
							
					</table>
				
			<%
			
		}catch(Exception e){
			System.out.println("접속 중 오류 발생 : "+e);
		}finally{
			try{
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			}catch(Exception ex){
				System.out.println("접속 해제 중 오류 발생 :"+ex);
			}
		}
	%>
	<form method="post" action="update.jsp">
		변경하실 회원의 번호를 입력해 주세요 : <input type="text" name="number"><br>
		<fieldset>
			<legend>수정사항 입력</legend>
			<span>회원 아이디 변경</span><input type="text" name="id"><br>
			<span>회원 비밀번호 변경</span><input type="text" name="pw"><br>
			<span>회원 이름 변경</span><input type="text" name="nm"><br>
			<span>회원 이메일 변경</span><input type="text" name="em"><br>
			<span>회원 연락처 변경</span><input type="text" name="ph"><br>
			<span>회원 주소 변경</span><input type="text" name="ad"><br>
		</fieldset> 
		<input type="submit" value="수정">
	</form>
	</div>
	</body>
</html>