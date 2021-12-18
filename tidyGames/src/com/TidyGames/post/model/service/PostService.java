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
	
	public int selectPostListCount() {
		Connection conn = getConnection();
		int listCount = new PostDao().selectPostListCount(conn);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Post> selectPostList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Post> list = new PostDao().selectPostList(conn, pi);
		close(conn);
		return list;
	}
	
	public int increaseCount(int postNo) {
		Connection conn = getConnection();
		int result = new PostDao().increaseCount(conn, postNo);
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
		Member m = new PostDao().confirmMember(conn, memId);
		close(conn);
		return m;
	}
	
	public Post selectPostDetail(int postNo) {
		Connection conn = getConnection();
		Post p = new PostDao().selectPostDetail(conn, postNo);
		close(conn);
		return p;
	}
	
	public int insertPost(Post p, ArrayList<PostFile> list) {
		Connection conn = getConnection();
		
		int result1 = new PostDao().insertPost(conn, p);
		int result2 = 1;
		
		if(list != null) {
			result2 = new PostDao().insertFile(conn, list);
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result1 * result2;
	}
	
	
	
	
	
	
	

}
