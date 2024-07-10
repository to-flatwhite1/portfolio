<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판 페이징 처리</title>
	</head>
	<body>
		<!-- currentPage : 현재 보고있는 페이지번호 -->
		<!-- recordsPerPage : 한페이지 당 보여줄 게시글 수 -->
		<!-- limit n1, n2 -->
		<!-- 다음번에 시작되는 자료의 번호는 n1+n2+1 -->
		<!-- P1 : 1~10  (n1=0, n2=10)-->
		<!-- P2 : 11~20 (n1=10, n2=10)-->
		<!-- P3 : 21~30 (n1=20, n2=10)-->
		<form action="ReadPage" method="get">
			<input type="hidden" name="currentPage" value="1">
			한 페이지에 보여줄 게시글 수를 골라주세요
			<select name="recordsPerPage">
				<option value="5">5개씩보기</option>
				<option value="10" selected>10개씩보기</option>
				<option value="15">15개씩보기</option>
			</select>
			<input type="submit" value="보기">
		</form>
	</body>
</html>