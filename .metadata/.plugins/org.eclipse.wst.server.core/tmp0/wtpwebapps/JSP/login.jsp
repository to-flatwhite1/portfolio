<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>��å�:�α���</title>
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
					���̵�:<input type="text" id="user_id" size="10"><br>
					��й�ȣ:<input type="password" id="user_pw" size="10"><br>
			<div class=submit>
				<input type="submit" id="submit" value="�α���"><br>
			</div>
			<a href="insert.jsp">ȸ������</a>
			<a href="next3.jsp">���̵�/��й�ȣ ã��</a>
			</fieldset>
		</form>
		</div>
	</body>
</html>