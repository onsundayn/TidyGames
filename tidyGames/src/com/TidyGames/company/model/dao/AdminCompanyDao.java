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

public class AdminCompanyDao {
	
	private Properties prop = new Properties(); // 전역변수 private

	public AdminCompanyDao() {
		
		String filePath = AdminCompanyDao.class.getResource("/db/sql/company-admin-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	/**
	 * 게임사 등록
	 * @param conn
	 * @param c
	 * @return
	 */
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
	
	/**
	 * 게임사 목록 조회
	 * @param conn
	 * @return
	 */
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
	
	
	/**
	 * 게임사 상세 조회
	 * @param conn
	 * @param companyNo
	 * @return
	 */
	public Company selectCompanyDetail(Connection conn, int companyNo) {
		
		Company c = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCompanyDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, companyNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				c = new Company();
				c.setCompanyNo(rset.getInt("company_no"));
				c.setCompanyName(rset.getString("company_name"));
				c.setCompanyId(rset.getString("company_id"));
				c.setCompanyPwd(rset.getString("company_pwd"));
				c.setCompanyHead(rset.getString("company_head"));
				c.setCompanyComment(rset.getString("company_comment"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return c;
	}
	
	/**
	 * 게임사 정보 수정
	 * @param conn
	 * @param c
	 * @return
	 */
	public int updateCompany(Connection conn, Company c) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateCompany");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, c.getCompanyName());
			pstmt.setString(2, c.getCompanyId());
			pstmt.setString(3, c.getCompanyHead());
			pstmt.setString(4, c.getCompanyComment());
			pstmt.setInt(5, c.getCompanyNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int deleteCompany(Connection conn, int companyNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteCompany");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, companyNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
