package controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import DAO.MemberDAO;	//로그인 메서드, Connection연결처리, 싱글톤 구현
import DTO.Member;		//객체정보를 확인할 수 있는 설계도 위치

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//a태그 또는 도메인 직접입력, Ajax get호출 등의 방식에서 doGet실행 *X5,000,000
		System.out.println("login.doGet() 실행확인");
		RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//form태그 post submit 또는 Ajax post호출 등의 방식에서 doPost실행 *X5,000,000
		String url="login.jsp";
		request.setCharacterEncoding("utf-8");
		String userid=request.getParameter("userId");
		String pwd=request.getParameter("pwd");
		MemberDAO mDAO=MemberDAO.getInstance();	//회선이 여러개 생기는 경우 발생할 수 있는 문제 원천차단
		int result=mDAO.userCheck(userid, pwd);
		if(result==1) {		//로그인 성공
			HttpSession session=request.getSession();	//서블릿에서 세션을 땡겨 쓰려면 request를 통한다.
			Member m=mDAO.getMember(userid);		//해당 아이디가 가지고 있는 DB정보를 저장한 객체생성
			session.setAttribute("loginUser", m);	//세션에 회원정보를 가진 객체를 저장
			request.setAttribute("message", "로그인에 성공하셨습니다.");
			url="main.jsp";	//로그인에 성공한 사람은 main화면으로 이동
		}else if(result==0) {		//아이디는 있는데 입력된 비밀번호랑 가입된 비밀번호가 다른경우
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
		}else if(result==-1) {	//회원가입이 되지 않은 경우, select문의 결과가 empty set인 경우
			request.setAttribute("message", "존재하지 않는 회원입니다.");
		}
		RequestDispatcher dis=request.getRequestDispatcher(url);
		dis.forward(request, response);
	}
}
