<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>아이디 중복체크 화면</title>
	</head>
	<body>
		<h1>아이디 중복확인</h1>
		<form method="get" action="idCheck.do" name="frm">
			아이디:<input type="text" name="userid" value="${userid }">
			<input type="submit" value="중복확인!">
			<br>
			<c:if test="${result==1 }">
				${userid }는 이미 사용중인 아이디입니다.
			</c:if>
			<c:if test="${result==-1 }">
				${userid }는 사용가능합니다.
				<input type="button" value="사용하기" onclick="idok()">
			</c:if>
		</form>
		<script>
			function idok(){
				//opener : 현재 보고있는 창을 띄워준 원인이 되는 창
				//self : 현재 보고있는 창
				opener.document.frm.userId.value=document.frm.userid.value;
				opener.document.frm.reId.value=document.frm.userid.value;
				self.close();
			}
		</script>
	</body>
</html>