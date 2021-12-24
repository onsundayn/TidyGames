package com.TidyGames.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.notice.model.service.NoticeService;
import com.TidyGames.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeListController
 */
@WebServlet("/notice.no")
public class NoticeListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int listCount;		// 현재 총 게시글 갯수
		int currentPage; 	// 현재 페이지 (즉, 사용자가 요청한 페이지)
		int pageLimit; 		// 페이지 하단에 보여질 페이징바의 페이지 최대갯수(몇개 단위씩)
		int viewLimit;		// 한 페이지내에 보여질 게시글 최대갯수 (몇개 단위씩)
		int maxPage;		// 가장 마지막페이지 (총 페이지 수)
		int startPage;		// 페이징바의 시작수
		int endPage;		// 페이징바의 끝수
		
		// * listCount : 총 게시글 갯수
		listCount = new NoticeService().selectListCount();
		
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		pageLimit = 10;
		viewLimit = 15;
		maxPage = (int)Math.ceil((double)listCount / viewLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;	//(currentPage - 1) / pageLimit : n
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, viewLimit, maxPage, startPage, endPage);
		
		// * 현재 요청한 페이지(currentPage)에 보여질 게시글 리스트 viewLimit수만큼 조회해가기
		ArrayList<Notice> list = new NoticeService().selectNoticeList(pi);
			
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/notice/noticeListView.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
