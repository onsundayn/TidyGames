package com.TidyGames.notice.model.service;

import static com.TidyGames.common.JDBCTemplate.*;

import java.sql.Connection;

import com.TidyGames.common.model.vo.Attachment;
import com.TidyGames.notice.model.dao.QnaDao;
import com.TidyGames.notice.model.vo.Notice;

public class QnaService {

	public int insertQna(Notice qna, Attachment at) {
		
		Connection conn = getConnection();

		int result1 = new QnaDao().insertQna(conn, qna);
		int result2 = 1;
		if(at != null) {
			result2 = new QnaDao().insertAttachment(conn, at);
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
	
}
