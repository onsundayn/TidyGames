package com.TidyGames.game.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.game.model.service.GameService;
import com.TidyGames.game.model.vo.Review;
import com.TidyGames.member.model.vo.Member;

/**
 * Servlet implementation class AjaxReviewInsertController
 */
@WebServlet("/rinsert.ga")
public class AjaxReviewInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxReviewInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String contents = request.getParameter("contents");
		int gameNo = Integer.parseInt(request.getParameter("gno"));
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		
		Review r = new Review();
		r.setContents(contents);
		r.setGameNo(gameNo);
		r.setWriter(String.valueOf(memNo));
		
		int result = new GameService().insertReview(r);
		
		response.getWriter().print(result);
		//응답 데이터만 돌려주기
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
