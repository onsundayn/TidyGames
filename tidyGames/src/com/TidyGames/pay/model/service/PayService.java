package com.TidyGames.pay.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.commit;
import static com.TidyGames.common.JDBCTemplate.getConnection;
import static com.TidyGames.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.pay.model.dao.PayDao;
import com.TidyGames.pay.model.vo.Cart;
import com.TidyGames.pay.model.vo.Pay;
import com.TidyGames.pay.model.vo.PayGame;
import com.TidyGames.pay.model.vo.Refund;

public class PayService {
	
	public int countCart(Cart ca) {
		
		Connection conn = getConnection();
		
		int count = new PayDao().countCart(conn, ca);
		
		close(conn);
		
		return count;
	}
	
	
	public int insertCart(Cart ca) {
		
		Connection conn = getConnection();
		
		int result = new PayDao().insertCart(conn, ca);
		
		if(result >0 ) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		close(conn);
		
		return result;
	}

	
	public ArrayList<Cart> selectCart(int memNo) {
		
		
		Connection conn = getConnection();
		
		 ArrayList<Cart> cart = new PayDao().selectCart(conn, memNo);
		 
		 close(conn);
		 
		return cart;
		 
	}
	
	public int deleteCart(Cart d) {
		
		Connection conn = getConnection();
		
		int result = new PayDao().deleteCart(conn, d);
		
		if(result >0 ) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		close(conn);
		
		return result;
	}
	
	public ArrayList<PayGame> orderList(int memNo) {

		Connection conn = getConnection();
		
		 ArrayList<PayGame> order = new PayDao().orderList(conn, memNo);
		 
		 close(conn);
		 
		return order;
	}
	
	public ArrayList<PayGame> rforderList(int memNo, int orderNo) {

		Connection conn = getConnection();
		
		 ArrayList<PayGame> order = new PayDao().rforderList(conn, memNo, orderNo);
		 
		 close(conn);
		 
		return order;
	}
	
	public Pay payInfo(int memNo, int orderNo) {
		Connection conn = getConnection();
		
		Pay pi = new PayDao().payInfo(conn, memNo, orderNo);
		
		 close(conn);
		 
		return pi;
	}
	
//	관리자환불목록조회
	public ArrayList<Refund> adRefundList() {
		
		
		Connection conn = getConnection();
		
		ArrayList<Refund> list = new PayDao().adRefundList(conn);
		
		 close(conn);
		 
		return list;
	}
	
	public int enrollRefund(Refund re) {
		Connection conn = getConnection();
		
		int result = new PayDao().enrollRefund(conn,re);
		
		if(result >0 ) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		close(conn);
		
		return result;
	}
		
	
}
