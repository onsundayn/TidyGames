package com.TidyGames.qna.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.common.model.vo.Attachment;
import com.TidyGames.qna.model.service.QnaService;
import com.TidyGames.qna.model.vo.Qna;

/**
 * Servlet implementation class CompanyQnaAnswer
 */
@WebServlet("/answer.gq")
public class CompanyQnaAnswer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyQnaAnswer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int gqnaNo = Integer.parseInt(request.getParameter("gqno"));
		
		Qna gq = new QnaService().gameQnaDetailView(gqnaNo);
		Attachment at = new QnaService().selectGameQnaAttachment(gqnaNo);
		
		request.setAttribute("gq", gq);
		request.setAttribute("at", at);
	
		request.getRequestDispatcher("views/qna/companyQnaAnswer.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
