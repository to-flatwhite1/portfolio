<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<style>
		#wrap{
		width:450px;
		height:400px;
		margin:0 auto;
		border:1px solid gray;
		}
		h1{
		text-align:center;
		}
		form{
		width:350px;
		height:250px;
		
		
	
		}
		span{
		float:left;
    	font-size:16px;
    	font-weight: bold;
    	padding-left: 5px;
    	padding bottom:10px;
    	width:110px;
		}
	
		input:last-child{
		width:150px;
		display:block;
		margin:15px auto;
		background-color:white;
		font-weight:600;
		}
	</style>
	</head>
	<body>
		<div id="wrap">
			<h1>회원가입</h1>
			<form method="post" action="register.jsp">
				<span>아이디 : </span><input type="text" name="id"><br>
				<span>비밀번호 : </span><input type="password" name="pw"><br>
				<span>이름 : </span><input type="text" name="nm"><br>
				<span>이메일 : </span><input type="text" name="em"><br>
				<span>연락처 : </span><input type="text" name="ph"><br>
				<span>주소 : </span><input type="text" name="ad"><br>
				<input type="submit" value="회원가입">
			</form>
		</div>
	</body>
</html>