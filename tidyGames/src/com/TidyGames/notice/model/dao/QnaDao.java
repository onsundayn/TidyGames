package com.TidyGames.notice.model.dao;

import static com.TidyGames.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.TidyGames.common.model.vo.Attachment;
import com.TidyGames.common.model.vo.PageInfo;
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
	
	public int insertAttachment(Connection conn, Attachment at) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, at.getOriginName());
			pstmt.setString(2,  at.getChangeName());
			pstmt.setString(3,  at.getFilePath());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	public ArrayList<Notice> qnaWaitList(Connection conn, PageInfo pi) {
		
		ArrayList<Notice> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("qnaWaitList");
		
		int startRow = (pi.getCurrentPage() - 1) * (pi.getViewLimit()) + 1;
		int endRow = startRow + pi.getViewLimit() - 1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Notice(rset.getInt("qna_no")
								  , rset.getString("qna_title")
								  , rset.getString("mem_id")
								  , rset.getInt("mem_no")
								  , rset.getString("mem_nick")
								  , rset.getString("ans_confirm")
								  , rset.getString("report_date")
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	} 
	
		public int selectListCount(Connection conn) {
			
			int result = 0;
			PreparedStatement pstmt = null;
			String sql = prop.getProperty("selectListCount");
			
			try {
				pstmt = conn.prepareStatement(sql);
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			return result;
			
		}
	
}
