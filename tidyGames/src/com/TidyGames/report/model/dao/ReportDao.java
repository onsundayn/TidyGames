package com.TidyGames.report.model.dao;

import static com.TidyGames.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.report.model.vo.Report;

public class ReportDao {
	
	private Properties prop = new Properties();
	
	public ReportDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(ReportDao.class.getResource("/db/sql/report-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	

	public int selectBlockCount(Connection conn) {
		
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectBlockCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT");
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	
	}
	
	
	public ArrayList<Report> blacklist(Connection conn, PageInfo pi) {
		
		ArrayList<Report> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("blacklist");
		
		int startRow = (pi.getCurrentPage() - 1) * (pi.getViewLimit()) + 1;
		int endRow = startRow + pi.getViewLimit() - 1;
		
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Report(rset.getInt("rownum")
									  , rset.getInt("mem_no")
									  ,	rset.getString("mem_id")
									  , rset.getString("mem_nick")
									  , rset.getString("rcategory_name")
									  , rset.getString("etc")
									  , rset.getDate("block_date")));
					}
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return list;
	}
	
	public int unblock(Connection conn, String userId) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("unblock");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	public ArrayList<Report> reportWaiting(Connection conn) {
		
		ArrayList<Report> list = new ArrayList<Report>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("reportWaiting");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Report(rset.getInt("report_no")
								  , rset.getInt("mem_no")
								  , rset.getString("reported")
								  , rset.getString("reporting")
								  , rset.getInt("ref_pno")
								  , rset.getString("post_name")
								  , rset.getString("reply_content")
								  , rset.getString("rcategory_name")
								  , rset.getString("etc")
								  , rset.getDate("report_date")));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		 
	}
	
	public int accessBlock(Connection conn, String[] user) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("accessBlock");
		
		try {
			for(int i=0; i<user.length; i++) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(user[i]));
				
				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int accessDone(Connection conn, String[] reportNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("accessDone");
		
		try {
			for(int i=0; i<reportNo.length; i++) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(reportNo[i]));
				result = pstmt.executeUpdate();
			}		
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return result;
		
	}
		
}
