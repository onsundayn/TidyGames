package com.TidyGames.post.model.service;

import static com.TidyGames.common.JDBCTemplate.*;
import static com.TidyGames.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.post.model.dao.PostDao;
import com.TidyGames.post.model.vo.Post;

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
	
	public Post selectPostDetail(int postNo) {
		Connection conn = getConnection();
		Post p = new PostDao().selectPostDetail(conn, postNo);
		close(conn);
		return p;
	}

}
