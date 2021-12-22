package com.TidyGames.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.common.model.vo.Attachment;
import com.TidyGames.notice.model.service.QnaService;
import com.TidyGames.notice.model.vo.Notice;

/**
 * Servlet implementation class adminQnaAnswerController
 */
@WebServlet("/answer.no")
public class AdminQnaAnswerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminQnaAnswerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int notiNo = Integer.parseInt(request.getParameter("qno"));
																		
		ArrayList<Notice> list = new QnaService().qnaDetailView(notiNo);
		Attachment at = new QnaService().selectAttachment(notiNo);
		
		request.setAttribute("list", list);
		request.setAttribute("at", at);
		request.getRequestDispatcher("views/notice/adminQnaAnswer.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
