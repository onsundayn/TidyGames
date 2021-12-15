package com.TidyGames.game.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.game.model.dao.GameDao;
import com.TidyGames.game.model.vo.Category;
import com.TidyGames.game.model.vo.Game;

public class GameService {
	
	public ArrayList<Game> selectGame(String keyword) {
		
		Connection conn  = getConnection();
		ArrayList<Game> list = new GameDao().selectGame(conn, keyword);
		
		close(conn);
		
		return list;
	}
	
	public ArrayList<Category> selectCategoryList(){
		Connection conn = getConnection();
		ArrayList<Category> list = new GameDao().selectCategoryList(conn);
		close(conn);
		return list;
	}

}
