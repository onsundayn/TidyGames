package com.TidyGames.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import static com.TidyGames.common.JDBCTemplate.*;

import com.TidyGames.member.model.vo.Member;

public class MemberDao {

	private Properties prop = new Properties();
	
	public MemberDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public Member loginMember(Connection conn, String userId, String userPwd) {
		//select문 - 한행조회
		
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
							   rset.getString("mem_id"),
							   rset.getString("mem_pwd"),
							   rset.getString("mem_nick"),
							   rset.getString("mem_name"),
							   rset.getString("mem_birth"),
							   rset.getString("mem_phone"),
							   rset.getString("mem_email"),
							   rset.getString("mem_gender"),
							   rset.getString("mem_address"),
							   rset.getDate("mem_indate"),
							   rset.getString("mem_agr"),
							   rset.getString("mem_pic"),
							   rset.getString("mem_status"),
							   rset.getDate("mem_outdate"),
							   rset.getString("role_id"),
							   rset.getString("mem_access"),
							   rset.getDate("block_date"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}
		
	
}
