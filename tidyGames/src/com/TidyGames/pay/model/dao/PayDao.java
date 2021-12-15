package com.TidyGames.pay.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import static com.TidyGames.common.JDBCTemplate.*;

import com.TidyGames.pay.model.vo.Cart;

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
	
}
