package com.TidyGames.pay.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TidyGames.member.model.vo.Member;
import com.TidyGames.pay.model.vo.Cart;

/** 
 * Servlet implementation class CartController
 */
@WebServlet("/cart.pa")
public class CartListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		
//		로그인한 회원정보알아오기
		HttpSession session = request.getSession();
		int memNo = ((Member)session.getAttribute("loginUser")).getMemNo();
		
		ArrayList<Cart> gameCart = null;
		
		Object obj = session.getAttribute("gameCart");  //세션객체에서 cart 값 가져옴
		
		if(obj == null) {	//세션 정보가 없으면 배열을 생성 : 주문한 제품이 없다
			gameCart = new ArrayList<Cart>();	
		} else {			//세션 정보가 있으면 강제로 캐스팅 : 주문한 제품이 있다
			gameCart = (ArrayList<Cart>) obj;
		}
		
		
		
		request.getRequestDispatcher("views/pay/cartView.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
