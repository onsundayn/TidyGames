package com.TidyGames.report.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.TidyGames.report.model.vo.Report;
import static com.TidyGames.common.JDBCTemplate.*;

public class ReportDao {
	
	private Properties prop = new Properties();
	
	public ReportDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(ReportDao.class.getResource("/db/sql/report-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Report> blacklist(Connection conn) {
		
		ArrayList<Report> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("blacklist");
		
			try {
				pstmt = conn.prepareStatement(sql);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Report(rset.getInt("ROWNUM")
									  ,	rset.getString("mem_id")
									  , rset.getString("mem_nick")
									  , rset.getString("rcategory_name")
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

	
	
	
	
}
