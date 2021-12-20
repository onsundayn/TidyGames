package com.TidyGames.game.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.commit;
import static com.TidyGames.common.JDBCTemplate.getConnection;
import static com.TidyGames.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.game.model.dao.GameDao;
import com.TidyGames.game.model.vo.Attachment3;
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
	
	public ArrayList<Category> selectGameCategory(int gameNo){
		Connection conn = getConnection();
		ArrayList<Category> gcList = new GameDao().selectGameCategory(conn, gameNo);
		close(conn);
		return gcList;
	}
	
	public ArrayList<Game> selectGameListGC(int comNo) {
		
		Connection conn = getConnection();
		ArrayList<Game> list = new GameDao().selectGameListGC(conn, comNo);
		close(conn);
		return list;
	}
	
	public int insertGame(Game ga, Attachment3 at, int companyNo) {
		Connection conn = getConnection();
		
		int result1 = new GameDao().insertGame(conn, ga, companyNo);
		int result2 = 1;
		if(at != null) {
			result2 = new GameDao().insertAttachment(conn, at);
		}
		
		if(result1 > 0 && result2 >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}

}