package com.TidyGames.report.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.report.model.service.ReportService;

/**
 * Servlet implementation class AdminAccessBlock
 */
@WebServlet("/block.re")
public class AdminAccessBlock extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAccessBlock() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String[] user = request.getParameterValues("user");
			
			
			int result = new ReportService().accessBlock(user);
			
			if(result > 0) {
				
				request.getSession().setAttribute("alertMsg", result + "명의 회원을 차단했습니다.");
				response.sendRedirect(request.getContextPath() + "/reportWait.re");
				
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
