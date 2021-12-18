package com.TidyGames.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.member.model.service.PointService;
import com.TidyGames.member.model.vo.Member;
import com.TidyGames.member.model.vo.Point;

/**
 * Servlet implementation class PointHistoryController
 */
@WebServlet("/pointHistory.me")
public class PointHistoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PointHistoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		System.out.println(memNo);
		
		ArrayList<Point> point = new PointService().selectPoint(memNo);  
		
		System.out.println(point);
		request.setAttribute("point", point);
	
		request.getRequestDispatcher("views/member/pointHistoryView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
