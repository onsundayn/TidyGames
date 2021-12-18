package com.TidyGames.company.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import static com.TidyGames.common.JDBCTemplate.*;

import com.TidyGames.company.model.vo.Company;

public class CompanyDao {
	
	Properties prop = new Properties();
	
	public Company selectCompany(Connection conn, int comNo) {
		Company c = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCompany");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				c = new Company(rset.getInt("company_no"),
								rset.getString("company_name"),
								rset.getString("company_pwd"),
								rset.getString("company_head"),
								rset.getDate("company_enroll"),
								rset.getString("company_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return c;
	}

}
