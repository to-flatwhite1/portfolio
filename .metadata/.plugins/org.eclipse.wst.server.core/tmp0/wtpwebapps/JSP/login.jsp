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
		<form method="post" action="login.do" name="frm">
			<fieldset>
				<h1>LOGIN</h1>
					아이디:<input type="text" name="user_id" id="user_id" ><br>
					비밀번호:<input type="password" name="user_pw" ><br>
			<div class=submit>
				<input type="submit" value="로그인" onclick="return check()"><br>
				<input type="reset" value="취소">
				<input type="button" value="회원가입" onclick="reg()">
				<a href="next2.jsp"><input type="button" value="아이디/비밀번호 찾기"></a>
			</div>

			</fieldset>
		</form>
		</div>
		<script>
		function reg(){
			location.href="insert.jsp";
		}
		//아이디 안적었는지, 비밀번호 안적었는지
		function check(){
			if(document.frm.user_id.value.length==0){
				alert("아이디를 입력하셔야 합니다.");
				document.frm.user_id.focus();	//해당 input을 선택해 두도록
				return false;
			}
			if(document.frm.user_pw.value==""){
				alert("비밀번호를 입력하셔야 합니다.");
				document.frm.user_pw.focus();
				return false;
			}
			return true;
		}</script>
	</body>
</html>