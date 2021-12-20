package com.TidyGames.company.controller;

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
 * Servlet implementation class CompanyGameUpdateController
 */
@WebServlet("/updateForm.gc")
public class CompanyGameUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyGameUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getParameter("gno").getClass().getName());
		int gameNo = Integer.parseInt(request.getParameter("gno"));
		System.out.println(gameNo);
		int memNo = 0;
		if(request.getSession().getAttribute("loginUser") != null) {
			memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		}
		GameService gService = new GameService();
		Game g = gService.selectGame(memNo, gameNo);
		Attachment3 at = gService.selectAttachment(gameNo);
		ArrayList <Category> list = new CategoryService().selectCategoryList();
		
		request.setAttribute("g", g);
		request.setAttribute("at", at);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/company/gameCompanyUpdateForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
