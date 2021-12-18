package com.TidyGames.game.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TidyGames.game.model.service.GameService;
import com.TidyGames.game.model.vo.Game;
import com.TidyGames.member.model.vo.Member;

/**
 * Servlet implementation class GameDetailViewController
 */
@WebServlet("/detail.ga")
public class GameDetailViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GameDetailViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		int gameNo = Integer.parseInt(request.getParameter("gno"));
		

		GameService gService = new GameService();
		
		Game g = gService.selectGame(memNo, gameNo);
		request.setAttribute("g", g);		
		request.getRequestDispatcher("views/game/gameDetailView.jsp").forward(request, response);
		
		HttpSession session = request.getSession();
		session.setAttribute("g", g);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
