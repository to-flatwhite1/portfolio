<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>ȸ������</title>
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
			<h1>ȸ������</h1>
			<form method="post" action="register.jsp">
				<span>���̵� : </span><input type="text" name="id"><br>
				<span>��й�ȣ : </span><input type="password" name="pw"><br>
				<span>�̸� : </span><input type="text" name="nm"><br>
				<span>�̸��� : </span><input type="text" name="em"><br>
				<span>����ó : </span><input type="text" name="ph"><br>
				<span>�ּ� : </span><input type="text" name="ad"><br>
				<input type="submit" value="ȸ������">
			</form>
		</div>
	</body>
</html>