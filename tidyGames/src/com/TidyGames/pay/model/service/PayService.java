package com.TidyGames.pay.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.commit;
import static com.TidyGames.common.JDBCTemplate.getConnection;
import static com.TidyGames.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.member.model.vo.Member;
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
	
	//관리자 주문관리 and 환불관리
	public ArrayList<Pay> adOrderList() {

		Connection conn = getConnection();
		
		 ArrayList<Pay> list = new PayDao().adOrderList(conn);
		 
		 close(conn);
		 
		return list;
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
	
	public Member memInfo(int memNo) {
		Connection conn = getConnection();
		
		Member mi = new PayDao().memInfo(conn, memNo);
		
		close(conn);
		 
		return mi;
		
	}
	
	
//	관리자환불목록조회
	public ArrayList<Refund> adRefundList() {
		
		
		Connection conn = getConnection();
		
		ArrayList<Refund> list = new PayDao().adRefundList(conn);
		
		 close(conn);
		 
		return list;
	}
	
	public Refund refundContent(int memNo, int orderNo) {
		
		Connection conn = getConnection();
		
		Refund re = new PayDao().refundContent(conn, memNo, orderNo);
		
		close(conn);
		
		return re;
		
	}
	
	public int refundUpdate() {
		Connection conn = getConnection();
		
		int result = new PayDao().refundUpdate(conn);
		
		if(result >0 ) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		close(conn);
		
		return result;
	}
	
	public int refundUpdate2() {
		Connection conn = getConnection();
		
		int result = new PayDao().refundUpdate2(conn);
		
		if(result >0 ) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		close(conn);
		
		return result;
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
						
	public int insertPay(int memNo, int totalPrice, String payMethod, String[] gameNo,String usePoint, int savePoint) {
		Connection conn = getConnection();
		
		int result1 = new PayDao().insertPay(conn, memNo, totalPrice, payMethod);
		
		
		int result2 = 0;
		
		for(int i=0; i<gameNo.length; i++) {
			
				String gNo = gameNo[i];	
				result2 = new PayDao().insertPayGame(conn, gNo);
				
			}
		  int result3 = 1;
		  result3 = new PayDao().usePoint(conn, memNo, usePoint);
		
		  int result4 = new PayDao().savePoint(conn, memNo, savePoint);
		
		  int result5 = new PayDao().deleteAllCart(conn, memNo);
		
		if(result1 >0 && result2 > 0 && result3 >0 && result4 >0 && result5 >0) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		close(conn);
		
		return result1 * result2 * result3 * result4 * result5;
		
	}
	
	
	
	public int selectSeq() {
		Connection conn = getConnection();
		
		int seq = new PayDao().selectSeq(conn);
		
		if(seq >0 ) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		close(conn);
		
		return seq;
		
		
	}
}
