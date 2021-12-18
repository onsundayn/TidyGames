package com.TidyGames.game.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.game.model.dao.GameDao;
import com.TidyGames.game.model.vo.Category;
import com.TidyGames.game.model.vo.Game;
import com.TidyGames.game.model.vo.Review;

public class GameService {
	
	public ArrayList<Game> selectList(String keyword, int memNo) {
		
		Connection conn  = getConnection();
		ArrayList<Game> list = new GameDao().selectList(conn, keyword, memNo);
		
		close(conn);
		
		return list;
	}

	public Game selectGame(int memNo, int gameNo) {
		Connection conn = getConnection();
		Game g = new GameDao().selectGame(conn, memNo, gameNo);
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
	
	public ArrayList<Game> selectGameList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Game> list = new GameDao().selectGameList(conn, pi);
		close(conn);
		return list;
	}
	
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new GameDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	
	public int updateCategory(Category c) {
		
		Connection conn = getConnection();
		int result = new GameDao().updateCategory(conn, c);
		
		if(result > 0) { 
			commit(conn);
		}else { 
			rollback(conn);
		}
		
		close(conn);
		
		
		return result;
	}
	
	

}