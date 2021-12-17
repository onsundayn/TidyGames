package com.TidyGames.game.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.game.model.dao.GameDao;
import com.TidyGames.game.model.vo.Category;
import com.TidyGames.game.model.vo.Game;
import com.TidyGames.game.model.vo.Review;

public class GameService {
	
	public ArrayList<Game> selectList(String keyword) {
		
		Connection conn  = getConnection();
		ArrayList<Game> list = new GameDao().selectList(conn, keyword);
		
		close(conn);
		
		return list;
	}

	public Game selectGame(int gameNo) {
		Connection conn = getConnection();
		Game g = new GameDao().selectGame(conn, gameNo);
		close(conn);
		return g;
	}
	
	public ArrayList<Category> selectCategoryList(){
		Connection conn = getConnection();
		ArrayList<Category> list = new GameDao().selectCategoryList(conn);
		close(conn);
		return list;
	}
	
	public ArrayList<Review> selectReview(int gameNo){
		Connection conn = getConnection();
		ArrayList<Review> list = new GameDao().selectReview(conn, gameNo);
		close(conn);
		return list;
	}
	
	public int insertReview(Review r) {
		Connection conn =  getConnection();
		int result = new GameDao().insertReview(conn, r);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

}
