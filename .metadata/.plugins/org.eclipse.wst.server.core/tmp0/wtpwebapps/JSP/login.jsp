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
		<form method="post" action="login.do" name="frm">
			<fieldset>
				<h1>LOGIN</h1>
					���̵�:<input type="text" name="user_id" id="user_id" ><br>
					��й�ȣ:<input type="password" name="user_pw" ><br>
			<div class=submit>
				<input type="submit" value="�α���" onclick="return check()"><br>
				<input type="reset" value="���">
				<input type="button" value="ȸ������" onclick="reg()">
				<a href="next2.jsp"><input type="button" value="���̵�/��й�ȣ ã��"></a>
			</div>

			</fieldset>
		</form>
		</div>
		<script>
		function reg(){
			location.href="insert.jsp";
		}
		//���̵� ����������, ��й�ȣ ����������
		function check(){
			if(document.frm.user_id.value.length==0){
				alert("���̵� �Է��ϼž� �մϴ�.");
				document.frm.user_id.focus();	//�ش� input�� ������ �ε���
				return false;
			}
			if(document.frm.user_pw.value==""){
				alert("��й�ȣ�� �Է��ϼž� �մϴ�.");
				document.frm.user_pw.focus();
				return false;
			}
			return true;
		}</script>
	</body>
</html>