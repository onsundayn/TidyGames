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
								  rset.getString("post_enroll"),
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
				p.setPostEnroll(rset.getString("post_enroll"));
				p.setPostView(rset.getInt("post_view"));
				p.setPostLike(rset.getInt("post_like"));
				p.setPostContent(rset.getString("post_content"));
				p.setPrevNo(rset.getInt("prev_no"));
				p.setNextNo(rset.getInt("next_no"));
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
	 * 첨부파일 조회
	 * @param conn
	 * @param postNo
	 * @return
	 */
	public ArrayList<PostFile> selectPostFile(Connection conn, int postNo) {
		ArrayList<PostFile> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPostFile");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, postNo);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				PostFile pf = new PostFile();
				pf.setFileNo(rset.getInt("file_no"));
				pf.setFileOrigin(rset.getString("file_origin"));
				pf.setFileChange(rset.getString("file_change"));
				pf.setFilePath(rset.getString("file_path"));
				
				list.add(pf);
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
	 * 첫번째 글 번호
	 * @param conn
	 * @return
	 */
	public Post firstPostNo(Connection conn) {
		Post result = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("firstPostNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = new Post();
				result.setFirstPost(rset.getInt("firstpost"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}
	
	/**
	 * 마지막 글 번호
	 * @param conn
	 * @return
	 */
	public Post lastPostNo(Connection conn) {
		Post result = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("lastPostNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = new Post();
				result.setLastPost(rset.getInt("lastpost"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
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
		int result = 1;
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
	
	/**
	 * 글 삭제
	 * @param conn
	 * @param postNo
	 * @return
	 */
	public int deletePost(Connection conn, int postNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deletePost");
		
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
	
	/**
	 * 글 수정
	 * @param conn
	 * @param p
	 * @return
	 */
	public int updatePost(Connection conn, Post p) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updatePost");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getPostName());
			pstmt.setString(2, p.getPostContent());
			pstmt.setInt(3, p.getPostNo());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	// ==================================================
	
	/**
	 * 닉네임 검색 글 수 조회
	 * @param conn
	 * @param word
	 * @return
	 */
	public int nicknamePostCount(Connection conn, String word) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("nicknamePostCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, word);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}
	
	
	/**
	 * 그 외 검색 글 수 조회
	 * @param conn
	 * @param word
	 * @return
	 */
	public int searchPostCount(Connection conn, String word) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchPostCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, word);
			pstmt.setString(2, word);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}
	
	
	
	/**
	 * 닉네임 검색
	 * @param conn
	 * @param pi
	 * @param word
	 * @return
	 */
	public ArrayList<Post> selectNicknamePost(Connection conn, PageInfo pi, String word) {
		
		ArrayList<Post> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNicknamePost");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getViewLimit() + 1;
			int endRow = startRow + pi.getViewLimit() - 1;
			
			pstmt.setString(1, word);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Post(rset.getInt("post_no"),
								  rset.getString("mem_nick"),
								  rset.getString("post_name"),
								  rset.getInt("post_view"),
								  rset.getInt("post_like"),
								  rset.getString("post_enroll"),
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
	 * 최신순 검색 리스트
	 * @param conn
	 * @param pi
	 * @param word
	 * @return
	 */
	public ArrayList<Post> searchRecentPost(Connection conn, PageInfo pi, String word) {
		
		ArrayList<Post> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchRecentPost");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getViewLimit() + 1;
			int endRow = startRow + pi.getViewLimit() - 1;
			
			pstmt.setString(1, word);
			pstmt.setString(2, word);
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Post(rset.getInt("post_no"),
								  rset.getString("mem_nick"),
								  rset.getString("post_name"),
								  rset.getInt("post_view"),
								  rset.getInt("post_like"),
								  rset.getString("post_enroll"),
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
	 * 조회순 검색 리스트
	 * @param conn
	 * @param pi
	 * @param word
	 * @return
	 */
	public ArrayList<Post> searchViewPost(Connection conn, PageInfo pi, String word) {
		
		ArrayList<Post> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchViewPost");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getViewLimit() + 1;
			int endRow = startRow + pi.getViewLimit() - 1;
			
			pstmt.setString(1, word);
			pstmt.setString(2, word);
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Post(rset.getInt("post_no"),
								  rset.getString("mem_nick"),
								  rset.getString("post_name"),
								  rset.getInt("post_view"),
								  rset.getInt("post_like"),
								  rset.getString("post_enroll"),
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
	 * 추천순 검색 리스트
	 * @param conn
	 * @param pi
	 * @param word
	 * @return
	 */
	public ArrayList<Post> searchLikePost(Connection conn, PageInfo pi, String word) {
		
		ArrayList<Post> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchLikePost");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getViewLimit() + 1;
			int endRow = startRow + pi.getViewLimit() - 1;
			
			pstmt.setString(1, word);
			pstmt.setString(2, word);
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Post(rset.getInt("post_no"),
								  rset.getString("mem_nick"),
								  rset.getString("post_name"),
								  rset.getInt("post_view"),
								  rset.getInt("post_like"),
								  rset.getString("post_enroll"),
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
	
	

}
