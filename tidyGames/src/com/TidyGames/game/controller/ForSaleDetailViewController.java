package com.TidyGames.game.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.game.model.service.CategoryService;
import com.TidyGames.game.model.service.GameService;
import com.TidyGames.game.model.vo.Attachment3;
import com.TidyGames.game.model.vo.Category;
import com.TidyGames.game.model.vo.Game;
import com.TidyGames.member.model.vo.Member;

/**
 * Servlet implementation class GameDetailViewController
 */
@WebServlet("/forsaledetail.ga")
public class ForSaleDetailViewController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForSaleDetailViewController() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int gameNo = Integer.parseInt(request.getParameter("gno"));
		
		GameService gService = new GameService();
		
		Game g = gService.forSaleGame(gameNo);
		ArrayList<Category> gcList = new CategoryService().selectCategoryList();
		ArrayList<Attachment3> list = gService.selectAttachmentList(gameNo);
		Attachment3 at = gService.selectAttachment(gameNo);
		
		request.setAttribute("gcList", gcList);
		request.setAttribute("at", at);
		request.setAttribute("g", g);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/game/forSaleDetailView.jsp").forward(request, response);

	}

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}