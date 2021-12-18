package com.TidyGames.post.model.dao;

import static com.TidyGames.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.member.model.vo.Member;
import com.TidyGames.post.model.vo.Post;
import com.TidyGames.post.model.vo.PostFile;

public class PostDao {
	
	private Properties prop = new Properties(); 

	public PostDao() {
		
		String filePath = PostDao.class.getResource("/db/sql/post-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 등록된 글 수 조회
	 * @param conn
	 * @return
	 */
	public int selectPostListCount(Connection conn) {
		
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPostListCount");
		
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
	
	/**
	 * 글 목록 조회
	 * @param conn
	 * @param pi
	 * @return
	 */
	public ArrayList<Post> selectPostList(Connection conn, PageInfo pi) {
		
		ArrayList<Post> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPostList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getViewLimit() + 1;
			int endRow = startRow + pi.getViewLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Post(rset.getInt("post_no"),
								  rset.getString("mem_nick"),
								  rset.getString("post_name"),
								  rset.getInt("post_view"),
								  rset.getInt("post_like"),
								  rset.getString("post_modify"),
								  rset.getString("post_notice")));
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	/**
	 * 조회수 1 증가
	 * @param conn
	 * @param postNo
	 * @return
	 */
	public int increaseCount(Connection conn, int postNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, postNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public Member confirmMember(Connection conn, String memId) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("confirmMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				m = new Member();
				m.setMemAccess(rset.getString("mem_access"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}
	
	/**
	 * 글 상세 조회
	 * @param conn
	 * @param postNo
	 * @return
	 */
	public Post selectPostDetail(Connection conn, int postNo) {
		Post p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPostDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, postNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				p = new Post();
				p.setPostNo(rset.getInt("post_no"));
				p.setMemNo(rset.getInt("post_writer"));
				p.setPostName(rset.getString("post_name"));
				p.setPostWriter(rset.getString("mem_nick"));
				p.setPostModify(rset.getString("post_modify"));
				p.setPostView(rset.getInt("post_view"));
				p.setPostLike(rset.getInt("post_like"));
				p.setPostContent(rset.getString("post_content"));	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return p;
	}
	
	/**
	 * 글 등록
	 * @param conn
	 * @param p
	 * @return
	 */
	public int insertPost(Connection conn, Post p) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertPost");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(p.getPostWriter()));
			pstmt.setString(2, p.getPostName());
			pstmt.setString(3, p.getPostContent());
			pstmt.setString(4, p.getPostNotice());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/**
	 * 첨부파일 INSERT
	 * @param conn
	 * @param list
	 * @return
	 */
	public int insertFile(Connection conn, ArrayList<PostFile> list) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertFile");
		
		try {
			
			for(PostFile f : list) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, f.getFileOrigin());
				pstmt.setString(2, f.getFileChange());
				pstmt.setString(3, f.getFilePath());
				result = pstmt.executeUpdate();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

		
	

}
