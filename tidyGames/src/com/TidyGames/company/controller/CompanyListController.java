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
 * Servlet implementation class CompanyListController
 */
@WebServlet("/myPage.gc")
public class CompanyListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int comNo = Integer.parseInt(request.getParameter("cno"));
		System.out.println("cno");
		
		Company c = new CompanyService().selectCompany(comNo);
		
		request.setAttribute("c", c);
		request.getRequestDispatcher("views/company/gameCompanyDetailView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
