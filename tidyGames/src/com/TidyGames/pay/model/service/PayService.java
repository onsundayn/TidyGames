package com.TidyGames.pay.model.service;

import static com.TidyGames.common.JDBCTemplate.*;

import java.sql.Connection;

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

}
