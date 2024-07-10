<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보 수정 페이지</title>
	</head>
	<body>
		<form method="post" action="update.do" name="frm">
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="nm" value="${mem.name }"></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="userid" value="${mem.userid }" readonly></td>
				</tr>
				<tr>
					<td>비밀번호 변경</td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="pwd_check"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" value="${mem.email }"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phone" value="${mem.phone }"></td>
				</tr>
				<tr>
					<td>관리자여부</td>
					<td><input type="text" name="admin" value="${mem.admin }" readonly></td>
				</tr>
				<tr>
					<td>입력</td>
					<td>
						<input type="submit" value="정보수정!" onclick="return upCheck()">
						<input type="reset" value="초기화">
					</td>
				</tr>
			</table>
		</form>
		<script>
			function upCheck(){
				if(document.frm.nm.value.length==0){
					alert("변경하실 이름을 입력해 주세요");
					document.frm.nm.focus();
					return false;
				}
				if(document.frm.pwd.value==""){
					alert("변경하실 비밀번호를 입력해 주세요");
					document.frm.pwd.focus();
					return false;
				}
				if(document.frm.pwd.value!=document.frm.pwd_check.value){
					alert("비밀번호확인이 다릅니다. 다시 입력해 주세요");
					document.frm.pwd_check.focus();
					return false;
				}
				if(document.frm.email.value==""){
					alert("변경하실 이메일을 입력해 주세요");
					document.frm.email.focus();
					return false;
				}
				if(document.frm.phone.value==""){
					alert("변경하실 연락처를 입력해 주세요");
					document.frm.phone.focus();
					return false;
				}
				return true;
			}
		</script>
	</body>
</html>