package com.TidyGames.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.member.model.service.MemberService;

/**
 * Servlet implementation class adminDeleteMember
 */
@WebServlet("/delete.me")
public class adminDeleteMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminDeleteMember() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		int memNo = Integer.parseInt(request.getParameter("mno"));
		int result = new MemberService().deleteMember(memNo);
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "회원탈퇴 되었습니다.");
			response.sendRedirect(request.getContextPath() + "/memberList.me?cpage=1");
		}else {
			request.getSession().setAttribute("alertMsg", "회원탈퇴 중 오류가 발생했습니다.");
			response.sendRedirect(request.getContextPath() + "/memberList.me?cpage=1");
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
