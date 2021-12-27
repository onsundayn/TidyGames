package com.TidyGames.game.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TidyGames.game.model.service.GameService;
import com.TidyGames.game.model.vo.Game;

/**
 * Servlet implementation class ConfirmUpdateController
 */
@WebServlet("/deletecancel.ga")
public class AdminDeleteCancelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteCancelController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		int gameNo = Integer.parseInt(request.getParameter("gno"));
		Game g = new Game();
		g.setGameNo(gameNo);
		System.out.println(g.getGameNo());
		
		int result = new GameService().deleteCancel(g);
		
		if(result > 0) {
			
		  
		}else {
			System.out.println("오류");
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
