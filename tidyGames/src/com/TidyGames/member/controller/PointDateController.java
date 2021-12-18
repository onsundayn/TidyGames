package com.TidyGames.member.controller;

import java.io.IOException;
import java.sql.Date;
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
 * Servlet implementation class PointDateController
 */
@WebServlet("/pointDate.me")
public class PointDateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PointDateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		String start = request.getParameter("startDate");
		String end = request.getParameter("endDate");
		
		System.out.println(start);
		System.out.println(end);
		
		ArrayList<Point> point = new PointService().selectDate(memNo, start,end);  
		
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
