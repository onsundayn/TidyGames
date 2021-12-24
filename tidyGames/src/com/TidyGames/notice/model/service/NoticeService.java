package com.TidyGames.notice.model.service;

import static com.TidyGames.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.notice.model.dao.NoticeDao;
import com.TidyGames.notice.model.vo.Notice;
import com.TidyGames.notice.model.vo.NoticeFile;

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
	
	public Notice selectNotice(int noticeNo) {
		
		Connection conn = getConnection();
		Notice n = new NoticeDao().selectNotice(conn, noticeNo);
		
		close(conn);
		return n;
		
	}
	
	public int firstNoticeNo() {
		
		Connection conn = getConnection();
		int result = new NoticeDao().firstNoticeNo(conn);
		
		close(conn);
		return result;
		
	}
	
	public int lastNoticeNo() {
		
		Connection conn = getConnection();
		int result = new NoticeDao().lastNoticeNo(conn);
		
		close(conn);
		return result;
		
	}
	
	public int insertNotice(Notice n, ArrayList<NoticeFile> list) {
		
		Connection conn = getConnection();
		
		int result1 = new NoticeDao().insertNotice(conn, n);
		int result2 = 1;	// 첨부파일이 안넘어왔으면 list 추가 없이 1로  return만 잘 넘어가게 함 (dao 안감)

		if(list != null) {	// 첨부파일이 넘어왔다면 list에 추가 (sql문 실행하러 dao)
			result2 = new NoticeDao().insertFile(conn, list);
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
		
	}
	
	public ArrayList<NoticeFile> selectFileList(int notiNo) {
		
		Connection conn = getConnection();
		
		ArrayList<NoticeFile> fileList = new NoticeDao().selectFileList(conn, notiNo);
		
		close(conn);
		return fileList;
	}
	
	public int deleteNotice(int noticeNo) {
		
		Connection conn = getConnection();
		
		int result = new NoticeDao().deleteNotice(conn, noticeNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
}
