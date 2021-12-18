package com.TidyGames.post.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.post.model.service.PostService;
import com.TidyGames.post.model.vo.Post;

/**
 * Servlet implementation class PostDetailControlelr
 */
@WebServlet("/detail.po")
public class PostDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PostService ps = new PostService();
		int postNo = Integer.parseInt(request.getParameter("num"));		

		int result = ps.increaseCount(postNo);
		
		if(result > 0) {
			Post p = ps.selectPostDetail(postNo);
			request.setAttribute("post", p);
			
			request.getRequestDispatcher("views/post/postDetailView.jsp").forward(request,response);
		}else {
			request.setAttribute("errorMsg", "글 조회에 실패하셨습니다");
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
