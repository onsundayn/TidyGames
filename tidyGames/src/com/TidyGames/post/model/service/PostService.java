package com.TidyGames.post.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.commit;
import static com.TidyGames.common.JDBCTemplate.getConnection;
import static com.TidyGames.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.member.model.vo.Member;
import com.TidyGames.post.model.dao.PostDao;
import com.TidyGames.post.model.vo.Post;
import com.TidyGames.post.model.vo.PostFile;

public class PostService {
	
	PostDao pd = new PostDao();
	
	public int selectPostListCount() {
		Connection conn = getConnection();
		int listCount = pd.selectPostListCount(conn);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Post> selectPostList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Post> list = pd.selectPostList(conn, pi);
		close(conn);
		return list;
	}
	
	public int increaseCount(int postNo) {
		Connection conn = getConnection();
		int result = pd.increaseCount(conn, postNo);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public Member confirmMember(String memId) {
		Connection conn = getConnection();
		Member m = pd.confirmMember(conn, memId);
		close(conn);
		return m;
	}
	
	public Post selectPostDetail(int postNo) {
		Connection conn = getConnection();
		Post pf = pd.selectPostDetail(conn, postNo);
		close(conn);
		return pf;
	}
	
	public ArrayList<PostFile> selectPostFile(int postNo) {
		Connection conn = getConnection();
		ArrayList<PostFile> list = pd.selectPostFile(conn, postNo);
		close(conn);
		return list;
	}
	
	public Post firstPostNo() {
		Connection conn = getConnection();
		Post fpn = pd.firstPostNo(conn);
		close(conn);
		return fpn;
	}
	
	public Post lastPostNo() {
		Connection conn = getConnection();
		Post lpn = pd.lastPostNo(conn);
		close(conn);
		return lpn;
	}
	
	public int insertPost(Post p, ArrayList<PostFile> list) {
		Connection conn = getConnection();
		
		int result1 = pd.insertPost(conn, p);
		int result2 = 1;
		
		if(list != null) {
			result2 = pd.insertFile(conn, list);
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result1 * result2;
	}
	
	public int deletePost (int postNo) {	
		Connection conn = getConnection();
		int result = pd.deletePost(conn, postNo);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
	
	
	
	
	
	
	

}
