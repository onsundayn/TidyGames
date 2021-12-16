package com.TidyGames.pay.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.commit;
import static com.TidyGames.common.JDBCTemplate.getConnection;
import static com.TidyGames.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.pay.model.dao.PayDao;
import com.TidyGames.pay.model.vo.Cart;

public class PayService {
	
	public int countCart(Cart ca) {
		
		Connection conn = getConnection();
		
		int count = new PayDao().countCart(conn, ca);
		
		close(conn);
		
		return count;
	}
	
	
	public int insertCart(Cart ca) {
		
		Connection conn = getConnection();
		
		int result = new PayDao().countCart(conn, ca);
		
		if(result >0 ) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		close(conn);
		
		return result;
	}

	
	public ArrayList<Cart> selectCart(int memNo) {
		
		
		Connection conn = getConnection();
		
		 ArrayList<Cart> cart = new PayDao().selectCart(conn, memNo);
		 
		 close(conn);
		 
		return cart;
		 
	}
}
