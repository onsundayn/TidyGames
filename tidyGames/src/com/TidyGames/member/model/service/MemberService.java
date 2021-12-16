package com.TidyGames.member.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.member.model.dao.MemberDao;
import com.TidyGames.member.model.vo.Member;
import com.TidyGames.member.model.vo.WishList;
import com.TidyGames.pay.model.dao.PayDao;

public class MemberService {

	public Member loginMember(String userId, String userPwd) {
		
		Connection conn = getConnection();
		Member m = new MemberDao().loginMember(conn, userId, userPwd);
		
		close(conn);
		
		return m;
		
	}


	public  ArrayList<WishList> selectWish(int memNo) {
		
		
		Connection conn = getConnection();
		
		ArrayList<WishList> wish = new MemberDao().selectWish(conn, memNo);
		 
		 close(conn);
		 
		return wish;
		 

	}
	
	
	
}
