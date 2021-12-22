package com.TidyGames.notice.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.commit;
import static com.TidyGames.common.JDBCTemplate.getConnection;
import static com.TidyGames.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.common.model.vo.Attachment;
import com.TidyGames.common.model.vo.PageInfo;
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
	
	public ArrayList<Notice> qnaWaitList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new QnaDao().qnaWaitList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	public int selectListCount() {
		Connection conn = getConnection();
		
		int result = new QnaDao().selectListCount(conn);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
			close(conn);
		return result;
		
	}
	
}
