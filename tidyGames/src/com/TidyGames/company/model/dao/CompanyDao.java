package com.TidyGames.company.model.dao;

import static com.TidyGames.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.TidyGames.company.model.vo.Company;

public class CompanyDao {
	
	private Properties prop = new Properties(); // 전역변수 private

	public CompanyDao() {
		
		String filePath = CompanyDao.class.getResource("/db/sql/company-admin-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	
	public int insertCompany(Connection conn, Company c) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCompany");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, c.getCompanyName());
			pstmt.setString(2, c.getCompanyHead());
			pstmt.setString(3, c.getCompanyComment());
			pstmt.setString(4, c.getCompanyId());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public ArrayList<Company> selectCompanyList(Connection conn){
		
		ArrayList<Company> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCompanyList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Company(rset.getInt("company_no"),
									 rset.getString("company_name"),
									 rset.getString("company_id"),
									 rset.getString("company_pwd"),
									 rset.getDate("company_enroll")));
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
