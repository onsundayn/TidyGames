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
 * Servlet implementation class AdminPointDetailController
 */
@WebServlet("/adPointDe.me")
public class AdminPointDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminPointDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int memNo = Integer.parseInt(request.getParameter("mNo"));
		
		
		ArrayList<Point> point = new PointService().selectPoint(memNo);  
		
		request.setAttribute("point", point);
	
	
		Point sum = new PointService().sumPoint(memNo);
		
		request.setAttribute("sum", sum);
	
		request.getRequestDispatcher("views/member/adminPointDetailView.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
