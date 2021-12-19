package com.TidyGames.notice.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import static com.TidyGames.common.JDBCTemplate.*;

import com.TidyGames.notice.model.vo.Notice;

public class QnaDao {

	private Properties prop = new Properties();
	
	public QnaDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(QnaDao.class.getResource("/db/sql/notice-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public int insertQna(Connection conn, Notice qna) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertQna");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(qna.getNotiWriter()));
			pstmt.setString(2, qna.getNotiTitle());
			pstmt.setString(3, qna.getNotiContent());
			
			result = pstmt.executeUpdate();
			
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		} 
		
		return result;
		
	}
	
}
