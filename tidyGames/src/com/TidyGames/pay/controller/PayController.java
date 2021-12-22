package com.TidyGames.pay.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TidyGames.member.model.vo.Member;

/**
 * Servlet implementation class PayController
 */
@WebServlet("/pay.pa")
public class PayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		int payAmount = Integer.parseInt(request.getParameter("total"));
		String payMethod = request.getParameter("payment");
		int gameNo = Integer.parseInt(request.getParameter("gameNo"));
		String usePoint = request.getParameter("usePoint");
		int savePoint = Integer.parseInt(request.getParameter("savePoint"));
		int totalPrice = payAmount-Integer.parseInt(usePoint);
	
		
		System.out.println(memNo);
		System.out.println(payAmount);
		System.out.println(payMethod);
		System.out.println(gameNo);
		System.out.println(usePoint);
		System.out.println(savePoint);
		System.out.println(totalPrice);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
