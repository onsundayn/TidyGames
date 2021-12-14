package com.TidyGames.game.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.TidyGames.common.JDBCTemplate.*;

import com.TidyGames.game.model.vo.Game;

public class GameDao {

private Properties prop = new Properties();

	public GameDao() {
		String filePath = GameDao.class.getResource("/db/sql/game-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Game> selectGame(Connection conn, String keyword) {
		
		ArrayList <Game> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectGame");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, keyword);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Game(rset.getInt("game_no"),
								  rset.getInt("company_no"),
								  rset.getString("kor_name"),
								  rset.getString("eng_name"),
								  rset.getString("release_date"),
								  rset.getInt("price"),
								  rset.getDouble("point"),
								  rset.getString("game_status"),
								  rset.getString("game_img")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
		
		
		
	}
	
}
