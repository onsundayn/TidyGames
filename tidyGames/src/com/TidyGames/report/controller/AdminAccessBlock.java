package com.TidyGames.report.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.report.model.service.ReportService;
import com.TidyGames.report.model.vo.Report;

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
		
		
			String[] reportNo = request.getParameterValues("hno");
			String[] user = request.getParameterValues("user");
			
//			System.out.println(String.join(",", user));
			
//			ArrayList<Report> list = (ArrayList<Report>)request.getSession().getAttribute("list");
			
			int result = new ReportService().accessBlock(user, reportNo);
			
			
			
			if(result > 0) {
				request.getSession().setAttribute("alertMsg", result + "명의 회원을 차단했습니다.");
				response.sendRedirect(request.getContextPath() + "/reportWait.re");
				
			}else {
				request.getSession().setAttribute("alertMsg", "오류가 발생했습니다. 다시 확인해주세요.");
				response.sendRedirect(request.getContextPath());
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
