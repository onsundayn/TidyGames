package com.TidyGames.company.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.company.model.service.CompanyService;
import com.TidyGames.company.model.vo.Company;

/**
 * Servlet implementation class AdminInsertController
 */
@WebServlet("/insert.co")
public class AdminInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String companyName = request.getParameter("companyName");
		String companyId = request.getParameter("companyId");
		String companyHead = request.getParameter("companyHead");
		String companyComment = request.getParameter("comment");
		
		Company c = new Company();
		c.setCompanyName(companyName);
		c.setCompanyId(companyId);
		c.setCompanyHead(companyHead);
		c.setCompanyComment(companyComment);
		
		int result = new CompanyService().insertCompany(c);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "게임사 등록 완료!");
			response.sendRedirect(request.getContextPath() + "/list.co");
		}else {
			request.setAttribute("errorMsg", "게임사 등록에 실패하셨습니다");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request,response);
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
