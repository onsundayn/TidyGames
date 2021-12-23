package com.TidyGames.member.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.commit;
import static com.TidyGames.common.JDBCTemplate.getConnection;
import static com.TidyGames.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.member.model.dao.WishListDao;
import com.TidyGames.member.model.vo.WishList;

public class WishListService {



	public  ArrayList<WishList> selectWish(PageInfo pi, int memNo) {
		
		
		Connection conn = getConnection();
		
		ArrayList<WishList> wish = new WishListDao().selectWish(conn,pi, memNo);
		 
		 close(conn);
		 
		return wish;
		 

	}
	

	
	public int insertWish(WishList wish) {
		Connection conn = getConnection();
		
		int result = new WishListDao().insertWish(conn, wish);
		
		if(result >0 ) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		close(conn);
		
		return result;
	}
	
		public int deleteWish(WishList d) {
		
		Connection conn = getConnection();
		
		int result = new WishListDao().deleteWish(conn, d);
		
		if(result >0 ) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		close(conn);
		
		return result;
	}

		public int selectListCount(int memNo) {
			Connection conn = getConnection();
			int listCount = new WishListDao().selectListCount(conn, memNo);
			
			close(conn);
			
			return listCount;
		
		
		
		
	
	}
		
}
