<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>산책어때:로그인</title>
	<style>
		#container{
			width:300px;
			margin:0 auto;
		}
		#user_id{
			margin:16px;
		}
		#submit{
			width:300px;
			height:80px;
			margin:30px;
		}
	</style>
	</head>
	<body>
		<div id="container">
		<form method="get" action="next.jsp">
			<fieldset>
				<h1>LOGIN</h1>
					아이디:<input type="text" id="user_id" size="10"><br>
					비밀번호:<input type="password" id="user_pw" size="10"><br>
			<div class=submit>
				<input type="submit" id="submit" value="로그인"><br>
			</div>
			<a href="insert.jsp">회원가입</a>
			<a href="next3.jsp">아이디/비밀번호 찾기</a>
			</fieldset>
		</form>
		</div>
	</body>
</html>