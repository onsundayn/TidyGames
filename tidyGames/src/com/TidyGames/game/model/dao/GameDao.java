package com.TidyGames.game.model.dao;

import static com.TidyGames.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;


import static com.TidyGames.common.JDBCTemplate.*;

import com.TidyGames.common.model.vo.PageInfo;

import com.TidyGames.game.model.vo.Category;
import com.TidyGames.game.model.vo.Game;
import com.TidyGames.game.model.vo.Review;
import com.TidyGames.member.model.vo.*;

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
	
	public ArrayList<Game> selectList(Connection conn, String keyword, int memNo) {
		
		ArrayList <Game> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			pstmt.setString(2, keyword);
			
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
								  rset.getString("game_img"),
								  rset.getInt("count")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public Game selectGame(Connection conn, int gameNo) {
		
		Game g = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectGame");
		
		try {
			pstmt = conn.prepareStatement(sql);//미완성
			pstmt.setInt(1, gameNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				g = new Game(rset.getInt("game_no"),
							 rset.getInt("company_no"),
							 rset.getString("kor_name"),
							 rset.getString("eng_name"),
							 rset.getString("release_date"),
							 rset.getInt("price"),
							 rset.getString("game_intro"),
							 rset.getString("confirm"),
							 rset.getString("upgame"),
							 rset.getString("upload_date"),
							 rset.getDouble("point"),
							 rset.getString("game_status"),
							 rset.getString("game_img"));
							 
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return g;
		
	}
	
	public ArrayList<Category> selectCategoryList(Connection conn){
		ArrayList<Category> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCategoryList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Category(rset.getInt("category_no"),
									  rset.getString("category_name"),
									  rset.getString("category_status")));
				}
				
				
				
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	public ArrayList<Game> selectGameList(Connection conn, PageInfo pi) {
		
		ArrayList<Game> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectGameList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage() - 1) * pi.getViewLimit() + 1;
			int endRow = startRow + pi.getViewLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Game(rset.getInt("game_no"),
						  		  rset.getString("company_name"),
						  		  rset.getString("eng_name"),
						  		  rset.getString("upload_date")));				  	
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	

	public ArrayList<Review> selectReview(Connection conn, int gameNo) {
		//여러행조회
		ArrayList<Review> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, gameNo);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Review( rset.getInt("review_no"),
									 rset.getInt("game_no"),
									 rset.getInt("mem_no"),
									 rset.getString("contents"),
									 rset.getInt("recommend"),
									 rset.getString("upload_date"),
									 rset.getInt("star_no"),
									 rset.getString("mem_nick"),
									 rset.getString("mem_pic")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	public int insertReview(Connection conn, Review r) {
		//insert문 => 처리된행수 => 트랜잭션
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getGameNo());
			pstmt.setInt(2, r.getMemNo());
			pstmt.setString(3, r.getContents());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
	}

	public int selectListCount(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql); 
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;

	}
	
	
}
