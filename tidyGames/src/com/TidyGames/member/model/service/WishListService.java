package com.TidyGames.member.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.commit;
import static com.TidyGames.common.JDBCTemplate.getConnection;
import static com.TidyGames.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.member.model.dao.WishListDao;
import com.TidyGames.member.model.vo.WishList;
import com.TidyGames.pay.model.dao.PayDao;

public class WishListService {



	public  ArrayList<WishList> selectWish(int memNo) {
		
		
		Connection conn = getConnection();
		
		ArrayList<WishList> wish = new WishListDao().selectWish(conn, memNo);
		 
		 close(conn);
		 
		return wish;
		 

	}
	
	public int countWish(WishList wish) {
		
		Connection conn = getConnection();
		
		int countWish = new WishListDao().countWish(conn, wish);
		
		close(conn);
		
		return countWish;
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

	
}
