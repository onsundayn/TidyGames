package com.TidyGames.pay.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TidyGames.pay.model.service.PayService;
import com.TidyGames.pay.model.vo.Cart;

/**
 * Servlet implementation class CartInsertController
 */
@WebServlet("/cartInsert.pa")
public class CartInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		int memNo = (int)request.getAttribute("memNo");
		int gameNo = (int)request.getAttribute("gameNo");
		
		Cart ca = new Cart();
		
		ca.setMemNo(memNo);
		ca.setGameNo(gameNo);
		
		int count = new PayService().countCart(ca);
		
		if(count == 0) {
			
			int result = new PayService().insertCart(ca);
			
			if(result > 0) {
				
			}
			
			
			
		}else {
			
//			장바구니에 이미 존재합니다. alert
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg","장바구니에 이미 존재합니다.");
//			게임상세페이지 장바구니 버튼시 게임상세페이지로,,,
			response.sendRedirect(request.getContextPath()+"/wishList.me");

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
