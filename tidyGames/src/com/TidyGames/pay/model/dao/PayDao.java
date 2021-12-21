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
		
}
