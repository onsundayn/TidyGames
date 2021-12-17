package com.TidyGames.game.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.game.model.service.GameService;
import com.TidyGames.game.model.vo.Game;
import com.TidyGames.game.model.vo.Review;

/**
 * Servlet implementation class ReviewListViewController
 */
@WebServlet("/reviewList.ga")
public class ReviewListViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewListViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int gameNo = Integer.parseInt(request.getParameter("gno"));
		Game g = new GameService().selectGame(gameNo);
		ArrayList<Review> list = new GameService().selectReview(gameNo);
		
		request.setAttribute("list", list);
		request.setAttribute("g", g);
		request.getRequestDispatcher("views/game/reviewListView.jsp").forward(request, response);;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
