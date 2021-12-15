package com.TidyGames.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TidyGames.member.model.service.MemberService;
import com.TidyGames.member.model.vo.Member;

/**
 * Servlet implementation class MemberLoginController
 */
@WebServlet("/memberLogin.me")
public class MemberLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		Member loginUser = new MemberService().loginMember(userId, userPwd);
		// 사용자가 입력한 userId, userPwd가 일치하면 loginUser에 select한 Member객체의 값이 담겨있고,
		// 일치하지 않으면 loginUser에 null이 담겨있다.
		System.out.println(loginUser);
	
		if(loginUser == null) {
			// "아이디 비번 확인" 알람창 띄운 뒤 로그인창 재 로딩
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "아이디 혹은 비밀번호를 확인해주세요.");
			request.getRequestDispatcher("views/member/login.jsp").forward(request, response);
		} else {
			// 로그인한 회원정보(loginuUser)를 session에 담기(여기저기서 가져다 쓸 수 있도록)
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			response.sendRedirect(request.getContextPath());
		}

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
