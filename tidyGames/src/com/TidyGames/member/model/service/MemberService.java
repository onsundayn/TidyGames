package com.TidyGames.member.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.commit;
import static com.TidyGames.common.JDBCTemplate.getConnection;
import static com.TidyGames.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.member.model.dao.MemberDao;
import com.TidyGames.member.model.vo.Member;
import com.TidyGames.member.model.vo.WishList;

public class MemberService {

	public Member loginMember(String userId, String userPwd) {
		
		Connection conn = getConnection();
		Member m = new MemberDao().loginMember(conn, userId, userPwd);
		
		close(conn);
		
		return m;
		
	}
	
	public int cookieUpdateMem(String userId, String sessionId) {
		
		Connection conn = getConnection();
		int result = new MemberDao().cookieUpdateMem(conn, userId, sessionId);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public Member loginMemByCookie(String sessionId) {
		
		Connection conn = getConnection();
		Member m = new MemberDao().loginMemByCookie(conn, sessionId);
		
		close(conn);
		
		return m;
	}
	
	public  ArrayList<WishList> selectWish(int memNo) {
		
		
		Connection conn = getConnection();
		
		ArrayList<WishList> wish = new MemberDao().selectWish(conn, memNo);
		 
		 close(conn);
		 
		return wish;
		 

	}
	
	public Member searchUserId(String searchName, String searchEmail) {
		
		Connection conn = getConnection();
		
		Member m = new MemberDao().searchUserId(conn, searchName, searchEmail);
	
		close(conn);
		
		return m;
		
	}
	


	
}
