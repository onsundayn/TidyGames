package com.TidyGames.game.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.game.model.dao.GameDao;
import com.TidyGames.game.model.vo.Game;

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

}
