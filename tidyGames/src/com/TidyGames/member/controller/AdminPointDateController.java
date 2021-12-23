package com.TidyGames.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TidyGames.member.model.service.PointService;
import com.TidyGames.member.model.vo.Member;
import com.TidyGames.member.model.vo.Point;

/**
 * Servlet implementation class AdminPointDateController
 */
@WebServlet("/adPointDate.me")
public class AdminPointDateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminPointDateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//String memNo = request.getParameter("mNo");
		int memNo = Integer.parseInt(request.getParameter("mNo"));
		String start = request.getParameter("startDate");
		String end = request.getParameter("endDate");
		String select = request.getParameter("select");

		System.out.println(memNo);
		System.out.println(end);
		System.out.println(start);
		System.out.println(select);

		if (start == "" || end == "") {
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "날짜를 입력해주세요");
			
			
			response.sendRedirect(request.getContextPath()+"/pointHistory.me");
		} else {

			if (select.equals("all")) {
				ArrayList<Point> point = new PointService().selectAllPoint(memNo, start, end);

				
				request.setAttribute("point", point);
				Point sum = new PointService().sumPoint(memNo);
				
				request.setAttribute("sum", sum);
				request.getRequestDispatcher("views/member/adminPointDetailView.jsp").forward(request, response);

			} else if (select.equals("save")) {

				ArrayList<Point> point = new PointService().selectSave(memNo, start, end);

				System.out.println(point);
				request.setAttribute("point", point);
				Point sum = new PointService().sumPoint(memNo);
				
				request.setAttribute("sum", sum);
				request.getRequestDispatcher("views/member/adminPointDetailView.jsp").forward(request, response);

			} else {
				
				ArrayList<Point> point = new PointService().selectUse(memNo, start, end);

				System.out.println(point);
				request.setAttribute("point", point);
				Point sum = new PointService().sumPoint(memNo);
				
				request.setAttribute("sum", sum);
				request.getRequestDispatcher("views/member/adminPointDetailView.jsp").forward(request, response);
				
				
			}

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
