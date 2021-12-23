package com.TidyGames.notice.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.notice.model.dao.NoticeDao;
import com.TidyGames.notice.model.vo.Notice;
import com.TidyGames.post.model.vo.Post;

public class NoticeService {

	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int result = new NoticeDao().selectListCount(conn);
		
		close(conn);
		return result;
	}
	
	public ArrayList<Notice> selectNoticeList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn, pi);
		
		close(conn);
		return list;
		
	}	
	
}
