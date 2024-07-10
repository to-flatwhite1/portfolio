<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>산책어때</title>
		<link href="index.css" rel="stylesheet" type="text/css">
		<script src="jquery.min.js"></script>
		<script src="script.js"></script>
	</head>
	<body>
    <div id="wrap">
        <header id="header">
            <h1 class="logo">
                <a href="#">산책어때</a>
            </h1>
            <a href="login.jsp">Login</a>
            <nav class="nav">
                <ul>
                    <li><a href="#">산책어때</a>
                        <ul class="submenu">
                            <li><a href="introduce.jsp">산책어때 소개</a></li>
                        </ul>
                    </li>    
                    <li><a href="#">예약하기</a>
                        <ul class="submenu">
                            <li><a href="#">산책하고싶은 강아지</a></li>	
                            <li><a href="#">산책을 시키고 싶은 지원자</a></li>
                        </ul>
                    </li>    					
                    <li><a href="#">커뮤니티</a>
                        <ul class="submenu">		
                            <li><a href="#">리뷰</a></li>	
                            <li><a href="board.jsp">자유게시판</a></li>
                        </ul>
                     </li>  
                    <li><a href="#">로그인</a>
                        <ul class="submenu">
                        	<li><a href="login.jsp">로그인</a></li>	
                            <li><a href="register.jsp">회원가입</a></li>		
                            <li><a href="mypage.jsp">마이페이지</a></li>
                        </ul>
                    </li>    		
                </ul>
            </nav>
        </header>
        <!-- header 끝 -->
		<div id="slide">
			<div class="slide_list">
				<ul>
					<li class="s1"><a href="#"></a></li>
					<li class="s2"><a href="#"></a></li>
				</ul>
			</div>
		</div>
        <div id="contents">
			<div class="content1">본문1</div>
			<div class="content2">본문2</div>
            <div class="content3">본문3</div>
        </div>
        <footer id="footer">
            <div class="footer1">
                <h4>산책어때</h4>
            </div>
            <div class="footer2">
                <div class="footer2-1">
                    <ul>
                        <li><a href="#">개인정보처리방침</a></li>
                        <li><a href="#">회사소개</a></li>
                        <li><a href="#">이메일무단수집거부</a></li>
                        <li><a href="#">고객센터</a></li>
                    </ul>
                </div>
                <div class="footer2-2">
                    COPYRIGHT 2024, All Rights Reseved
                </div>
            </div>
        </footer>
    </div>
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