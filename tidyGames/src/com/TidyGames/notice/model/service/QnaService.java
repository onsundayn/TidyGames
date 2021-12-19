package com.TidyGames.notice.model.service;

import static com.TidyGames.common.JDBCTemplate.*;

import java.sql.Connection;

import com.TidyGames.common.model.vo.Attachment;
import com.TidyGames.notice.model.dao.QnaDao;
import com.TidyGames.notice.model.vo.Notice;

public class QnaService {

	public int insertQna(Notice qna) {
		
		Connection conn = getConnection();

		int result = new QnaDao().insertQna(conn, qna);
		
		close(conn);
		return result;
		
		
	}
	
}
