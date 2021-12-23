package com.TidyGames.pay.model.dao;

import static com.TidyGames.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.TidyGames.member.model.vo.Member;
import com.TidyGames.pay.model.vo.Cart;
import com.TidyGames.pay.model.vo.Pay;
import com.TidyGames.pay.model.vo.PayGame;
import com.TidyGames.pay.model.vo.Refund;

public class PayDao {
	
	private Properties prop = new Properties();
	
	public PayDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(PayDao.class.getResource("/db/sql/pay-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int countCart(Connection conn, Cart ca) {
		//select문 = > ResultSet(한개) => int형 변수에 담음
		
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("countCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, ca.getMemNo());
			pstmt.setInt(2, ca.getGameNo());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				// count(*) 컬럼의 별칭인 count임
				count = rset.getInt("count");
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return count;
		
		
		
	}
	
	
	public int insertCart(Connection conn, Cart ca) {
		// insert문 => 처리된행수 => 트랜잭션처리
		
		
		int result =0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, ca.getMemNo());
			pstmt.setInt(2, ca.getGameNo());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public ArrayList<Cart> selectCart(Connection conn, int memNo) {
		
		// select문 => ResultSet (한행) => Attachment객체
		ArrayList<Cart> cart = new  ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCart");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
		
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				cart.add(new Cart(
								  rset.getInt("mem_no"),	
								  rset.getInt("game_no"),  
								  rset.getString("game_img"),
								  rset.getString("kor_name"),
								  rset.getString("eng_name"),
								  rset.getString("game_intro"),
								  rset.getInt("price"),
								  rset.getInt("point"),
								  rset.getString("mem_nick"),
							      rset.getInt("DISCOUNTPRICE")));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return cart;
	
	}
	
	
	
	public int deleteCart(Connection conn , Cart d) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteCart");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, d.getMemNo());
			pstmt.setInt(2, d.getGameNo());
			
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	public ArrayList<PayGame> orderList(Connection conn , int memNo) {
		
		ArrayList<PayGame> order = new  ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("orderList");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
		
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				order.add(new PayGame(
								   rset.getInt("order_no"),
								   rset.getInt("game_no"),
								   rset.getInt("mem_no"),
								   rset.getInt("pay_amount"),
								   rset.getString("pay_status"),
								   rset.getString("pay_date"),
								   rset.getString("pay_method"),
								   rset.getString("kor_name"),
								   rset.getString("eng_name"),
								   rset.getString("game_img"),
								   rset.getInt("discountprice"),
								   rset.getInt("price")));
								
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return order;
	
	}
	
	
	public ArrayList<Pay> adOrderList(Connection conn) {
		ArrayList<Pay> list = new  ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("adOrderList");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Pay(
								   rset.getInt("order_no"),
								   rset.getInt("mem_no"),
								   rset.getInt("pay_amount"),
								   rset.getString("pay_status"),
								   rset.getString("pay_date"),
								   rset.getString("mem_id")));
								
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	
	
		
	}
	
	
	
	public ArrayList<PayGame> rforderList(Connection conn , int memNo, int orderNo) {
		
		ArrayList<PayGame> order = new  ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("rfOrderList");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
			pstmt.setInt(2, orderNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				order.add(new PayGame(
								   rset.getInt("order_no"),
								   rset.getInt("game_no"),
								   rset.getInt("mem_no"),
								   rset.getInt("pay_amount"),
								   rset.getString("pay_status"),
								   rset.getString("pay_date"),
								   rset.getString("pay_method"),
								   rset.getString("kor_name"),
								   rset.getString("eng_name"),
								   rset.getString("game_img"),
								   rset.getInt("discountprice"),
								   rset.getInt("price")));
								
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return order;
	
	}
		
	
	public Pay payInfo(Connection conn, int memNo, int orderNo) {
		
		Pay pi = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("payInfo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, orderNo);
			pstmt.setInt(2, memNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				pi = new Pay(rset.getInt("order_no"),
								  rset.getInt("mem_no"),
								  rset.getInt("pay_amount"),
								  rset.getString("pay_status"),
								  rset.getString("pay_date"),
								  rset.getString("pay_method"),
								  rset.getInt("point_amount"));
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return pi;
	
	
		
		
	}
	
	public Member memInfo(Connection conn, int memNo) {
		
		Member mi = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("memInfo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				mi = new Member(rset.getString("mem_id"),
							 rset.getString("mem_nick"),
							 rset.getString("mem_email"));
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return mi;
	
	
		
		
	}
	
	
	
	
	public ArrayList<Refund> adRefundList(Connection conn) {
		
		ArrayList<Refund> list = new  ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("adRefundList");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
		
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Refund(
								   rset.getInt("REFUND_NO"),
								   rset.getInt("MEM_NO"),
								   rset.getInt("ORDER_NO"),
								   rset.getString("REFUND"),
								   rset.getString("ADD_WRITING"),
								   rset.getString("REFUND_DATE"),
								   rset.getString("REFUND_STATUS"),
								   rset.getString("MEM_ID"),
								   rset.getInt("PAY_AMOUNT"),
								   rset.getString("PAY_DATE")));
								
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
	
		return list;
		
	}
	
	public Refund refundContent(Connection conn, int memNo, int orderNo) {
		
		Refund re = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("refundContent");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
			pstmt.setInt(2, orderNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				re = new Refund(rset.getString("refund"),
								rset.getString("add_writing"));
			}
			
			
		
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return re;
	
	}
	
	public int refundUpdate(Connection conn ) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("refundUpdate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	public int refundUpdate2(Connection conn ) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("refundUpdate2");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	public int enrollRefund(Connection conn, Refund re) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("enrollRefund");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, re.getMemNo());
			pstmt.setInt(2, re.getOrderNo());
			pstmt.setString(3, re.getRefund());
			pstmt.setString(4, re.getAddWriting());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
		
	}
	
	
	public int insertPay(Connection conn, int memNo, int totalPrice, String payMethod) {
		
		int result1 = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertPay");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
			pstmt.setInt(2, totalPrice);
			pstmt.setString(3, payMethod);
		
			result1 = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result1;
	}
	
	public int selectSeq(Connection conn) {
		int seq = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectSeq");
		
		try {
			pstmt = conn.prepareStatement(sql);
		
			seq = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return seq;
	
		
}
	
	
	public int insertPayGame(Connection conn, String gNo) {
		
		int result2 = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertPayGame");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, gNo);
			
		
			result2 = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result2;
	
		
	}
	
	public int usePoint(Connection conn, int memNo, String usePoint) {
		
		int result3 = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("usePoint");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
			pstmt.setString(2, usePoint);
			
		
			result3 = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result3;
	
		
	}
	
	
public int savePoint(Connection conn, int memNo, int savePoint) {
		
		int result4 = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("savePoint");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
			pstmt.setInt(2, savePoint);
			
		
			result4 = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result4;
	
		
	}

	public int deleteAllCart(Connection conn, int memNo) {
		
		int result5 = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteAllCart");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
			
			
			result5 = pstmt.executeUpdate();
			
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result5;
	}
		
		
	
		
}
