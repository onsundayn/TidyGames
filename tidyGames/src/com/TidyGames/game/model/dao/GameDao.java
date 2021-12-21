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

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.game.model.vo.Attachment3;
import com.TidyGames.game.model.vo.Category;
import com.TidyGames.game.model.vo.Game;
import com.TidyGames.game.model.vo.Review;

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
	
	public Game selectGame(Connection conn, int memNo, int gameNo) {
		
		Game g = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectGame");
		
		try {
			pstmt = conn.prepareStatement(sql);//미완성
			pstmt.setInt(1, memNo);
			pstmt.setInt(2, gameNo);
			
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
							 rset.getString("game_img"),
							 rset.getInt("count"));
							 
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return g;
		
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
						  		  rset.getString("upload_date"),
						  		  rset.getString("game_status")));				  	
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
	
	public ArrayList<Category> selectGameCategory(Connection conn, int gameNo){
		
		ArrayList<Category> gcList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectGameCategory");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, gameNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				gcList.add(new Category(rset.getString("category_name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return gcList;
	}
	
	public ArrayList<Game> selectGameListGC(Connection conn, int comNo) {
		ArrayList<Game> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectGameListGC");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Game(rset.getString("kor_name"),
								  rset.getString("eng_name"),
							      rset.getInt("price"),
								  rset.getString("confirm"),
							  	  rset.getString("upgame"),
								  rset.getString("upload_date")));
									 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public int insertGame(Connection conn, Game ga, int companyNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertGame");
		System.out.println(ga.getKorName());
		System.out.println(ga.getEngName());
		System.out.println(ga.getGameImg());
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, companyNo);
			pstmt.setString(2, ga.getKorName());
			pstmt.setString(3, ga.getEngName());
			pstmt.setString(4, ga.getReleaseDate());
			pstmt.setInt(5, ga.getPrice());
			pstmt.setString(6, ga.getGameIntro());
			pstmt.setString(7, ga.getGameImg());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertAttachment(Connection conn, Attachment3 at) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachment");
		System.out.println(at.getOriginName());
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, at.getOriginName());
			pstmt.setString(2, at.getChangeName());
			pstmt.setString(3, at.getFilePath());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
}
